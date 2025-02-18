.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;
.super Ljava/lang/Object;
.source "DevicePwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 65
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->new_and_old_pwd_consistent:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->pwd_check_fail:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->new_and_old_pwd_consistent:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_4

    .line 82
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->pwd_lenth_limits:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    :goto_0
    return-void
.end method
