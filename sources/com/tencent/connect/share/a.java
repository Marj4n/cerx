package com.tencent.connect.share;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.jiangdg.usbcamera.UVCCameraHelper;
import com.serenegiant.usb.UVCCamera;
import com.tencent.open.a.f;
import com.tencent.open.utils.c;
import com.tencent.open.utils.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class a {
    public static final void a(Context context, final String str, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "scaleCompressImage");
        if (TextUtils.isEmpty(str)) {
            cVar.a(1, (String) null);
        } else if (!i.b()) {
            cVar.a(2, (String) null);
        } else {
            final Handler handler = new Handler(context.getMainLooper()) { // from class: com.tencent.connect.share.a.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i == 101) {
                        cVar.a(0, (String) message.obj);
                    } else if (i == 102) {
                        cVar.a(message.arg1, (String) null);
                    } else {
                        super.handleMessage(message);
                    }
                }
            };
            new Thread(new Runnable() { // from class: com.tencent.connect.share.a.2
                @Override // java.lang.Runnable
                public void run() {
                    String a;
                    Bitmap a2 = a.a(str, 140);
                    if (a2 != null) {
                        String str2 = Environment.getExternalStorageDirectory() + "/tmp/";
                        String str3 = "share2qq_temp" + i.f(str) + UVCCameraHelper.SUFFIX_JPEG;
                        if (!a.b(str, 140, 140)) {
                            f.b("openSDK_LOG.AsynScaleCompressImage", "not out of bound,not compress!");
                            a = str;
                        } else {
                            f.b("openSDK_LOG.AsynScaleCompressImage", "out of bound,compress!");
                            a = a.a(a2, str2, str3);
                        }
                        f.b("openSDK_LOG.AsynScaleCompressImage", "-->destFilePath: " + a);
                        if (a != null) {
                            Message obtainMessage = handler.obtainMessage(101);
                            obtainMessage.obj = a;
                            handler.sendMessage(obtainMessage);
                            return;
                        }
                    }
                    Message obtainMessage2 = handler.obtainMessage(102);
                    obtainMessage2.arg1 = 3;
                    handler.sendMessage(obtainMessage2);
                }
            }).start();
        }
    }

    public static final void a(Context context, final ArrayList<String> arrayList, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "batchScaleCompressImage");
        if (arrayList == null) {
            cVar.a(1, (String) null);
        } else {
            final Handler handler = new Handler(context.getMainLooper()) { // from class: com.tencent.connect.share.a.3
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 101) {
                        cVar.a(0, message.getData().getStringArrayList("images"));
                    } else {
                        super.handleMessage(message);
                    }
                }
            };
            new Thread(new Runnable() { // from class: com.tencent.connect.share.a.4
                @Override // java.lang.Runnable
                public void run() {
                    Bitmap a;
                    for (int i = 0; i < arrayList.size(); i++) {
                        String str = (String) arrayList.get(i);
                        if (!i.g(str) && i.h(str) && (a = a.a(str, 10000)) != null) {
                            String str2 = Environment.getExternalStorageDirectory() + "/tmp/";
                            String str3 = "share2qzone_temp" + i.f(str) + UVCCameraHelper.SUFFIX_JPEG;
                            if (!a.b(str, UVCCamera.DEFAULT_PREVIEW_WIDTH, 10000)) {
                                f.b("openSDK_LOG.AsynScaleCompressImage", "not out of bound,not compress!");
                            } else {
                                f.b("openSDK_LOG.AsynScaleCompressImage", "out of bound, compress!");
                                str = a.a(a, str2, str3);
                            }
                            if (str != null) {
                                arrayList.set(i, str);
                            }
                        }
                    }
                    Message obtainMessage = handler.obtainMessage(101);
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList("images", arrayList);
                    obtainMessage.setData(bundle);
                    handler.sendMessage(obtainMessage);
                }
            }).start();
        }
    }

    private static Bitmap a(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            width = height;
        }
        float f = i / width;
        matrix.postScale(f, f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    protected static final String a(Bitmap bitmap, String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(str2);
        String stringBuffer2 = stringBuffer.toString();
        File file2 = new File(stringBuffer2);
        if (file2.exists()) {
            file2.delete();
        }
        if (bitmap == null) {
            return null;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            bitmap.recycle();
            return stringBuffer2;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return false;
        }
        int i5 = i3 > i4 ? i3 : i4;
        if (i3 >= i4) {
            i3 = i4;
        }
        f.b("openSDK_LOG.AsynScaleCompressImage", "longSide=" + i5 + "shortSide=" + i3);
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return i5 > i2 || i3 > i;
    }

    public static final Bitmap a(String str, int i) {
        Bitmap bitmap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        if (i2 <= i3) {
            i2 = i3;
        }
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        if (i2 > i) {
            options.inSampleSize = a(options, -1, i * i);
        }
        options.inJustDecodeBounds = false;
        try {
            bitmap = BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (i4 <= i5) {
            i4 = i5;
        }
        return i4 > i ? a(bitmap, i) : bitmap;
    }

    public static final int a(BitmapFactory.Options options, int i, int i2) {
        int b = b(options, i, i2);
        if (b > 8) {
            return ((b + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < b) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int b(BitmapFactory.Options options, int i, int i2) {
        int min;
        double d = options.outWidth;
        double d2 = options.outHeight;
        int ceil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / i2));
        if (i == -1) {
            min = 128;
        } else {
            double d3 = i;
            min = (int) Math.min(Math.floor(d / d3), Math.floor(d2 / d3));
        }
        if (min < ceil) {
            return ceil;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        return i == -1 ? ceil : min;
    }
}
