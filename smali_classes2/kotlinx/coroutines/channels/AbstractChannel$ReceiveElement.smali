.class final Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
.super Lkotlinx/coroutines/channels/Receive;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/Receive<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$ReceiveElement\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ValueOrClosed$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n*L\n1#1,1059:1\n419#2:1060\n423#2:1063\n1#3:1061\n1058#4:1062\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$ReceiveElement\n*L\n859#1:1060\n877#1:1063\n877#1:1062\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0016J\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J!\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00028\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;",
        "E",
        "Lkotlinx/coroutines/channels/Receive;",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/CancellableContinuation;I)V",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "resumeValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final receiveMode:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Receive;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    iput p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 872
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    .line 876
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/4 v0, 0x0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 877
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 1062
    sget-object v1, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 1063
    new-instance v1, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1062
    invoke-static {p1}, Lkotlinx/coroutines/channels/ValueOrClosed;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ValueOrClosed;

    move-result-object p1

    .line 877
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final resumeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 858
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .line 1060
    invoke-static {p1}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/ValueOrClosed;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ValueOrClosed;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
            ")",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, p1, v2}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 866
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 868
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->finishPrepare()V

    .line 869
    :cond_4
    sget-object p1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    :cond_5
    return-object v1
.end method
