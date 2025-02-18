.class final Lcom/baidu/trace/ba;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/baidu/trace/c/f$a;


# direct methods
.method constructor <init>(Lcom/baidu/trace/c/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ba;->a:Lcom/baidu/trace/c/f$a;

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

    sget-object v0, Lcom/baidu/trace/c/f$a;->a:Lcom/baidu/trace/c/f$a;

    iget-object v1, p0, Lcom/baidu/trace/ba;->a:Lcom/baidu/trace/c/f$a;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/baidu/trace/az;->a:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/b/a;->e()V

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/f$a;->b:Lcom/baidu/trace/c/f$a;

    iget-object v1, p0, Lcom/baidu/trace/ba;->a:Lcom/baidu/trace/c/f$a;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/baidu/trace/az;->b:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/b/a;->e()V

    :cond_1
    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
