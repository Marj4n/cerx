.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;
.super Ljava/lang/Object;
.source "DevicePwdFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 5

    .line 180
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7212e2e2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "AP_SSID_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)Z

    .line 191
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "pwd"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 198
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 201
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
