package com.tencent.connect.auth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.jieli.stream.dv.running2.util.IConstant;
import com.tencent.bugly.Bugly;
import com.tencent.connect.common.BaseApi;
import com.tencent.open.a.f;
import com.tencent.open.utils.d;
import com.tencent.tauth.IUiListener;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class c {
    private AuthAgent a;
    private QQToken b;

    private c(String str, Context context) {
        f.c("openSDK_LOG.QQAuth", "new QQAuth() --start");
        this.b = new QQToken(str);
        this.a = new AuthAgent(this.b);
        com.tencent.connect.a.a.c(context, this.b);
        f.c("openSDK_LOG.QQAuth", "new QQAuth() --end");
    }

    public static c a(String str, Context context) {
        d.a(context.getApplicationContext());
        f.c("openSDK_LOG.QQAuth", "QQAuth -- createInstance() --start");
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
            c cVar = new c(str, context);
            f.c("openSDK_LOG.QQAuth", "QQAuth -- createInstance()  --end");
            return cVar;
        } catch (PackageManager.NameNotFoundException e) {
            f.b("openSDK_LOG.QQAuth", "createInstance() error --end", e);
            Toast.makeText(context.getApplicationContext(), "请参照文档在Androidmanifest.xml加上AuthActivity和AssitActivity的定义 ", 1).show();
            return null;
        }
    }

    public int a(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.QQAuth", "login()");
        return a(activity, str, iUiListener, "");
    }

    public int a(Activity activity, String str, IUiListener iUiListener, String str2) {
        f.c("openSDK_LOG.QQAuth", "-->login activity: " + activity);
        return a(activity, null, str, iUiListener, str2);
    }

    public int a(Fragment fragment, String str, IUiListener iUiListener, String str2) {
        FragmentActivity activity = fragment.getActivity();
        f.c("openSDK_LOG.QQAuth", "-->login activity: " + activity);
        return a(activity, fragment, str, iUiListener, str2);
    }

    private int a(Activity activity, Fragment fragment, String str, IUiListener iUiListener, String str2) {
        String str3;
        String packageName = activity.getApplicationContext().getPackageName();
        Iterator<ApplicationInfo> it = activity.getPackageManager().getInstalledApplications(128).iterator();
        while (true) {
            if (!it.hasNext()) {
                str3 = null;
                break;
            }
            ApplicationInfo next = it.next();
            if (packageName.equals(next.packageName)) {
                str3 = next.sourceDir;
                break;
            }
        }
        if (str3 != null) {
            try {
                String a = com.tencent.open.utils.a.a(new File(str3));
                if (!TextUtils.isEmpty(a)) {
                    f.a("openSDK_LOG.QQAuth", "-->login channelId: " + a);
                    return a(activity, str, iUiListener, a, a, "");
                }
            } catch (IOException e) {
                f.b("openSDK_LOG.QQAuth", "-->login get channel id exception.", e);
                e.printStackTrace();
            }
        }
        f.b("openSDK_LOG.QQAuth", "-->login channelId is null ");
        BaseApi.isOEM = false;
        return this.a.doLogin(activity, str, iUiListener, false, fragment);
    }

    @Deprecated
    public int a(Activity activity, String str, IUiListener iUiListener, String str2, String str3, String str4) {
        f.c("openSDK_LOG.QQAuth", "loginWithOEM");
        BaseApi.isOEM = true;
        if (str2.equals("")) {
            str2 = IConstant.DEFAULT_PATH;
        }
        if (str3.equals("")) {
            str3 = IConstant.DEFAULT_PATH;
        }
        if (str4.equals("")) {
            str4 = IConstant.DEFAULT_PATH;
        }
        BaseApi.installChannel = str3;
        BaseApi.registerChannel = str2;
        BaseApi.businessId = str4;
        return this.a.doLogin(activity, str, iUiListener);
    }

    public int b(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.QQAuth", "reAuth()");
        return this.a.doLogin(activity, str, iUiListener, true, null);
    }

    public void a() {
        this.a.a((IUiListener) null);
    }

    public void a(IUiListener iUiListener) {
        this.a.b(iUiListener);
    }

    public QQToken b() {
        return this.b;
    }

    public void a(String str, String str2) {
        f.a("openSDK_LOG.QQAuth", "setAccessToken(), validTimeInSecond = " + str2 + "");
        this.b.setAccessToken(str, str2);
    }

    public boolean c() {
        StringBuilder sb = new StringBuilder();
        sb.append("isSessionValid(), result = ");
        sb.append(this.b.isSessionValid() ? "true" : Bugly.SDK_IS_DEV);
        sb.append("");
        f.a("openSDK_LOG.QQAuth", sb.toString());
        return this.b.isSessionValid();
    }

    public void a(Context context, String str) {
        f.a("openSDK_LOG.QQAuth", "setOpenId() --start");
        this.b.setOpenId(str);
        com.tencent.connect.a.a.d(context, this.b);
        f.a("openSDK_LOG.QQAuth", "setOpenId() --end");
    }
}
