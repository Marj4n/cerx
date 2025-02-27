package com.baidu.platform.comjni.engine;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a {
    private static final String a = a.class.getSimpleName();
    private static SparseArray<List<Handler>> b = new SparseArray<>();

    public static void a(int i, int i2, int i3, long j) {
        synchronized (b) {
            List<Handler> list = b.get(i);
            if (list != null && !list.isEmpty()) {
                Iterator<Handler> it = list.iterator();
                while (it.hasNext()) {
                    Message.obtain(it.next(), i, i2, i3, Long.valueOf(j)).sendToTarget();
                }
            }
        }
    }

    public static void a(int i, Handler handler) {
        synchronized (b) {
            if (handler == null) {
                return;
            }
            List<Handler> list = b.get(i);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(handler);
                b.put(i, arrayList);
            } else if (!list.contains(handler)) {
                list.add(handler);
            }
        }
    }

    public static void b(int i, Handler handler) {
        synchronized (b) {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                List<Handler> list = b.get(i);
                if (list != null) {
                    list.remove(handler);
                }
            }
        }
    }
}
