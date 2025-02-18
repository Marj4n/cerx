.class Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;
.super Lcom/jieli/lib/dv/control/player/OnDownloadListener;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$202(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;I)I

    .line 226
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$600(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    .line 227
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$900(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->updateNumberPb(I)V

    return-void
.end method

.method public onReceived(I[B)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$500(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string p2, "Write failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string v1, "start download"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$202(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;I)I

    .line 162
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;-><init>(Lcom/jieli/lib/dv/control/model/MediaInfo;)V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$302(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    .line 163
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$400(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->setFileType(I)V

    .line 164
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->prepare(Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$700(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$202(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;I)I

    .line 219
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$800(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    return-void
.end method
