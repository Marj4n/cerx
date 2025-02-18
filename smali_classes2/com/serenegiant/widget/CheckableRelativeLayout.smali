.class public Lcom/serenegiant/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/serenegiant/widget/Touchable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z

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

    .line 32
    sput-object v0, Lcom/serenegiant/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mIsChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableRelativeLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/serenegiant/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/serenegiant/widget/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mTouchX:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mTouchY:F

    .line 86
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 51
    iput-boolean p1, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mIsChecked:Z

    .line 52
    invoke-virtual {p0, p0, p1}, Lcom/serenegiant/widget/CheckableRelativeLayout;->updateChildState(Landroid/view/ViewGroup;Z)V

    .line 53
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableRelativeLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/CheckableRelativeLayout;->setChecked(Z)V

    return-void
.end method

.method public touchX()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mTouchX:F

    return v0
.end method

.method public touchY()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/serenegiant/widget/CheckableRelativeLayout;->mTouchY:F

    return v0
.end method

.method protected updateChildState(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 61
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 62
    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
