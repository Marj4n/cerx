.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showStopRecordingDialog(Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

.field final synthetic val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;ILcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$operation:I

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 262
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
