.class Lcom/gizthon/camera/view/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 396
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 398
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$302(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 399
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p2, p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$402(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 400
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result p3

    invoke-static {p2, p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$902(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 401
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result p1

    invoke-static {p2, p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1002(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 402
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p2}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 405
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p2}, Lcom/gizthon/camera/view/IjkVideoView;->access$900(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$1000(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$2;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->requestLayout()V

    :cond_1
    return-void
.end method
