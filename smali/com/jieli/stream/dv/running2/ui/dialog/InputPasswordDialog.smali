.class public Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "InputPasswordDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;
    }
.end annotation


# instance fields
.field private final MAX_WIFI_PWD_LENGTH:I

.field private final MIN_WIFI_PWD_LENGTH:I

.field private mCancel:Landroid/widget/TextView;

.field private mConfirm:Landroid/widget/TextView;

.field private mContent:Landroid/widget/EditText;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;

.field private mTextTitle:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    const/16 v0, 0x3f

    .line 27
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->MAX_WIFI_PWD_LENGTH:I

    const/16 v0, 0x8

    .line 28
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->MIN_WIFI_PWD_LENGTH:I

    .line 79
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mConfirm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->commitPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method private commitPassword()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->name_empty_error:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    const-string v0, ""

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->dismiss()V

    .line 104
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;

    if-eqz v1, :cond_2

    .line 105
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mTextTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;->onCompletion(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 99
    :cond_3
    :goto_0
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->input_pwd_error:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;
    .locals 3

    .line 32
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x64

    .line 65
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x32

    .line 66
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 69
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 72
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 75
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getDialog()Landroid/app/Dialog;

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

    .line 41
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x1030011

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->setStyle(II)V

    .line 43
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mTextTitle:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->input_password_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->et_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mContent:Landroid/widget/EditText;

    .line 50
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mConfirm:Landroid/widget/TextView;

    .line 51
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mCancel:Landroid/widget/TextView;

    .line 52
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mTitle:Landroid/widget/TextView;

    .line 53
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mConfirm:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mCancel:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mTitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mTextTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setOnInputCompletionListener(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->mOnInputCompletionListener:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$OnInputCompletionListener;

    return-void
.end method
