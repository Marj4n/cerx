.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 4

    .line 566
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 567
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->TAG:Ljava/lang/String;

    const-string v0, "-UploadFileThread- send reset cmd failed!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    .line 570
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 571
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 563
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
