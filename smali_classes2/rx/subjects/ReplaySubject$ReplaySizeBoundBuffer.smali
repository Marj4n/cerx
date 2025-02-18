.class final Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    .line 772
    new-instance p1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 773
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 774
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    const/4 v0, 0x1

    .line 798
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer<",
            "TT;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 803
    invoke-virtual/range {p1 .. p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 807
    :cond_0
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    const/4 v5, 0x1

    .line 813
    :cond_1
    iget-object v6, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 817
    iget-object v8, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    const-wide/16 v9, 0x0

    if-nez v8, :cond_2

    .line 819
    iget-object v8, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    :cond_2
    move-wide v11, v9

    :goto_0
    const/4 v13, 0x0

    cmp-long v14, v11, v6

    if-eqz v14, :cond_8

    .line 823
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 824
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    return v3

    .line 828
    :cond_3
    iget-boolean v15, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 829
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    if-nez v4, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    :goto_1
    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 833
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 834
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 836
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 838
    :cond_5
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_2
    return v3

    :cond_6
    if-eqz v16, :cond_7

    goto :goto_3

    .line 847
    :cond_7
    iget-object v8, v4, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-object v8, v4

    goto :goto_0

    :cond_8
    :goto_3
    if-nez v14, :cond_c

    .line 854
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 855
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    return v3

    .line 859
    :cond_9
    iget-boolean v4, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 860
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    if-eqz v4, :cond_c

    if-eqz v14, :cond_c

    .line 863
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 864
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 866
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 868
    :cond_b
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_5
    return v3

    :cond_c
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v4, v11, v9

    if-eqz v4, :cond_d

    cmp-long v4, v6, v13

    if-eqz v4, :cond_d

    .line 876
    iget-object v4, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v11, v12}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 880
    :cond_d
    iput-object v8, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    neg-int v4, v5

    .line 882
    invoke-virtual {v1, v4}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    cmp-long v1, v6, v13

    if-nez v1, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 907
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 793
    iput-boolean p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 933
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 914
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 917
    :cond_0
    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 779
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-direct {v0, p1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 780
    iget-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {p1, v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->set(Ljava/lang/Object;)V

    .line 781
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 782
    iget p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    .line 783
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    if-ne p1, v0, :cond_0

    .line 784
    iget-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 786
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    :goto_0
    return-void
.end method

.method public size()I
    .locals 3

    .line 923
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 925
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 940
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    :goto_0
    if-eqz v1, :cond_0

    .line 942
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    goto :goto_0

    .line 945
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
