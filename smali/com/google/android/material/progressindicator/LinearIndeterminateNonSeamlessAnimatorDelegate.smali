.class final Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "LinearIndeterminateNonSeamlessAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final LINE_1_HEAD_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_1_TAIL_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_2_HEAD_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_2_TAIL_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN_LINE_1_HEAD_DURATION:I = 0x2ee

.field private static final MAIN_LINE_1_TAIL_DELAY:I = 0x14d

.field private static final MAIN_LINE_1_TAIL_DURATION:I = 0x352

.field private static final MAIN_LINE_2_HEAD_DELAY:I = 0x3e8

.field private static final MAIN_LINE_2_HEAD_DURATION:I = 0x237

.field private static final MAIN_LINE_2_TAIL_DELAY:I = 0x4f3

.field private static final MAIN_LINE_2_TAIL_DURATION:I = 0x215


# instance fields
.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field animatorCompleteEndRequested:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final context:Landroid/content/Context;

.field private displayedSegmentColorIndex:I

.field private line1HeadFraction:F

.field private line1TailFraction:F

.field private line2HeadFraction:F

.field private line2TailFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 258
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "line1HeadFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_1_HEAD_FRACTION:Landroid/util/Property;

    .line 278
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "line1TailFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_1_TAIL_FRACTION:Landroid/util/Property;

    .line 298
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "line2HeadFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_2_HEAD_FRACTION:Landroid/util/Property;

    .line 318
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "line2TailFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_2_TAIL_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteEndRequested:Z

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 68
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->getLine1HeadFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->getLine1TailFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->getLine2HeadFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->getLine2TailFraction()F

    move-result p0

    return p0
.end method

.method private getLine1HeadFraction()F
    .locals 1

    .line 207
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line1HeadFraction:F

    return v0
.end method

.method private getLine1TailFraction()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line1TailFraction:F

    return v0
.end method

.method private getLine2HeadFraction()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line2HeadFraction:F

    return v0
.end method

.method private getLine2TailFraction()F
    .locals 1

    .line 240
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line2TailFraction:F

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_1_HEAD_FRACTION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 85
    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    .line 86
    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    sget-object v2, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_1_TAIL_FRACTION:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x14d

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0x352

    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    iget-object v3, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    .line 93
    invoke-static {v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    sget-object v3, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_2_HEAD_FRACTION:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x237

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->context:Landroid/content/Context;

    sget v5, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    .line 100
    invoke-static {v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    sget-object v4, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->LINE_2_TAIL_FRACTION:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x4f3

    .line 104
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0x215

    .line 105
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->context:Landroid/content/Context;

    sget v6, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    .line 107
    invoke-static {v5, v6}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v0, 0x3

    aput-object v4, v6, v0

    .line 111
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetSegmentColors()V
    .locals 3

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->displayedSegmentColorIndex:I

    .line 201
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentColors:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->combinedIndicatorColorArray:[I

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->displayedSegmentColorIndex:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private rotateSegmentColors()V
    .locals 3

    .line 193
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->displayedSegmentColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->combinedIndicatorColorArray:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->displayedSegmentColorIndex:I

    .line 195
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentColors:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->combinedIndicatorColorArray:[I

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->displayedSegmentColorIndex:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public cancelAnimatorImmediately()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->cancelAnimatorImmediately()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteEndRequested:Z

    return-void
.end method

.method public resetPropertiesForNewStart()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetPropertiesForNextCycle()V

    .line 140
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public resetPropertiesForNextCycle()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->setLine1HeadFraction(F)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->setLine1TailFraction(F)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->setLine2HeadFraction(F)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->setLine2TailFraction(F)V

    .line 149
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->rotateSegmentColors()V

    return-void
.end method

.method setLine1HeadFraction(F)V
    .locals 2

    .line 212
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line1HeadFraction:F

    .line 213
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 214
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method setLine1TailFraction(F)V
    .locals 2

    .line 223
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line1TailFraction:F

    .line 224
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 225
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method setLine2HeadFraction(F)V
    .locals 2

    .line 234
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line2HeadFraction:F

    .line 235
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 236
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method setLine2TailFraction(F)V
    .locals 2

    .line 245
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->line2TailFraction:F

    .line 246
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 247
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method public startAnimator()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->maybeInitializeAnimators()V

    .line 77
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
