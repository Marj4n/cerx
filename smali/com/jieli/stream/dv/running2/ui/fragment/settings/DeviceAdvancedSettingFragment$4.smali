.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Lcom/jieli/stream/dv/running2/bean/SettingItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;",
            "Lcom/jieli/stream/dv/running2/bean/SettingItem<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4;Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Z)V

    invoke-virtual {p2, p3, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetTimeWatermark(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
