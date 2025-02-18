.class public Lcom/serenegiant/widget/ColorPickerDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ColorPickerDialogPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private changed:Z

.field private mColor:I

.field private final mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/serenegiant/widget/ColorPickerDialogPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/ColorPickerDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x10000

    .line 30
    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    .line 93
    new-instance p1, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;-><init>(Lcom/serenegiant/widget/ColorPickerDialogPreference;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/ColorPickerDialogPreference;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/widget/ColorPickerDialogPreference;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    return p1
.end method

.method static synthetic access$102(Lcom/serenegiant/widget/ColorPickerDialogPreference;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->changed:Z

    return p1
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 63
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->changed:Z

    .line 65
    instance-of v1, p1, Lcom/serenegiant/widget/ColorPickerView;

    if-eqz v1, :cond_0

    .line 66
    check-cast p1, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 48
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 54
    new-instance v0, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ColorPickerView;->setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 73
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->changed:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->persistInt(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->notifyChanged()V

    :cond_1
    if-nez p1, :cond_3

    .line 80
    iget-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->changed:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    goto :goto_0

    .line 88
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference;->mColor:I

    .line 89
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->persistInt(I)Z

    :goto_0
    return-void
.end method
