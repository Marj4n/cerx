.class final Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithTime;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    .line 372
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 373
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 374
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 375
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    .line 376
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<",
            "TT;>;"
        }
    .end annotation

    .line 496
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v0

    .line 497
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method public onCompleted()V
    .locals 3

    .line 428
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 430
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 432
    iput-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 434
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 435
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 437
    iget-object v1, v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_0
    move-exception v1

    .line 435
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 413
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 415
    iput-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 420
    iget-object v1, v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 418
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 389
    monitor-exit v0

    return-void

    .line 391
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 395
    iget v4, v3, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v3, v3, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v4, v3, :cond_1

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 399
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 401
    iget-object v2, v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v2, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 402
    iget v2, v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v3, v3, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v2, v3, :cond_3

    .line 403
    iget-object v1, v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 399
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 381
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->request(J)V

    return-void
.end method

.method scheduleChunk()V
    .locals 7

    .line 442
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method startNewChunk()V
    .locals 5

    .line 452
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 455
    monitor-exit v1

    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    iget-object v2, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->producer:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V

    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v3, v0, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void

    :catchall_0
    move-exception v0

    .line 462
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 458
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method terminateChunk(Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 479
    monitor-exit v0

    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 490
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 492
    iget-object p1, p1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 490
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
