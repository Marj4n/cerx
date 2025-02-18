.class public Lcom/serenegiant/dialog/ColorPickerDialogV4;
.super Lcom/serenegiant/dialog/DialogFragmentEx;
.source "ColorPickerDialogV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final KEY_COLOR_CURRENT:Ljava/lang/String; = "current_color"

.field private static final KEY_COLOR_INIT:Ljava/lang/String; = "initial_color"

.field private static final TAG:Ljava/lang/String; = "ColorPickerDialog"


# instance fields
.field private isCanceled:Z

.field private final mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

.field private mCurrentColor:I

.field private mInitialColor:I

.field private mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mInitialColor:I

    .line 51
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    .line 239
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;-><init>(Lcom/serenegiant/dialog/ColorPickerDialogV4;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    .line 251
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialogV4$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4$2;-><init>(Lcom/serenegiant/dialog/ColorPickerDialogV4;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/ColorPickerDialogV4;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/dialog/ColorPickerDialogV4;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/dialog/ColorPickerDialogV4;)Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    return-object p0
.end method

.method public static newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialogV4;
    .locals 1

    .line 105
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-direct {v0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;-><init>()V

    .line 106
    invoke-virtual {v0, p0, p1}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->setArguments(II)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/Fragment;II)Lcom/serenegiant/dialog/ColorPickerDialogV4;
    .locals 0

    .line 90
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialogV4;

    move-result-object p1

    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;II)Lcom/serenegiant/dialog/ColorPickerDialogV4;
    .locals 0

    .line 74
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialogV4;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/serenegiant/dialog/DialogFragmentEx;->onAttach(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->isCanceled:Z

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    if-nez v0, :cond_0

    .line 168
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 174
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    if-nez v0, :cond_1

    .line 177
    :try_start_2
    check-cast p1, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 183
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    if-nez p1, :cond_2

    const-string p1, "ColorPickerDialog"

    const-string v0, "must implement OnColorChangedListener"

    .line 187
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 220
    invoke-super {p0, p1}, Lcom/serenegiant/dialog/DialogFragmentEx;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->isCanceled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/serenegiant/dialog/DialogFragmentEx;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mTitleResId:I

    const-string v1, "initial_color"

    const/4 v2, -0x1

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mInitialColor:I

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    if-eqz p1, :cond_0

    const-string v1, "current_color"

    .line 140
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 198
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/serenegiant/common/R$layout;->color_picker:I

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 202
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    new-instance v2, Lcom/serenegiant/widget/ColorPickerView;

    invoke-direct {v2, p1}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 205
    iget v3, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColor(I)V

    .line 206
    iget-object v3, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/serenegiant/common/R$string;->color_picker_select:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/serenegiant/common/R$string;->color_picker_cancel:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget v1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mTitleResId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/serenegiant/common/R$string;->color_picker_default_title:I

    .line 211
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/serenegiant/dialog/DialogFragmentEx;->onDismiss(Landroid/content/DialogInterface;)V

    .line 228
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mListener:Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    if-eqz p1, :cond_1

    .line 229
    iget-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {p1, p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;->onCancel(Lcom/serenegiant/dialog/ColorPickerDialogV4;)V

    goto :goto_0

    .line 234
    :cond_0
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;->onDismiss(Lcom/serenegiant/dialog/ColorPickerDialogV4;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/serenegiant/dialog/DialogFragmentEx;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4;->mCurrentColor:I

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setArguments(II)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "title"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "initial_color"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "current_color"

    .line 125
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
