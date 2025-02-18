.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 5

    .line 329
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7212e2e2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "AP_SSID_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_5

    .line 341
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$902(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)Z

    .line 342
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "current_wifi_ssid"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeSavedNetWork(Ljava/lang/String;)Z

    .line 345
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jieli/stream/dv/running2/util/IConstant;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 347
    :cond_5
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    const-string v2, "ssid"

    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v2, "pwd"

    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v2, "null"

    .line 350
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, p1

    .line 356
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1402(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
