.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->startLocalRecording()V
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

    .line 522
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    .line 531
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->record_success:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    .line 554
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->record_fail:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1702(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    .line 557
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Z)Z

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Z)Z

    .line 526
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Record onStop"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Z)Z

    .line 538
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    return-void
.end method
