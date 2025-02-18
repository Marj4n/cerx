.class public final Lcom/baidu/trace/b/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.baidu.trace.action.SOCKET_RECONNECT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    invoke-static {}, Lcom/baidu/trace/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/trace/b/d;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Z)V

    :cond_2
    invoke-static {p2}, Lcom/baidu/trace/b/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/baidu/trace/b/d;->h()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Lcom/baidu/trace/b/d;->b(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/baidu/trace/b/d;->a(Z)V

    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/baidu/trace/b/d;->a(J)V

    invoke-static {}, Lcom/baidu/trace/b/d;->a()Lcom/baidu/trace/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/trace/b/d;->d()V

    :cond_4
    return-void

    :cond_5
    const/high16 p1, -0x80000000

    invoke-static {p1}, Lcom/baidu/trace/b/d;->b(I)V

    :cond_6
    :goto_0
    return-void
.end method
