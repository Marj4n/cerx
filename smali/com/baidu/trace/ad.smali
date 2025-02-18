.class final Lcom/baidu/trace/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/os/Handler;

.field private synthetic c:Lcom/baidu/trace/api/fence/DeleteFenceRequest;

.field private synthetic d:Lcom/baidu/trace/api/fence/OnFenceListener;

.field private synthetic e:Lcom/baidu/trace/IService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/IService;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ad;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/ad;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/trace/ad;->c:Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    iput-object p4, p0, Lcom/baidu/trace/ad;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    iput-object p5, p0, Lcom/baidu/trace/ad;->e:Lcom/baidu/trace/IService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/baidu/trace/ad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/ad;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/trace/ad;->c:Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    iget-object v4, p0, Lcom/baidu/trace/ad;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/fence/OnFenceListener;)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/trace/ad;->e:Lcom/baidu/trace/IService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/trace/ad;->c:Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    invoke-virtual {v2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/trace/ad;->c:Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    invoke-virtual {v2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/ad;->e:Lcom/baidu/trace/IService;

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/baidu/trace/IService;->handleLocalFence(IJLjava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/ad;->e:Lcom/baidu/trace/IService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/baidu/trace/IService;->handleLocalFence(IJLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
