.class Lcom/gizthon/camera/view/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;


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

    .line 326
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 0

    .line 329
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p2}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1, p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$102(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 334
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1, p4}, Lcom/gizthon/camera/view/IjkVideoView;->access$202(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 336
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$300(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$400(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-ne p1, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 337
    :goto_1
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object p2, p2, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 338
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$500(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 339
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$500(Lcom/gizthon/camera/view/IjkVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gizthon/camera/view/IjkVideoView;->seekTo(I)V

    :cond_3
    return-void
.end method

.method public onSurfaceCreated(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 0

    .line 346
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p2

    iget-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p3}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p3

    if-eq p2, p3, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p2, p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$602(Lcom/gizthon/camera/view/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 351
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object p2, p2, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz p2, :cond_1

    .line 352
    iget-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object p3, p2, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {p2, p3, p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$700(Lcom/gizthon/camera/view/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$800(Lcom/gizthon/camera/view/IjkVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1

    .line 360
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$602(Lcom/gizthon/camera/view/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 366
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$1;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->releaseWithoutStop()V

    return-void
.end method
