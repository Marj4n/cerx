.class public final Lcom/serenegiant/widget/ItemPickerButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ItemPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/serenegiant/widget/ItemPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .line 82
    sget v0, Lcom/serenegiant/common/R$id;->increment:I

    invoke-virtual {p0}, Lcom/serenegiant/widget/ItemPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPickerButton;->mNumberPicker:Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {v0}, Lcom/serenegiant/widget/ItemPicker;->cancelIncrement()V

    goto :goto_0

    .line 84
    :cond_0
    sget v0, Lcom/serenegiant/common/R$id;->decrement:I

    invoke-virtual {p0}, Lcom/serenegiant/widget/ItemPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPickerButton;->mNumberPicker:Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {v0}, Lcom/serenegiant/widget/ItemPicker;->cancelDecrement()V

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPickerButton;->cancelLongpress()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPickerButton;->cancelLongpress()V

    .line 71
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNumberPicker(Lcom/serenegiant/widget/ItemPicker;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerButton;->mNumberPicker:Lcom/serenegiant/widget/ItemPicker;

    return-void
.end method
