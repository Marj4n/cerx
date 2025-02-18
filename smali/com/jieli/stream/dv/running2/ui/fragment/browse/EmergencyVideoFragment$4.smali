.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;
.super Ljava/lang/Object;
.source "EmergencyVideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->showNotifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Z)Z

    .line 532
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    const/16 v1, 0xa4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;IZ)V

    .line 533
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 535
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$1802(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->showWaitingDialog()V

    :cond_1
    return-void
.end method
