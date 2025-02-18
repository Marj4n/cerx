.class Lcom/serenegiant/media/MediaMoviePlayer$3;
.super Ljava/lang/Object;
.source "MediaMoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaMoviePlayer;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$100(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1600(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1700(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1600(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1800(Lcom/serenegiant/media/MediaMoviePlayer;)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1700(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1400(Lcom/serenegiant/media/MediaMoviePlayer;)Lcom/serenegiant/media/IFrameCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1900(Lcom/serenegiant/media/MediaMoviePlayer;Lcom/serenegiant/media/IFrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$900(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoTask:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 402
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1702(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1602(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z

    .line 403
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$3;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
