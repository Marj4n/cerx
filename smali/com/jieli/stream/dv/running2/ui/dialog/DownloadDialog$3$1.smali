.class Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->record_success:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->record_fail:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$600(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$502(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Z)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string v1, "Record onStop"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
