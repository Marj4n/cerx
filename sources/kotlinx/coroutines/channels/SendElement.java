package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u0006H\u0016J\u0014\u0010\u000b\u001a\u00020\u00062\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/channels/SendElement;", "Lkotlinx/coroutines/channels/Send;", "pollResult", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "getPollResult", "()Ljava/lang/Object;", "completeResumeSend", "resumeSendClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "toString", "", "tryResumeSend", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class SendElement extends Send {
    public final CancellableContinuation<Unit> cont;
    private final Object pollResult;

    @Override // kotlinx.coroutines.channels.Send
    public Object getPollResult() {
        return this.pollResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SendElement(Object obj, CancellableContinuation<? super Unit> cancellableContinuation) {
        this.pollResult = obj;
        this.cont = cancellableContinuation;
    }

    @Override // kotlinx.coroutines.channels.Send
    public Symbol tryResumeSend(LockFreeLinkedListNode.PrepareOp otherOp) {
        Object tryResume = this.cont.tryResume(Unit.INSTANCE, otherOp != null ? otherOp.desc : null);
        if (tryResume == null) {
            return null;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(tryResume == CancellableContinuationImplKt.RESUME_TOKEN)) {
                throw new AssertionError();
            }
        }
        if (otherOp != null) {
            otherOp.finishPrepare();
        }
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    @Override // kotlinx.coroutines.channels.Send
    public void completeResumeSend() {
        this.cont.completeResume(CancellableContinuationImplKt.RESUME_TOKEN);
    }

    @Override // kotlinx.coroutines.channels.Send
    public void resumeSendClosed(Closed<?> closed) {
        CancellableContinuation<Unit> cancellableContinuation = this.cont;
        Throwable sendException = closed.getSendException();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m21constructorimpl(ResultKt.createFailure(sendException)));
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return "SendElement@" + DebugStringsKt.getHexAddress(this) + '(' + getPollResult() + ')';
    }
}
