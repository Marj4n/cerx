.class public Lcom/serenegiant/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/serenegiant/widget/Touchable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 35
    sput-object v0, Lcom/serenegiant/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableLinearLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/serenegiant/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/serenegiant/widget/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mTouchX:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mTouchY:F

    .line 89
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mChecked:Z

    if-eq v0, p1, :cond_2

    .line 58
    iput-boolean p1, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mChecked:Z

    .line 59
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 63
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 64
    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableLinearLayout;->refreshDrawableState()V

    :cond_2
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/CheckableLinearLayout;->setChecked(Z)V

    return-void
.end method

.method public touchX()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mTouchX:F

    return v0
.end method

.method public touchY()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/serenegiant/widget/CheckableLinearLayout;->mTouchY:F

    return v0
.end method
