.class Lcom/gizthon/camera/view/IjkVideoView$4;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    .line 464
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 466
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1102(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 467
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1302(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 468
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1500(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1500(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$4;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object v0, v0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_1
    return-void
.end method
