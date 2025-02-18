.class final Lcom/baidu/trace/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/baidu/trace/be;


# direct methods
.method constructor <init>(Lcom/baidu/trace/be;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bf;->a:Lcom/baidu/trace/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/bf;->a:Lcom/baidu/trace/be;

    iget-object v0, v0, Lcom/baidu/trace/be;->b:Lcom/baidu/trace/api/track/OnTrackListener;

    iget-object v1, p0, Lcom/baidu/trace/bf;->a:Lcom/baidu/trace/be;

    iget-object v1, v1, Lcom/baidu/trace/be;->a:Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/api/track/OnTrackListener;->onQueryCacheTrackCallback(Lcom/baidu/trace/api/track/QueryCacheTrackResponse;)V

    return-void
.end method
