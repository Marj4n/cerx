.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;
.super Ljava/lang/Object;
.source "DevicePwdFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->showPwdInputDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

.field final synthetic val$immediateEffect:Z


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->val$immediateEffect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    :cond_1
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->val$immediateEffect:Z

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object p1

    if-nez p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    new-instance p2, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {p2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    .line 106
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {p2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "change_name_wait_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->val$immediateEffect:Z

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:current pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->input_pld_pws_error:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
