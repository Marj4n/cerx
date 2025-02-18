.class final Lcom/baidu/trace/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

.field final synthetic b:Lcom/baidu/trace/api/track/OnTrackListener;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Lcom/baidu/trace/api/track/QueryCacheTrackRequest;

.field private synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/trace/api/track/QueryCacheTrackRequest;Lcom/baidu/trace/api/track/QueryCacheTrackResponse;Landroid/os/Handler;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/be;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/be;->d:Lcom/baidu/trace/api/track/QueryCacheTrackRequest;

    iput-object p3, p0, Lcom/baidu/trace/be;->a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    iput-object p4, p0, Lcom/baidu/trace/be;->e:Landroid/os/Handler;

    iput-object p5, p0, Lcom/baidu/trace/be;->b:Lcom/baidu/trace/api/track/OnTrackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/trace/be;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/be;->d:Lcom/baidu/trace/api/track/QueryCacheTrackRequest;

    invoke-virtual {v2}, Lcom/baidu/trace/api/track/QueryCacheTrackRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/trace/be;->a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    const/16 v2, 0x36b1

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/QueryCacheTrackResponse;->setStatus(I)V

    iget-object v1, p0, Lcom/baidu/trace/be;->a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/QueryCacheTrackResponse;->setMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/baidu/trace/be;->a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/track/QueryCacheTrackResponse;->setResult(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/trace/be;->e:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/trace/bf;

    invoke-direct {v1, p0}, Lcom/baidu/trace/bf;-><init>(Lcom/baidu/trace/be;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
