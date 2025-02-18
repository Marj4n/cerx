.class public Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "WaitingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;
    }
.end annotation


# instance fields
.field private notifyContent:Ljava/lang/String;

.field private onWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;

.field private tvNotifyContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 77
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 78
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 79
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->dialog_bg:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_waiting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 63
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_waiting_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDetach()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->onWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;->onCancelDialog()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onStart()V

    .line 41
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 44
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 45
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x0

    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setNotifyContent(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    return-void
.end method

.method public setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->onWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;

    return-void
.end method

.method public updateNotifyContent(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
