.class public Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;
.super Lcom/serenegiant/widget/DialogPreferenceV7;
.source "ColorPickerDialogPreferenceV7.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private changed:Z

.field private mColor:I

.field private final mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/widget/DialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x10000

    .line 32
    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    .line 107
    new-instance p1, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;-><init>(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    return p1
.end method

.method static synthetic access$102(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->changed:Z

    return p1
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onBindDialogView(Landroid/view/View;)V

    .line 69
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->changed:Z

    .line 71
    instance-of v1, p1, Lcom/serenegiant/widget/ColorPickerView;

    if-eqz v1, :cond_0

    .line 72
    check-cast p1, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 54
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 60
    new-instance v0, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ColorPickerView;->setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 79
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->changed:Z

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->persistInt(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->notifyChanged()V

    :cond_1
    if-nez p1, :cond_3

    .line 86
    iget-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->changed:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-super {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onDialogClosed(Z)V

    return-void
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    .line 104
    :cond_0
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->mColor:I

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->persistInt(I)Z

    return-void
.end method
