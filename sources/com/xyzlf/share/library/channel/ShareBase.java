package com.xyzlf.share.library.channel;

import android.content.Context;
import com.xyzlf.share.library.interfaces.IShareBase;

/* loaded from: classes2.dex */
public abstract class ShareBase implements IShareBase {
    Context context;

    public ShareBase(Context context) {
        this.context = context;
    }
}
