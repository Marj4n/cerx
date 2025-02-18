.class final Lrx/internal/operators/OperatorScan$InitialProducer;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InitialProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field missedRequested:J

.field volatile producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 189
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 190
    new-instance p2, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {p2}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    goto :goto_0

    .line 192
    :cond_0
    new-instance p2, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {p2}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    .line 194
    :goto_0
    iput-object p2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 195
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 206
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method emit()V
    .locals 2

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 290
    iput-boolean v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 291
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emitLoop()V

    return-void

    :catchall_0
    move-exception v0

    .line 294
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 16

    move-object/from16 v1, p0

    .line 299
    iget-object v2, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 300
    iget-object v0, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 301
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v3

    .line 302
    iget-object v4, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :goto_0
    const-wide v7, 0x7fffffffffffffffL

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-nez v11, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 307
    :goto_1
    iget-boolean v8, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 308
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    .line 309
    invoke-virtual {v1, v8, v11, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_2
    cmp-long v8, v5, v11

    if-eqz v8, :cond_5

    .line 314
    iget-boolean v8, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 315
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 317
    :goto_3
    invoke-virtual {v1, v8, v9, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    :cond_3
    if-eqz v9, :cond_4

    goto :goto_4

    .line 323
    :cond_4
    invoke-virtual {v3, v15}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 325
    :try_start_0
    invoke-virtual {v2, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x1

    sub-long/2addr v5, v8

    sub-long/2addr v13, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 327
    invoke-static {v3, v2, v8}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_4
    cmp-long v8, v13, v11

    if-eqz v8, :cond_6

    if-nez v7, :cond_6

    .line 335
    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    .line 338
    :cond_6
    monitor-enter p0

    .line 339
    :try_start_1
    iget-boolean v7, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    if-nez v7, :cond_7

    .line 340
    iput-boolean v10, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 341
    monitor-exit p0

    return-void

    .line 343
    :cond_7
    iput-boolean v10, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 344
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    return-void
.end method

.method public request(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz v2, :cond_3

    .line 242
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-nez v0, :cond_1

    .line 246
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-nez v0, :cond_0

    .line 249
    iget-wide v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 250
    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 252
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 255
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    :cond_3
    return-void

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 267
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-nez v1, :cond_2

    .line 271
    iget-wide v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    :cond_0
    const-wide/16 v3, 0x0

    .line 277
    iput-wide v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 278
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 282
    invoke-interface {p1, v1, v2}, Lrx/Producer;->request(J)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    return-void

    .line 269
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set more than one Producer!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 279
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 263
    throw p1
.end method
