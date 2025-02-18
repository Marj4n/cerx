.class Lcom/gizthon/camera/view/IjkVideoView$7;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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

    .line 580
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView$7;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$7;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0, p2}, Lcom/gizthon/camera/view/IjkVideoView;->access$2002(Lcom/gizthon/camera/view/IjkVideoView;I)I

    .line 583
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$7;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$2100(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView$7;->this$0:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {v0}, Lcom/gizthon/camera/view/IjkVideoView;->access$2100(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method
