package com.baidu.lbsapi.auth;

import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
class f implements Runnable {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        List list;
        e eVar = this.a;
        list = eVar.b;
        eVar.a((List<HashMap<String, String>>) list);
    }
}
