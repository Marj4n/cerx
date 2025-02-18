.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;
.super Ljava/lang/Object;
.source "BrowseFileDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;
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

    .line 68
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xa0a0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 74
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 76
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;->onResult(Ljava/lang/String;)V

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select document path :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowseFileDialog"

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->dismiss()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->modify_storage_url_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
