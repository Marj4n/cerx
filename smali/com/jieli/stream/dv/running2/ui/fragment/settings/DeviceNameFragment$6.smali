.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->showChoseDialog()V
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

    .line 299
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)V

    .line 303
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    .line 306
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_name_wait_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
