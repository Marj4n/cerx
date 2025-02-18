.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;
.super Ljava/lang/Object;
.source "DeviceVolumeFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->save_fail:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
