.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->showNotifyDialog(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x5

    const-string v3, "key_fragment_tag"

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "key_data"

    .line 329
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    return-void
.end method
