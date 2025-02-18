.class final Lcom/serenegiant/media/Recorder$EosHandler$EosThread;
.super Ljava/lang/Thread;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/Recorder$EosHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EosThread"
.end annotation


# instance fields
.field private mHandler:Lcom/serenegiant/media/Recorder$EosHandler;

.field private mIsReady:Z

.field private final mSync:Ljava/lang/Object;

.field private final mWeakRecorder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/media/Recorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/Recorder;)V
    .locals 1

    const-string v0, "EosThread"

    .line 575
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mIsReady:Z

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mWeakRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)Lcom/serenegiant/media/Recorder$EosHandler;
    .locals 0

    .line 567
    invoke-direct {p0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->getHandler()Lcom/serenegiant/media/Recorder$EosHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mWeakRecorder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;Lcom/serenegiant/media/Recorder;)Z
    .locals 0

    .line 567
    invoke-direct {p0, p1}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->check(Lcom/serenegiant/media/Recorder;)Z

    move-result p0

    return p0
.end method

.method private check(Lcom/serenegiant/media/Recorder;)Z
    .locals 0

    .line 608
    invoke-virtual {p1}, Lcom/serenegiant/media/Recorder;->check()Z

    move-result p1

    return p1
.end method

.method private final getHandler()Lcom/serenegiant/media/Recorder$EosHandler;
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 583
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 588
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    iget-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 588
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 594
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 595
    iget-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    new-instance v1, Lcom/serenegiant/media/Recorder$EosHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/serenegiant/media/Recorder$EosHandler;-><init>(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;Lcom/serenegiant/media/Recorder$1;)V

    iput-object v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    const/4 v1, 0x1

    .line 597
    iput-boolean v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mIsReady:Z

    .line 598
    iget-object v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 599
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 600
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 601
    iget-object v1, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 602
    :try_start_1
    iput-boolean v0, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mIsReady:Z

    .line 603
    iput-object v2, p0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->mHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    .line 604
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 599
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
