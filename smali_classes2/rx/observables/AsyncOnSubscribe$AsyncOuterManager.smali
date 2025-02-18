.class final Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncOuterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field concatProducer:Lrx/Producer;

.field emitting:Z

.field expectedDelivery:J

.field private hasTerminated:Z

.field final isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject<",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private onNextCalled:Z

.field private final parent:Lrx/observables/AsyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final serializedSubscriber:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver<",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final subscriptions:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>(Lrx/observables/AsyncOnSubscribe;Ljava/lang/Object;Lrx/observables/AsyncOnSubscribe$UnicastSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AsyncOnSubscribe<",
            "TS;TT;>;TS;",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject<",
            "Lrx/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 382
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    .line 383
    new-instance p1, Lrx/observers/SerializedObserver;

    invoke-direct {p1, p0}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    .line 384
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    .line 385
    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    .line 386
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private handleThrownError(Ljava/lang/Throwable;)V
    .locals 1

    .line 556
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 560
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 561
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    :goto_0
    return-void
.end method

.method private subscribeBufferToObservable(Lrx/Observable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 596
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 598
    iget-wide v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 599
    new-instance v3, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;JLrx/internal/operators/BufferUntilSubscriber;)V

    .line 619
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v3}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 621
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;

    invoke-direct {v1, p0, v3}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;Lrx/Subscriber;)V

    invoke-virtual {p1, v1}, Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    .line 627
    invoke-virtual {p1, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 629
    iget-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {p1, v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 421
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 423
    :try_start_0
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/observables/AsyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 425
    invoke-direct {p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public nextIteration(J)V
    .locals 3

    .line 417
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/observables/AsyncOnSubscribe;->next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 567
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 571
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onCompleted()V

    return-void

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 576
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 580
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Terminal event already emitted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 585
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 589
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-direct {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscribeBufferToObservable(Lrx/Observable;)V

    return-void

    .line 586
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext called multiple times!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ltz v2, :cond_7

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 445
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_2
    iput-boolean v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    const/4 v1, 0x0

    .line 451
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    if-eqz v1, :cond_3

    return-void

    .line 459
    :cond_3
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 464
    :cond_4
    monitor-enter p0

    .line 465
    :try_start_1
    iget-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    if-nez p1, :cond_5

    .line 467
    iput-boolean v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 468
    monitor-exit p0

    return-void

    :cond_5
    const/4 p2, 0x0

    .line 470
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 471
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 474
    invoke-virtual {p0, v0, v1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :catchall_0
    move-exception p1

    .line 471
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 451
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 435
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be negative! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRemaining(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ltz v2, :cond_6

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 500
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 505
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 507
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 512
    :cond_3
    monitor-enter p0

    .line 513
    :try_start_1
    iget-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 515
    iput-boolean p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 516
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x0

    .line 518
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 519
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 522
    invoke-virtual {p0, v0, v1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :catchall_0
    move-exception p1

    .line 519
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 505
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 491
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be negative! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setConcatProducer(Lrx/Producer;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    if-nez v0, :cond_0

    .line 408
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    return-void

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setConcatProducer may be called at most once!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method tryEmit(J)Z
    .locals 2

    .line 530
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 536
    :try_start_0
    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 537
    iput-wide p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 538
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->nextIteration(J)V

    .line 540
    iget-boolean p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 544
    :cond_1
    iget-boolean p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-nez p1, :cond_2

    .line 545
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No events emitted!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    return v0

    .line 541
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 549
    invoke-direct {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    return v1
.end method

.method public unsubscribe()V
    .locals 3

    .line 391
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 395
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    iput-boolean v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 399
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 399
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
