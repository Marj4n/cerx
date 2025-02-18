.class final Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;
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
    name = "ReplayUnboundedBuffer"
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
.field final capacity:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:[Ljava/lang/Object;

.field volatile size:I

.field tail:[Ljava/lang/Object;

.field tailIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    add-int/lit8 p1, p1, 0x1

    .line 548
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    const/4 v0, 0x1

    .line 584
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer<",
            "TT;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 589
    invoke-virtual/range {p1 .. p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 595
    :cond_0
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 596
    iget v4, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    const/4 v6, 0x1

    .line 600
    :goto_0
    iget-object v7, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 603
    iget-object v9, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    if-nez v9, :cond_1

    .line 605
    iget-object v9, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 607
    :cond_1
    iget v10, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->tailIndex:I

    .line 608
    iget v11, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->index:I

    const-wide/16 v14, 0x0

    :goto_1
    const/4 v12, 0x0

    cmp-long v13, v14, v7

    if-eqz v13, :cond_8

    .line 611
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 612
    iput-object v12, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    return v3

    .line 616
    :cond_2
    iget-boolean v5, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    .line 617
    iget v3, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    if-ne v11, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 620
    iput-object v12, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 621
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 623
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 625
    :cond_4
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_3
    const/4 v1, 0x0

    return v1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    if-ne v10, v4, :cond_7

    .line 635
    aget-object v3, v9, v10

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v9, v3

    const/4 v10, 0x0

    .line 640
    :cond_7
    aget-object v3, v9, v10

    .line 642
    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    const/4 v3, 0x1

    add-int/2addr v10, v3

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v3, 0x1

    if-nez v13, :cond_c

    .line 650
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 651
    iput-object v12, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    const/4 v1, 0x0

    return v1

    .line 655
    :cond_9
    iget-boolean v5, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    .line 656
    iget v13, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    if-ne v11, v13, :cond_a

    const/4 v13, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :goto_5
    if-eqz v5, :cond_c

    if-eqz v13, :cond_c

    .line 659
    iput-object v12, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 660
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 662
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 664
    :cond_b
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_6
    const/4 v5, 0x0

    return v5

    :cond_c
    const/4 v5, 0x0

    const-wide v12, 0x7fffffffffffffffL

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-eqz v18, :cond_d

    cmp-long v16, v7, v12

    if-eqz v16, :cond_d

    .line 672
    iget-object v3, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, v14, v15}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 676
    :cond_d
    iput v11, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->index:I

    .line 677
    iput v10, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->tailIndex:I

    .line 678
    iput-object v9, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    neg-int v3, v6

    .line 680
    invoke-virtual {v1, v3}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_f

    cmp-long v1, v7, v12

    if-nez v1, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    return v3

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 694
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 574
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    if-eqz v0, :cond_0

    .line 575
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    return-void

    .line 578
    :cond_0
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 579
    iput-boolean p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 726
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 704
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 709
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    :goto_0
    if-lt v0, v2, :cond_1

    .line 712
    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 716
    aget-object v0, v1, v0

    return-object v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 553
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    .line 557
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    .line 558
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    .line 559
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 560
    aput-object p1, v2, v4

    .line 561
    iput v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    .line 562
    aput-object v2, v1, v0

    .line 563
    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_1
    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 566
    iput v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    .line 568
    :goto_0
    iget p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    add-int/2addr p1, v3

    iput p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 721
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 732
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    .line 733
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 737
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 738
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int v5, v4, v2

    if-ge v5, v0, :cond_1

    .line 743
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move v4, v5

    goto :goto_0

    :cond_1
    sub-int v2, v0, v4

    .line 748
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 751
    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method
