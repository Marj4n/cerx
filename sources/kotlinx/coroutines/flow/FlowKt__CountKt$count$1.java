package kotlinx.coroutines.flow;

import com.google.zxing.client.result.optional.NDEFRecord;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: Count.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0086@"}, d2 = {"count", "", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "Lkotlinx/coroutines/flow/Flow;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0, 0, 0}, l = {39}, m = "count", n = {"$this$count", "i", "$this$collect$iv"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes2.dex */
final class FlowKt__CountKt$count$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    FlowKt__CountKt$count$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt.count(null, this);
    }
}
