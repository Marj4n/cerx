.class public Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "PasswordConfirmDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mConfirm:Landroid/widget/TextView;

.field private mContent:Landroid/widget/EditText;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;

.field private mTextTitle:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mConfirm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->commitPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method private commitPassword()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->dismiss()V

    .line 90
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mTextTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;->onCompletion(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;
    .locals 3

    .line 28
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x64

    .line 61
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x32

    .line 62
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 65
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 68
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 71
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x1030011

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->setStyle(II)V

    .line 39
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mTextTitle:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->input_password_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->et_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mContent:Landroid/widget/EditText;

    .line 46
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mConfirm:Landroid/widget/TextView;

    .line 47
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mCancel:Landroid/widget/TextView;

    .line 48
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mTitle:Landroid/widget/TextView;

    .line 49
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mConfirm:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mCancel:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mTitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mTextTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setOnInputCompletionListener(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;

    return-void
.end method
