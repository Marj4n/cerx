package com.baidu.lbsapi.auth.tracesdk;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
class l extends Thread {
    Handler a;
    private Object b;
    private boolean c;

    l() {
        this.a = null;
        this.b = new Object();
        this.c = false;
    }

    l(String str) {
        super(str);
        this.a = null;
        this.b = new Object();
        this.c = false;
    }

    public void a() {
        if (a.a) {
            a.a("Looper thread quit()");
        }
        this.a.getLooper().quit();
    }

    public void b() {
        synchronized (this.b) {
            try {
                if (!this.c) {
                    this.b.wait();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void c() {
        synchronized (this.b) {
            this.c = true;
            this.b.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.a = new Handler();
        if (a.a) {
            a.a("new Handler() finish!!");
        }
        Looper.loop();
        if (a.a) {
            a.a("LooperThread run() thread id:" + String.valueOf(Thread.currentThread().getId()));
        }
    }
}
