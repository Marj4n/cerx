.class public final Lcom/baidu/trace/b/h;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/b/h;->b:Z

    iput-object p1, p0, Lcom/baidu/trace/b/h;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/h;->b:Z

    return-void
.end method

.method public final run()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x3a98

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

    iget-object v0, p0, Lcom/baidu/trace/b/h;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/trace/b/h;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
