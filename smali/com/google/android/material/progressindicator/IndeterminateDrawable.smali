.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "IndeterminateDrawable.java"


# instance fields
.field private animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)V

    .line 41
    iget p1, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    iget-boolean p2, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->initializeDelegates(IZ)Landroid/util/Pair;

    move-result-object p1

    .line 44
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/progressindicator/DrawingDelegate;

    iput-object p2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    .line 45
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    return-object p0
.end method

.method private initializeDelegates(IZ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate;",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/AnimatorSet;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    new-instance p1, Landroid/util/Pair;

    new-instance p2, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-direct {p2}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;-><init>()V

    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 141
    :cond_0
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;-><init>()V

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-direct {p2}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/material/progressindicator/DrawingDelegate;->adjustCanvas(Landroid/graphics/Canvas;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;F)V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v1

    mul-float v0, v0, v1

    .line 105
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v2

    mul-float v1, v1, v2

    .line 108
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->combinedTrackColor:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    move v8, v0

    move v9, v1

    invoke-interface/range {v2 .. v9}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrackWithColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFFF)V

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    aget v5, v3, v10

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    mul-int/lit8 v6, v10, 0x2

    aget v7, v3, v6

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    add-int/lit8 v6, v6, 0x1

    aget v8, v3, v6

    move-object v3, p1

    move v6, v7

    move v7, v8

    move v8, v0

    move v9, v1

    invoke-interface/range {v2 .. v9}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrackWithColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    return-object v0
.end method

.method public getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-interface {v0, v1}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-interface {v0, v1}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected recalculateColors()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->recalculateColors()V

    .line 151
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->invalidateSpecValues()V

    :cond_0
    return-void
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    return-void
.end method

.method public setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/AnimatorSet;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    .line 165
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerDrawable(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    .line 168
    new-instance p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;-><init>(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setInternalAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setGrowFraction(F)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setInternalAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setInternalAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public setVisible(ZZZ)Z
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 73
    iget-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    :cond_1
    return p2
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
