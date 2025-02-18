.class final Lcom/baidu/trace/bd$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/baidu/trace/bd;


# direct methods
.method private constructor <init>(Lcom/baidu/trace/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/trace/bd;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/trace/bd$b;-><init>(Lcom/baidu/trace/bd;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->b(Lcom/baidu/trace/bd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/trace/bd;->a(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    iget-object v0, v0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->d(Lcom/baidu/trace/bd;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/baidu/trace/ar;->b:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/trace/bd;->a(Lcom/baidu/trace/bd;J)J

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    iget-object v0, v0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    invoke-virtual {v0}, Lcom/baidu/trace/ar;->a()V

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->a(Lcom/baidu/trace/bd;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->e(Lcom/baidu/trace/bd;)I

    sget-object v0, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v3}, Lcom/baidu/trace/bd;->f(Lcom/baidu/trace/bd;)I

    move-result v3

    sget v4, Lcom/baidu/trace/ar;->b:I

    mul-int v3, v3, v4

    const v4, 0xea60

    if-eq v4, v3, :cond_2

    sget v3, Lcom/baidu/trace/ar;->b:I

    div-int/2addr v4, v3

    if-lt v0, v4, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0, v2}, Lcom/baidu/trace/bd;->a(Lcom/baidu/trace/bd;I)I

    invoke-static {v2}, Lcom/baidu/trace/bd;->a(Z)V

    invoke-static {v2}, Lcom/baidu/trace/am;->a(Z)V

    sput-boolean v1, Lcom/baidu/trace/bd;->g:Z

    sput-boolean v1, Lcom/baidu/trace/bd;->h:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0, v2}, Lcom/baidu/trace/bd;->a(Lcom/baidu/trace/bd;I)I

    :cond_4
    :goto_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->g(Lcom/baidu/trace/bd;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/baidu/trace/bd;->b(Lcom/baidu/trace/bd;J)J

    :cond_5
    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->g(Lcom/baidu/trace/bd;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x384

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->h(Lcom/baidu/trace/bd;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/baidu/trace/bd;->b(Lcom/baidu/trace/bd;J)J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.trace.action.SOCKET_RECONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v1}, Lcom/baidu/trace/bd;->h(Lcom/baidu/trace/bd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->i(Lcom/baidu/trace/bd;)Lcom/baidu/trace/bd$a;

    move-result-object v0

    sget v1, Lcom/baidu/trace/bd;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/trace/bd$a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->b(Lcom/baidu/trace/bd;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0, v2}, Lcom/baidu/trace/bd;->a(Lcom/baidu/trace/bd;I)I

    invoke-static {v1}, Lcom/baidu/trace/bd;->a(Z)V

    invoke-static {}, Lcom/baidu/trace/bd;->e()I

    move-result v0

    sget v1, Lcom/baidu/trace/bd;->b:I

    sget-boolean v2, Lcom/baidu/trace/bd;->g:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/baidu/trace/bd;->d:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/baidu/trace/bd;->h:Z

    if-eqz v2, :cond_9

    :cond_8
    const/16 v1, 0x7d0

    :cond_9
    sget v2, Lcom/baidu/trace/bd;->i:I

    sget v3, Lcom/baidu/trace/ar;->b:I

    div-int/2addr v2, v3

    if-ge v0, v2, :cond_d

    sget-boolean v2, Lcom/baidu/trace/bd;->d:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/baidu/trace/bd;->h:Z

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v4}, Lcom/baidu/trace/bd;->m(Lcom/baidu/trace/bd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/baidu/trace/bd;->i:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_c

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/baidu/trace/bd;->d(Lcom/baidu/trace/bd;J)J

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->j(Lcom/baidu/trace/bd;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->k(Lcom/baidu/trace/bd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-byte v0, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_f

    goto :goto_1

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->k(Lcom/baidu/trace/bd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-byte v0, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_f

    :goto_1
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;J)J

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->l(Lcom/baidu/trace/bd;)V

    goto :goto_3

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->j(Lcom/baidu/trace/bd;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->k(Lcom/baidu/trace/bd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-byte v0, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;J)J

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->l(Lcom/baidu/trace/bd;)V

    :cond_e
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/trace/bd;->d(Lcom/baidu/trace/bd;J)J

    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->i(Lcom/baidu/trace/bd;)Lcom/baidu/trace/bd$a;

    move-result-object v0

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/trace/bd$a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    iget-boolean v0, v0, Lcom/baidu/trace/bd;->e:Z

    if-eqz v0, :cond_18

    invoke-static {v1}, Lcom/baidu/trace/bd;->a(Z)V

    invoke-static {}, Lcom/baidu/trace/bd;->e()I

    move-result v0

    const/16 v1, 0x8d

    if-gtz v0, :cond_13

    sget-boolean v3, Lcom/baidu/trace/bd;->h:Z

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    const/16 v0, 0xc

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcom/baidu/trace/ax;->a(SI)[B

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->h(Lcom/baidu/trace/bd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/baidu/trace/b/a;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    sput v1, Lcom/baidu/trace/bd;->f:I

    iget-object v1, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v1}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/az;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v1}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/trace/b/a;->a([BLandroid/os/Handler;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_13
    :goto_4
    iget-object v3, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v3}, Lcom/baidu/trace/bd;->h(Lcom/baidu/trace/bd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/baidu/trace/b/a;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->j(Lcom/baidu/trace/bd;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->l(Lcom/baidu/trace/bd;)V

    :cond_14
    iget-object v0, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v0}, Lcom/baidu/trace/bd;->i(Lcom/baidu/trace/bd;)Lcom/baidu/trace/bd$a;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/trace/bd$a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_15
    invoke-static {v2}, Lcom/baidu/trace/am;->a(Z)V

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/baidu/trace/bd$b;->a:Lcom/baidu/trace/bd;

    invoke-static {v2}, Lcom/baidu/trace/bd;->c(Lcom/baidu/trace/bd;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-gtz v0, :cond_17

    sget-boolean v0, Lcom/baidu/trace/bd;->h:Z

    if-eqz v0, :cond_16

    goto :goto_5

    :cond_16
    iput v1, v2, Landroid/os/Message;->arg1:I

    goto :goto_6

    :cond_17
    :goto_5
    const/16 v0, 0x8f

    iput v0, v2, Landroid/os/Message;->arg1:I

    :goto_6
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    :goto_7
    return-void
.end method
