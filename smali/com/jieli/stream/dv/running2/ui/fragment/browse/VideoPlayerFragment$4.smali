.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 256
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "onPrepared is ok! start playing."

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    .line 258
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    .line 259
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$902(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;Z)Z

    .line 263
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;Z)Z

    return-void
.end method
