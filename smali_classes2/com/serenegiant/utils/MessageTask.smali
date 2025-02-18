.class public abstract Lcom/serenegiant/utils/MessageTask;
.super Ljava/lang/Object;
.source "MessageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/MessageTask$Request;,
        Lcom/serenegiant/utils/MessageTask$TaskBreak;
    }
.end annotation


# static fields
.field protected static final REQUEST_TASK_NON:I = 0x0

.field protected static final REQUEST_TASK_QUIT:I = -0x9

.field protected static final REQUEST_TASK_RUN:I = -0x1

.field protected static final REQUEST_TASK_RUN_AND_WAIT:I = -0x2

.field protected static final REQUEST_TASK_START:I = -0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mFinished:Z

.field private volatile mIsRunning:Z

.field private final mMaxRequest:I

.field private final mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/utils/MessageTask$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/serenegiant/utils/MessageTask$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/serenegiant/utils/MessageTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/utils/MessageTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 101
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 102
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 112
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 113
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/serenegiant/utils/MessageTask$Request;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/serenegiant/utils/MessageTask$Request;-><init>(Lcom/serenegiant/utils/MessageTask$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    .line 126
    iput p1, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 127
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 128
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/serenegiant/utils/MessageTask$Request;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/serenegiant/utils/MessageTask$Request;-><init>(Lcom/serenegiant/utils/MessageTask$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected callOnError(Ljava/lang/Exception;)Z
    .locals 0

    .line 314
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/MessageTask;->onError(Ljava/lang/Exception;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method protected init(IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 143
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, -0x8

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    return v0
.end method

.method protected obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$Request;

    if-eqz v0, :cond_0

    .line 333
    iput p1, v0, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    .line 334
    iput p2, v0, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    .line 335
    iput p3, v0, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    .line 336
    iput-object p4, v0, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lcom/serenegiant/utils/MessageTask$Request;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask$Request;-><init>(IIILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public offer(I)Z
    .locals 3

    .line 393
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v1, v2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public offer(II)Z
    .locals 3

    .line 384
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public offer(III)Z
    .locals 2

    .line 374
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public offer(IIILjava/lang/Object;)Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public offer(IILjava/lang/Object;)Z
    .locals 2

    .line 363
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public offer(ILjava/lang/Object;)Z
    .locals 2

    .line 403
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, v1, v1, p2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public offerAndWait(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 427
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    const/4 v0, -0x2

    .line 428
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p2

    .line 429
    monitor-enter p2

    .line 430
    :try_start_0
    iput p1, p2, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    .line 431
    iput-object v1, p2, Lcom/serenegiant/utils/MessageTask$Request;->result:Ljava/lang/Object;

    .line 432
    iget-object p1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 433
    :goto_0
    iget-boolean p1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz p1, :cond_0

    iget p1, p2, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const-wide/16 p3, 0x64

    .line 435
    :try_start_1
    invoke-virtual {p2, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    iget-object p1, p2, Lcom/serenegiant/utils/MessageTask$Request;->result:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 440
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    return-object v1
.end method

.method public offerFirst(IIILjava/lang/Object;)Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onBeforeStop()V
    .locals 0

    return-void
.end method

.method protected onError(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onInit(IILjava/lang/Object;)V
.end method

.method protected abstract onRelease()V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation
.end method

.method public queueEvent(Ljava/lang/Runnable;)Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/MessageTask;->offer(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/MessageTask;->release(Z)V

    return-void
.end method

.method public release(Z)V
    .locals 6

    .line 488
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    const/4 v1, 0x0

    .line 489
    iput-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 490
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 492
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v3, -0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v1, v4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_2

    .line 495
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 496
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 499
    iget-object p1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 501
    :catch_0
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 503
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 510
    :cond_2
    :try_start_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public releaseSelf()V
    .locals 4

    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 519
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 521
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v2, -0x9

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v0, v3}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRequest(I)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/utils/MessageTask$Request;

    .line 468
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 469
    :cond_1
    iget v2, v1, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    if-ne v2, p1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeRequest(Lcom/serenegiant/utils/MessageTask$Request;)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/utils/MessageTask$Request;

    .line 458
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {v1, p1}, Lcom/serenegiant/utils/MessageTask$Request;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/utils/MessageTask$Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    iput-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 210
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    move-object v3, v1

    .line 212
    :goto_0
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 213
    :try_start_1
    iget-boolean v5, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v5, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :try_start_2
    iget v5, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    iget-object v3, v3, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6, v3}, Lcom/serenegiant/utils/MessageTask;->onInit(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v3

    .line 218
    :try_start_3
    sget-object v5, Lcom/serenegiant/utils/MessageTask;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    iput-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 220
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 223
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 225
    iget-boolean v3, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 227
    :try_start_4
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onStart()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 229
    invoke-virtual {p0, v3}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    iput-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 231
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 235
    :cond_1
    :goto_2
    iget-boolean v3, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v3, :cond_5

    .line 237
    :try_start_5
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->takeRequest()Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object v3

    .line 238
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$Request;->request:I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7

    const/16 v5, -0x9

    if-eq v4, v5, :cond_5

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    if-eqz v4, :cond_4

    .line 266
    :try_start_6
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    iget v5, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    iget-object v7, v3, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/serenegiant/utils/MessageTask;->processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/serenegiant/utils/MessageTask$TaskBreak; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_3

    :catch_3
    move-exception v4

    .line 270
    :try_start_7
    invoke-virtual {p0, v4}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 244
    :cond_2
    iget-object v4, v3, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Runnable;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v4, :cond_4

    .line 246
    :try_start_8
    iget-object v4, v3, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_4
    move-exception v4

    .line 248
    :try_start_9
    invoke-virtual {p0, v4}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v4, :cond_4

    goto :goto_4

    .line 254
    :cond_3
    :try_start_a
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    iget v5, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    iget-object v7, v3, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/serenegiant/utils/MessageTask;->processRequest(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/serenegiant/utils/MessageTask$Request;->setResult(Ljava/lang/Object;)V
    :try_end_a
    .catch Lcom/serenegiant/utils/MessageTask$TaskBreak; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_3

    :catch_5
    move-exception v4

    .line 259
    :try_start_b
    invoke-virtual {v3, v1}, Lcom/serenegiant/utils/MessageTask$Request;->setResult(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0, v4}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 275
    :cond_4
    :goto_3
    iput v2, v3, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    iput v2, v3, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    .line 277
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 256
    :catch_6
    invoke-virtual {v3, v1}, Lcom/serenegiant/utils/MessageTask$Request;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7

    .line 282
    :catch_7
    :cond_5
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 283
    iget-object v5, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 284
    :try_start_c
    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    .line 285
    iput-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 286
    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 287
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v3, :cond_6

    .line 290
    :try_start_d
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onBeforeStop()V

    .line 291
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onStop()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_5

    :catch_8
    move-exception v0

    .line 293
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    .line 297
    :cond_6
    :goto_5
    :try_start_e
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onRelease()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 301
    :catch_9
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_f
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 287
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 224
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0
.end method

.method protected takeRequest()Lcom/serenegiant/utils/MessageTask$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$Request;

    return-object v0
.end method

.method public userBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/serenegiant/utils/MessageTask$TaskBreak;

    invoke-direct {v0}, Lcom/serenegiant/utils/MessageTask$TaskBreak;-><init>()V

    throw v0
.end method

.method public waitReady()Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catch_0
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
