.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .line 299
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xa612fbd

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "VIDEO_MIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 306
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 296
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
