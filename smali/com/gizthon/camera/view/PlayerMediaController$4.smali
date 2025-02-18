.class Lcom/gizthon/camera/view/PlayerMediaController$4;
.super Ljava/lang/Object;
.source "PlayerMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 447
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    .line 473
    div-long/2addr v0, p1

    .line 474
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    iget-object p1, p1, Lcom/gizthon/camera/view/PlayerMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 475
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    iget-object p1, p1, Lcom/gizthon/camera/view/PlayerMediaController;->mCurrentTime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    long-to-int p3, v0

    invoke-static {p2, p3}, Lcom/gizthon/camera/view/PlayerMediaController;->access$800(Lcom/gizthon/camera/view/PlayerMediaController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 450
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    .line 455
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$402(Lcom/gizthon/camera/view/PlayerMediaController;Z)Z

    .line 462
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$600(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 481
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 482
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 483
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 484
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->access$402(Lcom/gizthon/camera/view/PlayerMediaController;Z)Z

    .line 485
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$300(Lcom/gizthon/camera/view/PlayerMediaController;)I

    .line 486
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$900(Lcom/gizthon/camera/view/PlayerMediaController;)V

    .line 487
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$700(Lcom/gizthon/camera/view/PlayerMediaController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    .line 492
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$4;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$600(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
