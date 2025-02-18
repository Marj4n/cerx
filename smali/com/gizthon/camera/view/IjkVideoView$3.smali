.class Lcom/gizthon/camera/view/IjkVideoView$3;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/view/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/view/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/view/IjkVideoView;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1102(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 416
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setEnabled(Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gizthon/camera/view/IjkVideoView;->access$302(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 420
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$402(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 422
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$500(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/view/IjkVideoView;->seekTo(I)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 430
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v2}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v3}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 431
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v2}, Lcom/gizthon/camera/view/IjkVideoView;->access$900(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v3}, Lcom/gizthon/camera/view/IjkVideoView;->access$1000(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 432
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$100(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v2}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$200(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v2}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 438
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 439
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {v0}, Lcom/gizthon/camera/view/IjkVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    .line 442
    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_6

    .line 443
    :cond_4
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 445
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 453
    :cond_5
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 454
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->start()V

    .line 457
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1400(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 458
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1400(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$3;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object v0, v0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_7
    return-void
.end method
