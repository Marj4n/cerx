.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->tryToSendFactoryReset()V
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

    .line 211
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 215
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 218
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    .line 219
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_account_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    .line 223
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x6352

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
