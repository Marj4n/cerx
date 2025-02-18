.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;
.super Ljava/lang/Object;
.source "DeviceStorageManageFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 254
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 255
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->operation_failed_and_try_again:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
