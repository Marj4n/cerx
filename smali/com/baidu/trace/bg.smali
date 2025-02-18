.class final Lcom/baidu/trace/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

.field final synthetic b:Lcom/baidu/trace/api/track/OnTrackListener;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/util/List;

.field private synthetic e:Ljava/util/List;

.field private synthetic f:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/baidu/trace/api/track/ClearCacheTrackResponse;Landroid/os/Handler;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bg;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/bg;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/baidu/trace/bg;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/baidu/trace/bg;->a:Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

    iput-object p5, p0, Lcom/baidu/trace/bg;->f:Landroid/os/Handler;

    iput-object p6, p0, Lcom/baidu/trace/bg;->b:Lcom/baidu/trace/api/track/OnTrackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/bg;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/bg;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/trace/bg;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/bg;->a:Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

    const/16 v1, 0x36b1

    invoke-virtual {v0, v1}, Lcom/baidu/trace/api/track/ClearCacheTrackResponse;->setStatus(I)V

    iget-object v0, p0, Lcom/baidu/trace/bg;->a:Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/baidu/trace/api/track/ClearCacheTrackResponse;->setMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/bg;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/trace/bh;

    invoke-direct {v1, p0}, Lcom/baidu/trace/bh;-><init>(Lcom/baidu/trace/bg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
