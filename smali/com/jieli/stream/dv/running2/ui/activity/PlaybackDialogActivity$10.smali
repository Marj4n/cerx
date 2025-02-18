.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio(II[BJJ)V
    .locals 0

    .line 645
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 646
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write audio failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 693
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    new-instance p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$1;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;)V

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;

    invoke-direct {v0, p0, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file end-------"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "finish-------"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 678
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 680
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    .line 681
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 682
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->play_over:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onBackPressed()V

    goto :goto_0

    .line 671
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pause-------"

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_playback_play:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 673
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 666
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "playing-------"

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_playback_pause:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 668
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 654
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "prepare-------"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 657
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 660
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    const-string v0, "tcp://127.0.0.1:5678"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpdate(Lcom/jieli/lib/dv/control/model/MediaInfo;)V
    .locals 0

    return-void
.end method

.method public onVideo(II[BJJ)V
    .locals 0

    .line 637
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2208(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)I

    .line 638
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 639
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write video failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
