package com.tencent.open;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a;
import com.tencent.open.a.f;
import com.tencent.open.b.g;
import com.tencent.open.c.a;
import com.tencent.open.utils.i;
import com.tencent.tauth.AuthActivity;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class c extends com.tencent.open.b implements a.InterfaceC0044a {
    static Toast c;
    private String d;
    private IUiListener e;
    private C0045c f;
    private Handler g;
    private com.tencent.open.c.a h;
    private com.tencent.open.c.b i;
    private WeakReference<Context> j;
    private int k;

    public c(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.j = new WeakReference<>(context);
        this.d = str2;
        this.f = new C0045c(context, str, str2, qQToken.getAppId(), iUiListener);
        this.g = new d(this.f, context.getMainLooper());
        this.e = iUiListener;
        this.k = Math.round(context.getResources().getDisplayMetrics().density * 185.0f);
        f.e("openSDK_LOG.PKDialog", "density=" + context.getResources().getDisplayMetrics().density + "; webviewHeight=" + this.k);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.tencent.open.b, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        getWindow().setSoftInputMode(1);
        b();
        c();
    }

    private void b() {
        com.tencent.open.c.a aVar = new com.tencent.open.c.a(this.j.get());
        this.h = aVar;
        aVar.setBackgroundColor(1711276032);
        this.h.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        com.tencent.open.c.b bVar = new com.tencent.open.c.b(this.j.get());
        this.i = bVar;
        bVar.setBackgroundColor(0);
        this.i.setBackgroundDrawable(null);
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                View.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this.i, 1, new Paint());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.k);
        layoutParams.addRule(13, -1);
        this.i.setLayoutParams(layoutParams);
        this.h.addView(this.i);
        this.h.a(this);
        setContentView(this.h);
    }

    private void c() {
        this.i.setVerticalScrollBarEnabled(false);
        this.i.setHorizontalScrollBarEnabled(false);
        this.i.setWebViewClient(new a());
        this.i.setWebChromeClient(this.b);
        this.i.clearFormData();
        WebSettings settings = this.i.getSettings();
        if (settings == null) {
            return;
        }
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        WeakReference<Context> weakReference = this.j;
        if (weakReference != null && weakReference.get() != null) {
            settings.setDatabaseEnabled(true);
            settings.setDatabasePath(this.j.get().getApplicationContext().getDir("databases", 0).getPath());
        }
        settings.setDomStorageEnabled(true);
        this.a.a(new b(), "sdk_js_if");
        this.i.clearView();
        this.i.loadUrl(this.d);
        this.i.getSettings().setSavePassword(false);
    }

    /* compiled from: ProGuard */
    private class b extends a.b {
        private b() {
        }
    }

    /* compiled from: ProGuard */
    private class a extends WebViewClient {
        private a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            f.a("openSDK_LOG.PKDialog", "Redirect URL: " + str);
            if (str.startsWith(com.tencent.open.utils.f.a().a((Context) c.this.j.get(), "auth://tauth.qq.com/"))) {
                c.this.f.onComplete(i.c(str));
                c.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.CANCEL_URI)) {
                c.this.f.onCancel();
                c.this.dismiss();
                return true;
            }
            if (!str.startsWith(Constants.CLOSE_URI)) {
                return false;
            }
            c.this.dismiss();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            c.this.f.onError(new UiError(i, str, str2));
            if (c.this.j != null && c.this.j.get() != null) {
                Toast.makeText((Context) c.this.j.get(), "网络连接异常或系统错误", 0).show();
            }
            c.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            f.a("openSDK_LOG.PKDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            c.this.i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str) {
        try {
            JSONObject d2 = i.d(str);
            int i = d2.getInt("type");
            String string = d2.getString("msg");
            if (i == 0) {
                if (c == null) {
                    c = Toast.makeText(context, string, 0);
                } else {
                    c.setView(c.getView());
                    c.setText(string);
                    c.setDuration(0);
                }
                c.show();
                return;
            }
            if (i == 1) {
                if (c == null) {
                    c = Toast.makeText(context, string, 1);
                } else {
                    c.setView(c.getView());
                    c.setText(string);
                    c.setDuration(1);
                }
                c.show();
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        try {
            JSONObject d2 = i.d(str);
            d2.getInt(AuthActivity.ACTION_KEY);
            d2.getString("msg");
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* compiled from: ProGuard */
    private class d extends Handler {
        private C0045c b;

        public d(C0045c c0045c, Looper looper) {
            super(looper);
            this.b = c0045c;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            f.b("openSDK_LOG.PKDialog", "msg = " + message.what);
            int i = message.what;
            if (i == 1) {
                this.b.a((String) message.obj);
                return;
            }
            if (i == 2) {
                this.b.onCancel();
                return;
            }
            if (i != 3) {
                if (i != 5 || c.this.j == null || c.this.j.get() == null) {
                    return;
                }
                c.d((Context) c.this.j.get(), (String) message.obj);
                return;
            }
            if (c.this.j == null || c.this.j.get() == null) {
                return;
            }
            c.c((Context) c.this.j.get(), (String) message.obj);
        }
    }

    /* compiled from: ProGuard */
    /* renamed from: com.tencent.open.c$c, reason: collision with other inner class name */
    private static class C0045c implements IUiListener {
        String a;
        String b;
        private WeakReference<Context> c;
        private String d;
        private IUiListener e;

        public C0045c(Context context, String str, String str2, String str3, IUiListener iUiListener) {
            this.c = new WeakReference<>(context);
            this.d = str;
            this.a = str2;
            this.b = str3;
            this.e = iUiListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            try {
                onComplete(i.d(str));
            } catch (JSONException e) {
                e.printStackTrace();
                onError(new UiError(-4, Constants.MSG_JSON_ERROR, str));
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, jSONObject.optInt("ret", -6), this.a, false);
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onComplete(jSONObject);
                this.e = null;
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            String str;
            if (uiError.errorMessage != null) {
                str = uiError.errorMessage + this.a;
            } else {
                str = this.a;
            }
            g a = g.a();
            a.a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, uiError.errorCode, str, false);
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onError(uiError);
                this.e = null;
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            IUiListener iUiListener = this.e;
            if (iUiListener != null) {
                iUiListener.onCancel();
                this.e = null;
            }
        }
    }

    @Override // com.tencent.open.c.a.InterfaceC0044a
    public void a(int i) {
        WeakReference<Context> weakReference = this.j;
        if (weakReference != null && weakReference.get() != null) {
            if (i < this.k && 2 == this.j.get().getResources().getConfiguration().orientation) {
                this.i.getLayoutParams().height = i;
            } else {
                this.i.getLayoutParams().height = this.k;
            }
        }
        f.e("openSDK_LOG.PKDialog", "onKeyboardShown keyboard show");
    }

    @Override // com.tencent.open.c.a.InterfaceC0044a
    public void a() {
        this.i.getLayoutParams().height = this.k;
        f.e("openSDK_LOG.PKDialog", "onKeyboardHidden keyboard hide");
    }

    @Override // com.tencent.open.b
    protected void a(String str) {
        f.b("openSDK_LOG.PKDialog", "--onConsoleMessage--");
        try {
            this.a.a(this.i, str);
        } catch (Exception unused) {
        }
    }
}
