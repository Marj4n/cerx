.class public final Lcom/google/android/material/progressindicator/ProgressIndicator;
.super Landroid/widget/ProgressBar;
.source "ProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/ProgressIndicator$GrowMode;,
        Lcom/google/android/material/progressindicator/ProgressIndicator$IndicatorType;
    }
.end annotation


# static fields
.field public static final CIRCULAR:I = 0x1

.field protected static final DEFAULT_OPACITY:F = 0.2f

.field protected static final DEF_STYLE_RES:I

.field public static final GROW_MODE_BIDIRECTIONAL:I = 0x3

.field public static final GROW_MODE_INCOMING:I = 0x1

.field public static final GROW_MODE_NONE:I = 0x0

.field public static final GROW_MODE_OUTGOING:I = 0x2

.field public static final LINEAR:I = 0x0

.field protected static final MAX_ALPHA:I = 0xff

.field private static final MAX_HIDE_DELAY:I = 0x3e8


# instance fields
.field private animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field private final delayedHide:Ljava/lang/Runnable;

.field private final delayedShow:Ljava/lang/Runnable;

.field private final hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private isIndeterminateModeChangeRequested:Z

.field private isParentDoneInitializing:Z

.field private lastShowStartTime:J

.field private minHideDelay:I

.field private showDelay:I

.field private final spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

.field private storedProgress:I

.field private storedProgressAnimated:Z

.field private final switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private visibilityAfterHide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ProgressIndicator_Linear_Determinate:I

    sput v0, Lcom/google/android/material/progressindicator/ProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 155
    sget v0, Lcom/google/android/material/R$attr;->progressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 160
    sget v0, Lcom/google/android/material/progressindicator/ProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 165
    sget v0, Lcom/google/android/material/progressindicator/ProgressIndicator;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->lastShowStartTime:J

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminateModeChangeRequested:Z

    const/4 p1, 0x4

    .line 132
    iput p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibilityAfterHide:I

    .line 972
    new-instance p1, Lcom/google/android/material/progressindicator/ProgressIndicator$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/progressindicator/ProgressIndicator$1;-><init>(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    .line 985
    new-instance p1, Lcom/google/android/material/progressindicator/ProgressIndicator$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/progressindicator/ProgressIndicator$2;-><init>(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    .line 1000
    new-instance p1, Lcom/google/android/material/progressindicator/ProgressIndicator$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/progressindicator/ProgressIndicator$3;-><init>(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 1018
    new-instance p1, Lcom/google/android/material/progressindicator/ProgressIndicator$4;

    invoke-direct {p1, p0}, Lcom/google/android/material/progressindicator/ProgressIndicator$4;-><init>(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 166
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isParentDoneInitializing:Z

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    .line 172
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/ProgressIndicator;->loadExtraAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->initializeDrawables()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/ProgressIndicator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->internalShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/ProgressIndicator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->internalHide()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/progressindicator/ProgressIndicator;J)J
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->lastShowStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/ProgressIndicator;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->storedProgress:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->storedProgressAnimated:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminateModeChangeRequested:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/progressindicator/ProgressIndicator;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibilityAfterHide:I

    return p0
.end method

.method private applyNewVisibility()V
    .locals 3

    .line 315
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isParentDoneInitializing:Z

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    return-void
.end method

.method private initializeDrawables()V
    .locals 3

    .line 199
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/DeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->applyNewVisibility()V

    return-void
.end method

.method private internalHide()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    .line 293
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isNoLongerNeedToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private internalShow()V
    .locals 2

    .line 255
    iget v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->minHideDelay:I

    if-lez v0, :cond_0

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->lastShowStartTime:J

    :cond_0
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setVisibility(I)V

    return-void
.end method

.method private isEligibleToSeamless()Z
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNoLongerNeedToBeVisible()Z
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadExtraAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 183
    sget-object v0, Lcom/google/android/material/R$styleable;->ProgressIndicator:[I

    .line 184
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 187
    sget p2, Lcom/google/android/material/R$styleable;->ProgressIndicator_showDelay:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->showDelay:I

    .line 189
    sget p2, Lcom/google/android/material/R$styleable;->ProgressIndicator_minHideDelay:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    .line 190
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->minHideDelay:I

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private registerAnimationCallbacks()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_2
    return-void
.end method

.method private unregisterAnimationCallbacks()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->unregisterAnimatorsCompleteCallback()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    :cond_1
    return-void
.end method

.method private updateColorsInDrawables()V
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->recalculateColors()V

    .line 536
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->recalculateColors()V

    return-void
.end method

.method private visibleToUser()Z
    .locals 1

    .line 489
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isEffectivelyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCircularInset()I
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularInset:I

    return v0
.end method

.method public getCircularRadius()I
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularRadius:I

    return v0
.end method

.method public bridge synthetic getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGrowMode()I
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1

    .line 481
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-object v0
.end method

.method public getIndicatorColors()[I
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorColors:[I

    return-object v0
.end method

.method public getIndicatorCornerRadius()I
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorCornerRadius:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    return v0
.end method

.method public getIndicatorType()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    return v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 1

    .line 476
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    return-object v0
.end method

.method public getSpec()Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    return-object v0
.end method

.method public getTrackColor()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->trackColor:I

    return v0
.end method

.method public hide()V
    .locals 5

    .line 267
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->lastShowStartTime:J

    sub-long/2addr v0, v2

    .line 275
    iget v2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->minHideDelay:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 277
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    iget v3, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->minHideDelay:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/material/progressindicator/ProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 399
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 400
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method protected isEffectivelyVisible()Z
    .locals 3

    move-object v0, p0

    .line 520
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 527
    :cond_2
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    return v1

    .line 530
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public isInverse()Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->inverse:Z

    return v0
.end method

.method public isLinearSeamless()Z
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 324
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 325
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->registerAnimationCallbacks()V

    .line 327
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->internalShow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 337
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 338
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->unregisterAnimationCallbacks()V

    .line 339
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object p1

    .line 366
    iget-object p2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-interface {p1, p2}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I

    move-result p2

    .line 367
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    invoke-interface {p1, v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I

    move-result p1

    if-gez p2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    if-gez p1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    .line 368
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    if-nez v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingRight()I

    move-result p4

    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    .line 383
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getPaddingBottom()I

    move-result p4

    add-int/2addr p3, p4

    sub-int/2addr p2, p3

    .line 384
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 386
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 390
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 301
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->applyNewVisibility()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    .line 307
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->applyNewVisibility()V

    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V
    .locals 1

    .line 956
    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 957
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    :cond_1
    return-void
.end method

.method public setCircularInset(I)V
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularInset:I

    if-eq v0, p1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularInset:I

    .line 854
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircularRadius(I)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularRadius:I

    if-eq v0, p1, :cond_0

    .line 879
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->circularRadius:I

    .line 880
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGrowMode(I)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    if-eq v0, p1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    .line 750
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 594
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 596
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isLinearSeamless()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 599
    monitor-exit p0

    return-void

    .line 601
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 602
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot switch to indeterminate mode while the progress indicator is visible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 608
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 610
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 612
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 613
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getCurrentDrawable()Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 615
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v1

    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 619
    :cond_5
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminateModeChangeRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 462
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 465
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v0, :cond_1

    .line 466
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->hideNow()Z

    .line 467
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 469
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndicatorColors([I)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput-object p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorColors:[I

    .line 673
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->updateColorsInDrawables()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isEligibleToSeamless()Z

    move-result p1

    if-nez p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(I)V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorCornerRadius:I

    if-eq v0, p1, :cond_1

    .line 824
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorCornerRadius:I

    .line 825
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rounded corners are not supported in linear seamless mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    if-eq v0, p1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    .line 644
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIndicatorType(I)V
    .locals 1

    .line 575
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change indicatorType while the progress indicator is visible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorType:I

    .line 580
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->initializeDrawables()V

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->requestLayout()V

    return-void
.end method

.method public setInverse(Z)V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->inverse:Z

    if-eq v0, p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput-boolean p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->inverse:Z

    .line 726
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLinearSeamless(Z)V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change linearSeamless while the progress indicator is shown in indeterminate mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 785
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isEligibleToSeamless()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 786
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput-boolean p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    if-eqz p1, :cond_3

    .line 788
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput v1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorCornerRadius:I

    :cond_3
    if-eqz p1, :cond_4

    .line 791
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;-><init>()V

    .line 792
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    goto :goto_1

    .line 794
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    .line 795
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    goto :goto_1

    .line 798
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput-boolean v1, p1, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->linearSeamless:Z

    .line 800
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 896
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 898
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setProgressCompat(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressCompat(IZ)V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->isLinearSeamless()Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    iput p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->storedProgress:I

    .line 917
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->storedProgressAnimated:Z

    const/4 p1, 0x1

    .line 918
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->isIndeterminateModeChangeRequested:Z

    .line 920
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 921
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 920
    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 923
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->requestCancelAnimatorAfterCurrentCycle()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 933
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 438
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 441
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    if-eqz v0, :cond_1

    .line 442
    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 443
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->hideNow()Z

    .line 444
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setLevelByFraction(F)V

    return-void

    .line 450
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->trackColor:I

    if-eq v0, p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->spec:Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->trackColor:I

    .line 700
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->updateColorsInDrawables()V

    .line 701
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 950
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->visibilityAfterHide:I

    return-void
.end method

.method public show()V
    .locals 3

    .line 240
    iget v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->showDelay:I

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->showDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/progressindicator/ProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
