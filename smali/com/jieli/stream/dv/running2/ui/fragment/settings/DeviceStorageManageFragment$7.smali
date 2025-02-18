.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;
.super Ljava/lang/Object;
.source "DeviceStorageManageFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->showFormatDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 223
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToFormatTFCard(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 231
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
