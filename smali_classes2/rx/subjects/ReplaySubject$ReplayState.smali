.class final Lrx/subjects/ReplaySubject$ReplayState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lrx/subjects/ReplaySubject$ReplayProducer<",
        "TT;>;>;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field static final TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field private static final serialVersionUID:J = 0x529b0a217109d450L


# instance fields
.field final buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 347
    sput-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    new-array v0, v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 349
    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 353
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 354
    sget-object p1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 374
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 375
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 379
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 382
    new-array v3, v3, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 383
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    aput-object p1, v3, v1

    .line 386
    invoke-virtual {p0, v0, v3}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 359
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-direct {v0, p1, p0}, Lrx/subjects/ReplaySubject$ReplayProducer;-><init>(Lrx/Subscriber;Lrx/subjects/ReplaySubject$ReplayState;)V

    .line 360
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 361
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 363
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayProducer;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    return-void

    .line 369
    :cond_0
    iget-object p1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {p1, v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    return-void
.end method

.method isTerminated()Z
    .locals 2

    .line 493
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 6

    .line 476
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 478
    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->complete()V

    .line 479
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 480
    iget-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v5, :cond_0

    .line 481
    iget-object v4, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1

    .line 483
    :cond_0
    invoke-interface {v0, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 484
    iput-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    const/4 v5, 0x0

    .line 485
    iput-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 448
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 450
    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 452
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 454
    :try_start_0
    iget-boolean v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v7, :cond_0

    .line 455
    iget-object v6, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v6, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 457
    :cond_0
    invoke-interface {v0, v6}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 458
    iput-boolean v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    .line 459
    iput-object v3, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    if-nez v5, :cond_1

    .line 464
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 466
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    :cond_3
    invoke-static {v5}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 432
    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 434
    iget-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v5, :cond_0

    .line 435
    iget-object v4, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 437
    :cond_0
    invoke-interface {v0, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 438
    iput-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    const/4 v5, 0x0

    .line 439
    iput-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 395
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 396
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-eq v0, v1, :cond_6

    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 400
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 404
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 416
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 418
    new-array v5, v5, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 419
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 420
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 422
    :goto_2
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method
