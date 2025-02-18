.class final Lcom/baidu/trace/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/baidu/trace/bg;


# direct methods
.method constructor <init>(Lcom/baidu/trace/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bh;->a:Lcom/baidu/trace/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/bh;->a:Lcom/baidu/trace/bg;

    iget-object v0, v0, Lcom/baidu/trace/bg;->b:Lcom/baidu/trace/api/track/OnTrackListener;

    iget-object v1, p0, Lcom/baidu/trace/bh;->a:Lcom/baidu/trace/bg;

    iget-object v1, v1, Lcom/baidu/trace/bg;->a:Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/api/track/OnTrackListener;->onClearCacheTrackCallback(Lcom/baidu/trace/api/track/ClearCacheTrackResponse;)V

    return-void
.end method
