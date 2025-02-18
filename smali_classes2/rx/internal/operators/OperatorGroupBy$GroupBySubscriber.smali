.class public final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final s:Lrx/internal/producers/ProducerArbiter;

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;",
            "Lrx/functions/Func1<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 121
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 122
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 123
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    .line 124
    iput p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    .line 125
    iput-boolean p5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    .line 126
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    .line 127
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 128
    new-instance p1, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {p1}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    int-to-long p2, p4

    .line 129
    invoke-virtual {p1, p2, p3}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 130
    new-instance p1, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-direct {p1, p0}, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    .line 131
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 236
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    sget-object p1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    .line 245
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 246
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    :cond_1
    return-void
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0, p3, p4, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 328
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method drain()V
    .locals 15

    .line 253
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 260
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 264
    :cond_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 268
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-nez v9, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_1
    cmp-long v7, v4, v9

    if-eqz v7, :cond_7

    .line 273
    iget-boolean v7, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 275
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrx/observables/GroupedObservable;

    if-nez v13, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 279
    :goto_2
    invoke-virtual {p0, v7, v14, v1, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v7

    if-eqz v7, :cond_5

    return-void

    :cond_5
    if-eqz v14, :cond_6

    goto :goto_3

    .line 287
    :cond_6
    invoke-virtual {v1, v13}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    sub-long/2addr v4, v13

    sub-long/2addr v11, v13

    goto :goto_1

    :cond_7
    :goto_3
    cmp-long v4, v11, v9

    if-eqz v4, :cond_9

    if-nez v6, :cond_8

    .line 295
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 297
    :cond_8
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    neg-long v5, v11

    invoke-virtual {v4, v5, v6}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 300
    :cond_9
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 308
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 309
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 313
    invoke-virtual {v0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 215
    invoke-virtual {v1}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 220
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 221
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 204
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 205
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 149
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 153
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 161
    :cond_1
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    .line 162
    :goto_0
    iget-object v5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    if-nez v5, :cond_3

    .line 166
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    iget v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    invoke-static {v2, v3, p0, v5}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    move-result-object v5

    .line 168
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v3, 0x0

    .line 173
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    goto :goto_1

    :cond_2
    return-void

    .line 182
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {v5, p1}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 192
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 185
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 156
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestMore(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 229
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 230
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    return-void
.end method
