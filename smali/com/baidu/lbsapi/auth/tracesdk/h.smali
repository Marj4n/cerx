.class Lcom/baidu/lbsapi/auth/tracesdk/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/h;->a:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "handleMessage !!"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listenerKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;

    sget-boolean v1, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
