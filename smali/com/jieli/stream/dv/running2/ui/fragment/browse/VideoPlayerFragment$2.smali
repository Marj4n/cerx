.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->initPlayer()V
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

    .line 212
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 215
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;Z)Z

    return-void
.end method
