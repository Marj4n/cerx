package kotlinx.coroutines.sync;

import com.google.zxing.client.result.optional.NDEFRecord;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0086H\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001"}, d2 = {"withLock", "", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "Lkotlinx/coroutines/sync/Mutex;", "owner", AuthActivity.ACTION_KEY, "Lkotlin/Function0;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.sync.MutexKt", f = "Mutex.kt", i = {0, 0, 0}, l = {116}, m = "withLock", n = {"$this$withLock", "owner", AuthActivity.ACTION_KEY}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes2.dex */
public final class MutexKt$withLock$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    public MutexKt$withLock$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MutexKt.withLock(null, null, null, this);
    }
}
