.class public Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private isShown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShown:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShown:Z

    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShown:Z

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShown:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 22
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 23
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 26
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 27
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    sget v2, Lcom/jieli/stream/dv/running2/R$style;->MyDialogTheme:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->isShown:Z

    return-void
.end method
