.class final Lcom/baidu/trace/bb;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bb;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget v0, Lcom/baidu/trace/bd;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/bb;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/bd;->f:I

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
