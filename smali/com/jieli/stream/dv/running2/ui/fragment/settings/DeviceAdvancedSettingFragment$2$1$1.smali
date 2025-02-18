.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;->onSelected(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
