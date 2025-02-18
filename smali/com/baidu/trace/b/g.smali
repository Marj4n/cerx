.class public final Lcom/baidu/trace/b/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/g;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/b/g;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/trace/b/g;->c:Z

    iput-object v0, p0, Lcom/baidu/trace/b/g;->d:Ljava/io/DataInputStream;

    iput-object p1, p0, Lcom/baidu/trace/b/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/b/g;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/g;->c:Z

    return-void
.end method

.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/trace/b/g;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/trace/b/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/baidu/trace/b/a;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/b/g;->d:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/baidu/trace/ax;->a(Ljava/io/DataInputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/g;->d:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget-boolean v0, p0, Lcom/baidu/trace/b/g;->c:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/baidu/trace/b/g;->c:Z

    iget-object v0, p0, Lcom/baidu/trace/b/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/baidu/trace/b/g;->c:Z

    iget-object v0, p0, Lcom/baidu/trace/b/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    :goto_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    return-void
.end method
