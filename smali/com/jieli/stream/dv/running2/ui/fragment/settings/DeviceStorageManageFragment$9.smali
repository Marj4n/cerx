.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;
.super Ljava/lang/Object;
.source "DeviceStorageManageFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->showStopRecordingDialog()V
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

    .line 247
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
