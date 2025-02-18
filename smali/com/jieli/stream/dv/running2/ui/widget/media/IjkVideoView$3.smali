.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5

    .line 470
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$602(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;J)J

    .line 471
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$800(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->updateLoadCost(J)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$902(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 479
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setEnabled(Z)V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$102(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 486
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$202(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 488
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 490
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 496
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 497
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 498
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 503
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    .line 504
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 505
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    goto :goto_0

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    .line 508
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_8

    .line 509
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 511
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 519
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 520
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    :cond_8
    :goto_0
    return-void
.end method
