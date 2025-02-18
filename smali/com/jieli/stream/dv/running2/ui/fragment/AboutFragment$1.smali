.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
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

    .line 81
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    if-eqz p1, :cond_7

    .line 84
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_6

    const/16 v1, 0x101

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1234

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5567

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setProgress(I)V

    goto/16 :goto_1

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "update_path"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "update_type"

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->firmware_upgrade_tip:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0, v2, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->upload_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 115
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
