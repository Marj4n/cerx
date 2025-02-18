.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;
.super Ljava/lang/Object;
.source "BrowseFileDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->controlDeleteDirDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$400(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "key_dir_path"

    .line 320
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->delete_dir_success:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->delete_dir_failed:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 331
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$400(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
