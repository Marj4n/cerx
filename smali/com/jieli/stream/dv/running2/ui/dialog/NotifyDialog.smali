.class public Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "NotifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;,
        Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;,
        Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;,
        Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;,
        Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_CHECK_BOX:Ljava/lang/String; = "check_box"

.field public static final PB_STYLE_HORIZONTAL:I = 0x2

.field public static final PB_STYLE_ROUND:I = 0x1


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private content:Ljava/lang/String;

.field private isLeftGravity:Z

.field private isShowCheckBox:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmButtonId:I

.field private mConfirmButtonText:Landroid/widget/TextView;

.field private mContent:Landroid/widget/TextView;

.field private mContentId:I

.field private mDividerView:Landroid/view/View;

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field private mNegativeButtonId:I

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mOnCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

.field private mOnConfirmClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;

.field private mOnDismissDialogListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;

.field private mOnNegativeClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

.field private mOnPositiveClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;

.field private mPositiveButtonId:I

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarStyle:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleId:I

.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final tag:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBarStyle:I

    .line 40
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isLeftGravity:Z

    .line 84
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitleId:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonId:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonId:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonId:I

    const-string v1, ""

    .line 85
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->content:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowCheckBox:Z

    .line 434
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    return-object p0
.end method

.method public static newInstance(III)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 90
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mProgressBarStyle"

    .line 91
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mContentId"

    .line 92
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 178
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mContentId"

    .line 179
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mNegativeButtonId"

    .line 180
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mPositiveButtonId"

    .line 181
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 183
    iput-object p4, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    .line 184
    iput-object p5, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;

    .line 185
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 153
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mContentId"

    .line 154
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mConfirmButtonId"

    .line 155
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 157
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;

    .line 158
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IIZIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 208
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "check_box"

    .line 209
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "mContentId"

    .line 210
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mNegativeButtonId"

    .line 211
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mPositiveButtonId"

    .line 212
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 214
    iput-object p5, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    .line 215
    iput-object p6, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;

    .line 216
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IZ)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 111
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mProgressBarStyle"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 113
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :goto_0
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 117
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IZI)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 99
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mProgressBarStyle"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 101
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 103
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string p0, "mContentId"

    .line 104
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(IZIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 2

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    .line 138
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mProgressBarStyle"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 140
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string p0, "mContentId"

    .line 143
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mConfirmButtonId"

    .line 144
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 146
    iput-object p4, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;

    .line 147
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 3

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    const/4 v2, -0x1

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 193
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mContentId"

    .line 194
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "content"

    .line 195
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mNegativeButtonId"

    .line 196
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "mPositiveButtonId"

    .line 197
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 199
    iput-object p4, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnNegativeClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    .line 200
    iput-object p5, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnPositiveClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;

    .line 201
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 3

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    const/4 v2, -0x1

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 165
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mContentId"

    .line 166
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "content"

    .line 167
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mConfirmButtonId"

    .line 168
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 170
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnConfirmClickListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;

    .line 171
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;ZLjava/lang/String;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 3

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mTitleId"

    const/4 v2, -0x1

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 124
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mProgressBarStyle"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 126
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string p0, "content"

    .line 129
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mContentId"

    .line 130
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;-><init>()V

    .line 132
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 397
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 398
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->tag:Ljava/lang/String;

    const-string v0, "onActivityCreated.............:"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x64

    .line 402
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x32

    .line 403
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 404
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 406
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 407
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 409
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 410
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 412
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 413
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

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

    .line 255
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 257
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mProgressBarStyle"

    .line 261
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBarStyle:I

    const-string v1, "check_box"

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowCheckBox:Z

    const-string p1, "mContentId"

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    const-string p1, "content"

    .line 264
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->content:Ljava/lang/String;

    const-string p1, "mConfirmButtonId"

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonId:I

    const-string p1, "mTitleId"

    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitleId:I

    const-string p1, "title"

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->title:Ljava/lang/String;

    const-string p1, "mNegativeButtonId"

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonId:I

    const-string p1, "mPositiveButtonId"

    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 276
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->notify_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 280
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    .line 281
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    .line 282
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->progressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 283
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->progressBar_horizon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 284
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    .line 285
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_middle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    .line 286
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tv_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    .line 287
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->divider_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    .line 288
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 289
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->line_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 291
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 293
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitleId:I

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 296
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mTitleId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowCheckBox:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 307
    :goto_1
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBarStyle:I

    if-lez v1, :cond_5

    if-ne v1, p3, :cond_4

    .line 309
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x2

    if-ne v1, p3, :cond_6

    .line 312
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_5
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    :cond_6
    :goto_2
    iget p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    if-eqz p3, :cond_9

    .line 321
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    if-ne p3, v2, :cond_7

    .line 323
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->content:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 325
    :cond_7
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_3
    iget-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isLeftGravity:Z

    if-eqz p3, :cond_8

    .line 328
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 330
    :cond_8
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 333
    :cond_9
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_4
    iget p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonId:I

    if-eqz p3, :cond_a

    .line 337
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 340
    :cond_a
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :goto_5
    iget p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonId:I

    if-eqz p3, :cond_b

    .line 343
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonId:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 348
    :cond_b
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBarStyle:I

    if-lez p3, :cond_c

    .line 351
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 354
    :cond_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_6
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonId:I

    if-eqz p2, :cond_d

    .line 360
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonId:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 363
    :cond_d
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :goto_7
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mConfirmButtonText:Landroid/widget/TextView;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mNegativeButtonText:Landroid/widget/TextView;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mPositiveButtonText:Landroid/widget/TextView;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$3;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 418
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 419
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowCheckBox:Z

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnDismissDialogListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;

    if-eqz p1, :cond_1

    .line 422
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;->onDismiss()V

    :cond_1
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public setContent(I)V
    .locals 1

    .line 225
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    .line 226
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 231
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContentId:I

    .line 232
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->content:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setContentTextLeft(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isLeftGravity:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    return-void
.end method

.method public setOnDismissDialogListener(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mOnDismissDialogListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method
