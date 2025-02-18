.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 451
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 453
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$102(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 454
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$202(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 455
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$302(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 456
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$402(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 457
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 460
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestLayout()V

    :cond_1
    return-void
.end method
