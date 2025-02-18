.class Lcom/gizthon/camera/view/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 529
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 531
    invoke-static {}, Lcom/gizthon/camera/view/IjkVideoView;->access$1700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1102(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 533
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$1302(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 534
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1900(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 540
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Lcom/gizthon/camera/view/IjkVideoView;->access$1900(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    iget-object v1, v1, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 551
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$6;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->getResources()Landroid/content/res/Resources;

    :cond_2
    return v0
.end method
