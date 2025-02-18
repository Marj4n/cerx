.class public Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "InputContentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private onContentListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x96

    .line 69
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x32

    .line 70
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 73
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 76
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 79
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 98
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_input_cancel_btn:I

    if-ne p1, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->dismiss()V

    goto :goto_0

    .line 100
    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_input_confirm_btn:I

    if-ne p1, v0, :cond_4

    .line 101
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->onContentListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;->onInput(Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->dismiss()V

    goto :goto_0

    .line 109
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->input_content_empty:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x1030011

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->setStyle(II)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 53
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_input_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_edit_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->mEditText:Landroid/widget/EditText;

    .line 55
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_input_cancel_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 56
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->dialog_input_confirm_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 58
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onResume()V

    return-void
.end method

.method public setOnContentListener(Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->onContentListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;

    return-void
.end method
