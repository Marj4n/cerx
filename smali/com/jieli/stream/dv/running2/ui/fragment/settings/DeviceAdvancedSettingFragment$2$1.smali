.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Ljava/lang/String;I)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetGravitySenor(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
