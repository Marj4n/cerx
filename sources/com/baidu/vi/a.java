package com.baidu.vi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class a extends BroadcastReceiver {
    a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        VDeviceAPI.onNetworkStateChanged();
    }
}
