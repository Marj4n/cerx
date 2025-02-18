.class public final Lcom/baidu/trace/b/i;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:[B

.field private d:Lcom/baidu/trace/c/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;[BLcom/baidu/trace/c/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/i;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/b/i;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/trace/b/i;->c:[B

    iput-object v0, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    iput-object p1, p0, Lcom/baidu/trace/b/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/b/i;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/trace/b/i;->c:[B

    iput-object p4, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/trace/b/i;->c:[B

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/trace/c/f$a;->a:Lcom/baidu/trace/c/f$a;

    iget-object v1, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/az;->a:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/f$a;->b:Lcom/baidu/trace/c/f$a;

    iget-object v1, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/az;->b:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/trace/b/i;->d:Lcom/baidu/trace/c/f$a;

    invoke-static {v0}, Lcom/baidu/trace/az;->a(Lcom/baidu/trace/c/f$a;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/trace/b/i;->c:[B

    iget-object v1, p0, Lcom/baidu/trace/b/i;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/trace/b/a;->a([BLandroid/os/Handler;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/i;->c:[B

    return-void

    :cond_4
    iget-object v0, p0, Lcom/baidu/trace/b/i;->b:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
