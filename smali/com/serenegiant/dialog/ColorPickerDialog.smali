.class public Lcom/serenegiant/dialog/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final KEY_COLOR_CURRENT:Ljava/lang/String; = "current_color"

.field private static final KEY_COLOR_INIT:Ljava/lang/String; = "initial_color"

.field private static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final TAG:Ljava/lang/String; = "ColorPickerDialog"


# instance fields
.field private isCanceled:Z

.field private final mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

.field private mCurrentColor:I

.field private mInitialColor:I

.field private mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

.field private final mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    .line 54
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    .line 205
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$1;-><init>(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    .line 217
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$2;-><init>(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/ColorPickerDialog;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/dialog/ColorPickerDialog;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/dialog/ColorPickerDialog;)Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method public static newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 1

    .line 77
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-direct {v0}, Lcom/serenegiant/dialog/ColorPickerDialog;-><init>()V

    .line 78
    invoke-virtual {v0, p0, p1}, Lcom/serenegiant/dialog/ColorPickerDialog;->setArguments(II)V

    return-object v0
.end method

.method public static show(Landroid/app/Activity;II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static show(Landroid/app/Fragment;II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 0

    .line 70
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez v0, :cond_0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 143
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez v0, :cond_1

    .line 146
    :try_start_2
    check-cast p1, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 152
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez p1, :cond_2

    const-string p1, "ColorPickerDialog"

    const-string v0, "must implement OnColorChangedListener"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title_id"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mTitleResId:I

    const/4 v1, -0x1

    const-string v2, "initial_color"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    :cond_0
    if-eqz p1, :cond_1

    .line 107
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/serenegiant/common/R$layout;->color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 168
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 170
    new-instance v2, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p0}, Lcom/serenegiant/dialog/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 171
    iget v3, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColor(I)V

    .line 172
    iget-object v3, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/serenegiant/common/R$string;->color_picker_select:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 175
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/serenegiant/common/R$string;->color_picker_cancel:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 176
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget v1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mTitleResId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/serenegiant/common/R$string;->color_picker_default_title:I

    .line 177
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 194
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-eqz p1, :cond_1

    .line 195
    iget-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p1, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;->onCancel(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    goto :goto_0

    .line 200
    :cond_0
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;->onDismiss(Lcom/serenegiant/dialog/ColorPickerDialog;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 116
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setArguments(II)V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_id"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "initial_color"

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "current_color"

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/serenegiant/dialog/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
