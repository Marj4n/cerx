.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnProgressListener;


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

    .line 598
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "===onFinish"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->addEndPointOverlay(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: mediaInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 604
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 605
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
