.class public Lcom/jieli/stream/dv/running2/task/HeartbeatTask;
.super Ljava/lang/Thread;
.source "HeartbeatTask.java"


# static fields
.field private static final DEFAULT_HEARTBEAT_PERIOD:I = 0x1388

.field public static final DEFAULT_HEARTBEAT_TIMEOUT:I = 0x6


# instance fields
.field private isHeartbeatTaskRunning:Z

.field private mContextWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mPeriod:J

.field private mTimeout:I

.field private mTimeoutCount:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    const/4 v1, 0x6

    .line 20
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeout:I

    const-wide/16 v1, 0x1388

    .line 21
    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mPeriod:J

    .line 30
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/task/HeartbeatTask;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->tag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getPeriod()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mPeriod:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .line 55
    iget v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isHeartbeatTaskRunning()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    return v0
.end method

.method public resetTimeoutCount()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    return-void
.end method

.method public run()V
    .locals 4

    .line 68
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    .line 72
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->tag:Ljava/lang/String;

    const-string v3, "HeartbeatTask: start"

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    if-eqz v2, :cond_2

    .line 74
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v3, Lcom/jieli/stream/dv/running2/task/HeartbeatTask$1;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask$1;-><init>(Lcom/jieli/stream/dv/running2/task/HeartbeatTask;)V

    invoke-virtual {v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToKeepAlive(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 83
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mPeriod:J

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 85
    iget v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    .line 86
    iget v3, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeout:I

    if-le v2, v3, :cond_0

    .line 87
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jieli.dv.running2_connection_timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->tag:Ljava/lang/String;

    const-string v1, "HeartbeatTask: over time"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartbeatTask ending..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPeriodAndTimeout(JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    if-gtz p3, :cond_1

    const/4 p3, 0x6

    .line 46
    :cond_1
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mPeriod:J

    .line 47
    iput p3, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeout:I

    return-void
.end method

.method public stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning:Z

    .line 38
    iput v0, p0, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->mTimeoutCount:I

    return-void
.end method
