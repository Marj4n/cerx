.class public Lcom/baidu/trace/b/e;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/trace/b/f;


# direct methods
.method constructor <init>(Lcom/baidu/trace/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/trace/b/f;->a(Lcom/baidu/trace/b/f;Z)Z

    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    invoke-static {v0}, Lcom/baidu/trace/b/f;->a(Lcom/baidu/trace/b/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    invoke-static {v0}, Lcom/baidu/trace/b/f;->b(Lcom/baidu/trace/b/f;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    invoke-virtual {v0}, Lcom/baidu/trace/b/f;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/trace/b/f;->a(Lcom/baidu/trace/b/f;Z)Z

    iget-object v0, p0, Lcom/baidu/trace/b/e;->a:Lcom/baidu/trace/b/f;

    invoke-static {v0}, Lcom/baidu/trace/b/f;->a(Lcom/baidu/trace/b/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
