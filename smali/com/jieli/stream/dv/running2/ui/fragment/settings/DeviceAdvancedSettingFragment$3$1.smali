.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;->onSwitchListener(Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Lcom/jieli/stream/dv/running2/bean/SettingItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;

.field final synthetic val$isChecked:Z

.field final synthetic val$v:Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Z)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->val$v:Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->val$v:Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->val$isChecked:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
