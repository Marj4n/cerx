package com.baidu.platform.comapi.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.baidu.mapapi.VersionInfo;
import com.baidu.platform.comjni.util.AppMD5;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class e {
    static String b;
    static String c;
    static String d;
    static String e;
    static int f;
    static int g;
    static int h;
    static int i;
    static int j;
    static int k;
    static String l;
    static String m;
    static String s;
    static String t;
    public static Context w;
    public static String z;
    private static final String A = e.class.getSimpleName();
    private static com.baidu.platform.comjni.util.a B = new com.baidu.platform.comjni.util.a();
    static String a = "02";
    static String n = "baidu";
    static String o = "baidu";
    static String p = "";
    static String q = "";
    static String r = "";
    static String u = "-1";
    static String v = "-1";
    public static final int x = Integer.parseInt(Build.VERSION.SDK);
    public static float y = 1.0f;
    private static boolean C = true;
    private static int D = 0;
    private static int E = 0;
    private static Map<String, String> F = new HashMap();

    public static void a() {
        d();
    }

    public static void a(String str) {
        l = str;
        f();
    }

    public static void a(String str, String str2) {
        u = str2;
        v = str;
        f();
    }

    public static byte[] a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString("cpu", p);
        bundle.putString("resid", a);
        bundle.putString("channel", n);
        bundle.putString("glr", q);
        bundle.putString("glv", r);
        bundle.putString("mb", g());
        bundle.putString("sv", i());
        bundle.putString("os", k());
        bundle.putInt("dpi_x", l());
        bundle.putInt("dpi_y", l());
        bundle.putString("net", l);
        bundle.putString("cuid", o());
        bundle.putByteArray("signature", a(w));
        bundle.putString("pcn", w.getPackageName());
        bundle.putInt("screen_x", h());
        bundle.putInt("screen_y", j());
        com.baidu.platform.comjni.util.a aVar = B;
        if (aVar != null) {
            aVar.a(bundle);
            Log.d("phoneInfo", "mAppSysOSAPI not null");
        }
        Log.d("phoneInfo", bundle.toString());
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Context context) {
        Map<String, String> map;
        String format;
        String str = "pcn";
        Object obj = "cuid";
        String str2 = "dpi";
        String str3 = "os";
        Object obj2 = "sv";
        String str4 = "mb";
        String str5 = "channel";
        String str6 = "resid";
        w = context;
        s = context.getFilesDir().getAbsolutePath();
        t = context.getCacheDir().getAbsolutePath();
        c = Build.MODEL;
        d = "Android" + Build.VERSION.SDK;
        b = context.getPackageName();
        c(context);
        d(context);
        e(context);
        f(context);
        try {
            try {
                LocationManager locationManager = (LocationManager) context.getSystemService("location");
                D = locationManager.isProviderEnabled("gps") ? 1 : 0;
                E = locationManager.isProviderEnabled("network") ? 1 : 0;
                F.put("resid", AppMD5.encodeUrlParamsValue(a));
                Map<String, String> map2 = F;
                str6 = AppMD5.encodeUrlParamsValue(m());
                map2.put("channel", str6);
                Map<String, String> map3 = F;
                str5 = AppMD5.encodeUrlParamsValue(g());
                map3.put("mb", str5);
                Map<String, String> map4 = F;
                str4 = AppMD5.encodeUrlParamsValue(i());
                map4.put("sv", str4);
                F.put("os", AppMD5.encodeUrlParamsValue(k()));
                Map<String, String> map5 = F;
                obj2 = Integer.valueOf(l());
                str3 = AppMD5.encodeUrlParamsValue(String.format("%d,%d", Integer.valueOf(l()), obj2));
                map5.put("dpi", str3);
                Map<String, String> map6 = F;
                str2 = AppMD5.encodeUrlParamsValue(o());
                map6.put("cuid", str2);
                F.put("pcn", AppMD5.encodeUrlParamsValue(w.getPackageName()));
                map = F;
                obj = Integer.valueOf(j());
                format = String.format("%d,%d", Integer.valueOf(h()), obj);
            } catch (Exception unused) {
                Log.w("baidumapsdk", "LocationManager error");
                F.put("resid", AppMD5.encodeUrlParamsValue(a));
                Map<String, String> map7 = F;
                str6 = AppMD5.encodeUrlParamsValue(m());
                map7.put("channel", str6);
                Map<String, String> map8 = F;
                str5 = AppMD5.encodeUrlParamsValue(g());
                map8.put("mb", str5);
                Map<String, String> map9 = F;
                str4 = AppMD5.encodeUrlParamsValue(i());
                map9.put("sv", str4);
                F.put("os", AppMD5.encodeUrlParamsValue(k()));
                Map<String, String> map10 = F;
                obj2 = Integer.valueOf(l());
                str3 = AppMD5.encodeUrlParamsValue(String.format("%d,%d", Integer.valueOf(l()), obj2));
                map10.put("dpi", str3);
                Map<String, String> map11 = F;
                str2 = AppMD5.encodeUrlParamsValue(o());
                map11.put("cuid", str2);
                F.put("pcn", AppMD5.encodeUrlParamsValue(w.getPackageName()));
                map = F;
                obj = Integer.valueOf(j());
                format = String.format("%d,%d", Integer.valueOf(h()), obj);
            }
            str = AppMD5.encodeUrlParamsValue(format);
            map.put("screen", str);
            com.baidu.platform.comjni.util.a aVar = B;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th) {
            F.put(str6, AppMD5.encodeUrlParamsValue(a));
            F.put(str5, AppMD5.encodeUrlParamsValue(m()));
            F.put(str4, AppMD5.encodeUrlParamsValue(g()));
            F.put(obj2, AppMD5.encodeUrlParamsValue(i()));
            F.put(str3, AppMD5.encodeUrlParamsValue(k()));
            F.put(str2, AppMD5.encodeUrlParamsValue(String.format("%d,%d", Integer.valueOf(l()), Integer.valueOf(l()))));
            F.put(obj, AppMD5.encodeUrlParamsValue(o()));
            F.put(str, AppMD5.encodeUrlParamsValue(w.getPackageName()));
            F.put("screen", AppMD5.encodeUrlParamsValue(String.format("%d,%d", Integer.valueOf(h()), Integer.valueOf(j()))));
            throw th;
        }
    }

    public static String c() {
        if (F == null) {
            return null;
        }
        long time = new Date().getTime() + (r0.getSeconds() * 1000);
        F.put("ctm", AppMD5.encodeUrlParamsValue(String.format("%f", Double.valueOf((time / 1000) + ((time % 1000) / 1000.0d)))));
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : F.entrySet()) {
            sb.append("&");
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    private static void c(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String apiVersion = VersionInfo.getApiVersion();
            e = apiVersion;
            if (apiVersion != null && !apiVersion.equals("")) {
                e = e.replace('_', '.');
            }
            f = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            e = "1.0.0";
            f = 1;
        }
    }

    public static void d() {
    }

    private static void d(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
        if (defaultDisplay != null) {
            g = defaultDisplay.getWidth();
            h = defaultDisplay.getHeight();
            defaultDisplay.getMetrics(displayMetrics);
        }
        y = displayMetrics.density;
        i = (int) displayMetrics.xdpi;
        j = (int) displayMetrics.ydpi;
        if (x > 3) {
            k = displayMetrics.densityDpi;
        } else {
            k = 160;
        }
        if (k == 0) {
            k = 160;
        }
    }

    public static String e() {
        return l;
    }

    private static void e(Context context) {
        m = Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static void f() {
        F.put("net", AppMD5.encodeUrlParamsValue(e()));
        F.put("appid", AppMD5.encodeUrlParamsValue(u));
        F.put("bduid", "");
        if (B == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("cpu", p);
        bundle.putString("resid", a);
        bundle.putString("channel", n);
        bundle.putString("glr", q);
        bundle.putString("glv", r);
        bundle.putString("mb", g());
        bundle.putString("sv", i());
        bundle.putString("os", k());
        bundle.putInt("dpi_x", l());
        bundle.putInt("dpi_y", l());
        bundle.putString("net", l);
        bundle.putString("cuid", o());
        bundle.putString("pcn", w.getPackageName());
        bundle.putInt("screen_x", h());
        bundle.putInt("screen_y", j());
        bundle.putString("appid", u);
        bundle.putString("duid", v);
        if (!TextUtils.isEmpty(z)) {
            bundle.putString("token", z);
        }
        B.a(bundle);
        SysUpdateObservable.getInstance().updatePhoneInfo();
    }

    private static void f(Context context) {
        l = "0";
    }

    public static String g() {
        return c;
    }

    public static int h() {
        return g;
    }

    public static String i() {
        return e;
    }

    public static int j() {
        return h;
    }

    public static String k() {
        return d;
    }

    public static int l() {
        return k;
    }

    public static String m() {
        return n;
    }

    public static String n() {
        return s;
    }

    public static String o() {
        String str;
        try {
            str = CommonParam.a(w);
        } catch (Exception unused) {
            str = "";
        }
        return str == null ? "" : str;
    }
}
