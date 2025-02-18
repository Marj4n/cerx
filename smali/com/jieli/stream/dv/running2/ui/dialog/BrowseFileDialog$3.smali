.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;
.super Ljava/lang/Object;
.source "BrowseFileDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->onClick(Landroid/view/View;)V
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

    .line 216
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->create_dir_success:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$202(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
