.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 266
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$operation:I

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 281
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown OP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$operation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceRecordQualityFragment()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    goto :goto_0

    .line 271
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    if-eqz p1, :cond_5

    .line 272
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;->val$activity:Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceAdvancedSettingFragment()V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 262
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
