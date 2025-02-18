.class Lcom/gizthon/camera/view/PlayerMediaController$2;
.super Ljava/lang/Object;
.source "PlayerMediaController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/view/PlayerMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/view/PlayerMediaController;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/view/PlayerMediaController;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-virtual {v1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->posCallBack(I)V

    .line 281
    :cond_1
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$600(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$300(Lcom/gizthon/camera/view/PlayerMediaController;)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$400(Lcom/gizthon/camera/view/PlayerMediaController;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$100(Lcom/gizthon/camera/view/PlayerMediaController;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 273
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$600(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/os/Handler;

    move-result-object v1

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$200(Lcom/gizthon/camera/view/PlayerMediaController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 267
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$2;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->hide()V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
