.class public Lcom/serenegiant/view/animation/ResizeAnimation;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.java"


# instance fields
.field private final mDiffHeight:I

.field private final mDiffWidth:I

.field private final mStartHeight:I

.field private final mStartWidth:I

.field private final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mTargetView:Landroid/view/View;

    .line 43
    iput p2, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mStartWidth:I

    .line 44
    iput p3, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mStartHeight:I

    sub-int/2addr p4, p2

    .line 45
    iput p4, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffWidth:I

    sub-int/2addr p5, p3

    .line 46
    iput p5, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 55
    iget p2, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mStartWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 56
    iget v0, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mStartHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 58
    iget-object v0, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iget-object p2, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    iget-object p1, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .line 72
    iget v0, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/serenegiant/view/animation/ResizeAnimation;->mDiffHeight:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
