.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
