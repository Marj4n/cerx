.class final Lcom/baidu/trace/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/os/Handler;

.field private synthetic c:Lcom/baidu/trace/api/fence/CreateFenceRequest;

.field private synthetic d:Lcom/baidu/trace/api/fence/OnFenceListener;

.field private synthetic e:Lcom/baidu/trace/IService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/CreateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/IService;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/ab;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/trace/ab;->c:Lcom/baidu/trace/api/fence/CreateFenceRequest;

    iput-object p4, p0, Lcom/baidu/trace/ab;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    iput-object p5, p0, Lcom/baidu/trace/ab;->e:Lcom/baidu/trace/IService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/trace/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/ab;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/trace/ab;->c:Lcom/baidu/trace/api/fence/CreateFenceRequest;

    invoke-virtual {v2}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getTag()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/trace/ab;->c:Lcom/baidu/trace/api/fence/CreateFenceRequest;

    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/trace/ab;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;ILcom/baidu/trace/api/fence/Fence;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/ab;->e:Lcom/baidu/trace/IService;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/trace/ab;->c:Lcom/baidu/trace/api/fence/CreateFenceRequest;

    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/Fence;->getFenceId()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/baidu/trace/IService;->handleLocalFence(IJLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
