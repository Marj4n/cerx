package com.baidu.platform.comapi.util;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public final class c {
    private final boolean a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    c(Context context) {
        this.a = false;
        this.b = Environment.getExternalStorageDirectory().getAbsolutePath();
        this.c = this.b + File.separator + "BaiduMapSDKNew";
        this.d = context.getCacheDir().getAbsolutePath();
        this.e = "";
        this.f = "";
    }

    c(String str, boolean z, String str2, Context context) {
        this.a = z;
        this.b = str;
        this.c = this.b + File.separator + "BaiduMapSDKNew";
        this.d = this.c + File.separator + "cache";
        this.e = context.getCacheDir().getAbsolutePath();
        this.f = str2;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.b + File.separator + "BaiduMapSDKNew";
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == null || !c.class.isInstance(obj)) {
            return false;
        }
        return this.b.equals(((c) obj).b);
    }
}
