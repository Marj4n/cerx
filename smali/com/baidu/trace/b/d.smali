.class public final Lcom/baidu/trace/b/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/b/d$a;
    }
.end annotation


# static fields
.field private static k:I = -0x80000000

.field private static l:Z = false

.field private static m:J


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Lcom/baidu/trace/b/f;

.field private g:Lcom/baidu/trace/b/h;

.field private h:Lcom/baidu/trace/b/g;

.field private i:Lcom/baidu/trace/am;

.field private j:Lcom/baidu/trace/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->a:Z

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->b:Z

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->h:Lcom/baidu/trace/b/g;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->i:Lcom/baidu/trace/am;

    iput-object v0, p0, Lcom/baidu/trace/b/d;->j:Lcom/baidu/trace/b/i;

    return-void
.end method

.method public static a()Lcom/baidu/trace/b/d;
    .locals 1

    invoke-static {}, Lcom/baidu/trace/b/d$a;->a()Lcom/baidu/trace/b/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/baidu/trace/b/d;->m:J

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/baidu/trace/b/d;->l:Z

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    sget v0, Lcom/baidu/trace/b/d;->k:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "current network is not available"

    const-string v1, "BaiduTraceSDK"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    invoke-static {v1, v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {v1, v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :goto_0
    throw p0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/baidu/trace/b/d;->k:I

    return-void
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/trace/b/d;->l:Z

    return v0
.end method

.method public static i()J
    .locals 2

    sget-wide v0, Lcom/baidu/trace/b/d;->m:J

    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/baidu/trace/b/d;->e:Landroid/content/Context;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/trace/b/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->c:Z

    iget-object v0, p0, Lcom/baidu/trace/b/d;->i:Lcom/baidu/trace/am;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->i:Lcom/baidu/trace/am;

    :cond_1
    new-instance v0, Lcom/baidu/trace/am;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/baidu/trace/am;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->i:Lcom/baidu/trace/am;

    invoke-virtual {v0}, Lcom/baidu/trace/am;->start()V

    return-void
.end method

.method public final a([BLcom/baidu/trace/c/f$a;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/b/d;->j:Lcom/baidu/trace/b/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->j:Lcom/baidu/trace/b/i;

    :cond_0
    new-instance v0, Lcom/baidu/trace/b/i;

    iget-object v1, p0, Lcom/baidu/trace/b/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/baidu/trace/b/i;-><init>(Landroid/content/Context;Landroid/os/Handler;[BLcom/baidu/trace/c/f$a;)V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->j:Lcom/baidu/trace/b/i;

    invoke-virtual {v0}, Lcom/baidu/trace/b/i;->start()V

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->j:Lcom/baidu/trace/b/i;

    iget-boolean v1, p0, Lcom/baidu/trace/b/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/baidu/trace/b/d;->a:Z

    iget-object v1, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/trace/b/f;->a()V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/trace/b/d;->b:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/baidu/trace/b/d;->b:Z

    iget-object v0, p0, Lcom/baidu/trace/b/d;->h:Lcom/baidu/trace/b/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/trace/b/g;->a()V

    :cond_1
    invoke-static {}, Lcom/baidu/trace/b/a;->e()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/trace/b/d;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->a:Z

    iget-object v0, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    :cond_1
    new-instance v0, Lcom/baidu/trace/b/f;

    iget-object v1, p0, Lcom/baidu/trace/b/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/b/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->f:Lcom/baidu/trace/b/f;

    invoke-virtual {v0}, Lcom/baidu/trace/b/f;->start()V

    return-void
.end method

.method protected final d()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    :cond_0
    new-instance v0, Lcom/baidu/trace/b/h;

    iget-object v1, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/trace/b/h;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    invoke-virtual {v0}, Lcom/baidu/trace/b/h;->start()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/b/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/d;->g:Lcom/baidu/trace/b/h;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/b/d;->c:Z

    return-void
.end method

.method public final g()Z
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/trace/b/d;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/baidu/trace/b/a;->b()Lcom/baidu/trace/b/b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iput-boolean v1, p0, Lcom/baidu/trace/b/d;->b:Z

    new-instance v0, Lcom/baidu/trace/b/g;

    iget-object v2, p0, Lcom/baidu/trace/b/d;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/trace/b/d;->d:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/baidu/trace/b/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/trace/b/d;->h:Lcom/baidu/trace/b/g;

    invoke-virtual {v0}, Lcom/baidu/trace/b/g;->start()V

    return v1
.end method
