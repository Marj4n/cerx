.class Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private busy:Z

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private missed:Z

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile terminalNotification:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Notification<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 79
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    return-void
.end method

.method private decrementRequested()V
    .locals 6

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    .line 125
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private drain()V
    .locals 7

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 136
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    iget-object v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 149
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_1
    return-void

    .line 160
    :cond_2
    monitor-enter p0

    .line 161
    :try_start_1
    iget-boolean v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 138
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 100
    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 101
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 107
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 108
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->decrementRequested()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    return-void
.end method

.method requestMore(J)V
    .locals 1

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 94
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    .line 95
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method
