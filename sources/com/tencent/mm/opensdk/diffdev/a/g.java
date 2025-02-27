package com.tencent.mm.opensdk.diffdev.a;

import com.baidu.mapapi.UIMsg;

/* loaded from: classes2.dex */
public enum g {
    UUID_EXPIRED(402),
    UUID_CANCELED(403),
    UUID_SCANED(UIMsg.l_ErrorNo.NETWORK_ERROR_404),
    UUID_CONFIRM(405),
    UUID_KEEP_CONNECT(408),
    UUID_ERROR(500);

    private int code;

    g(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UUIDStatusCode:" + this.code;
    }
}
