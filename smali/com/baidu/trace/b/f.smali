.class public final Lcom/baidu/trace/b/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/f;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/b/f;->c:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/trace/b/f;->d:I

    iput-object p1, p0, Lcom/baidu/trace/b/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/b/f;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/b/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/b/f;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/trace/b/f;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/b/f;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/trace/b/f;)I
    .locals 0

    iget p0, p0, Lcom/baidu/trace/b/f;->d:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/f;->c:Z

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/baidu/trace/b/a;->e()V

    iget v0, p0, Lcom/baidu/trace/b/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/trace/b/f;->d:I

    const-wide/16 v0, 0x1770

    :try_start_0
    invoke-static {v0, v1}, Lcom/baidu/trace/b/f;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/trace/b/f;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/trace/b/e;

    invoke-direct {v0, p0}, Lcom/baidu/trace/b/e;-><init>(Lcom/baidu/trace/b/f;)V

    sget-object v1, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    invoke-static {v1, v0}, Lcom/baidu/trace/b/a;->a(Lcom/baidu/trace/b/a$a;Lcom/baidu/trace/b/e;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/f;->c:Z

    iget-object v0, p0, Lcom/baidu/trace/b/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    return-void
.end method
