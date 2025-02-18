.class public Lcom/serenegiant/widget/TwoPainViewGroup;
.super Landroid/widget/FrameLayout;
.source "TwoPainViewGroup.java"


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x11

.field private static final DEFAULT_HEIGHT:I = 0xc8

.field private static final DEFAULT_SUB_WINDOW_SCALE:F = 0.2f

.field private static final DEFAULT_WIDTH:I = 0xc8

.field public static final HORIZONTAL:I = 0x0

.field public static final MODE_SELECT_1:I = 0x1

.field public static final MODE_SELECT_2:I = 0x2

.field public static final MODE_SINGLE_1:I = 0x3

.field public static final MODE_SINGLE_2:I = 0x4

.field public static final MODE_SPLIT:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mChild1:Landroid/view/View;

.field private mChild2:Landroid/view/View;

.field private final mChildRect:Landroid/graphics/Rect;

.field private mDisplayMode:I

.field private mEnableSubWindow:Z

.field private mFlipChildPos:Z

.field private mOrientation:I

.field private mSubWindowScale:F

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/TwoPainViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/TwoPainViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    .line 572
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChildRect:Landroid/graphics/Rect;

    .line 780
    new-instance v0, Lcom/serenegiant/widget/TwoPainViewGroup$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/TwoPainViewGroup$2;-><init>(Lcom/serenegiant/widget/TwoPainViewGroup;)V

    iput-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 132
    sget-object v0, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 133
    sget p2, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    .line 134
    sget p2, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup_displayMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    .line 135
    sget p2, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup_enableSubWindow:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    .line 136
    sget p2, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup_flipChildPos:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    .line 137
    sget p2, Lcom/serenegiant/common/R$styleable;->TwoPainViewGroup_subWindowScale:I

    const p3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    .line 139
    :cond_0
    iput p3, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/TwoPainViewGroup;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayoutOnUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/TwoPainViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/serenegiant/widget/TwoPainViewGroup;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private callChildLayout(Landroid/view/View;ZIIII)V
    .locals 5

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 681
    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x11

    .line 686
    :cond_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_2()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getLayoutDirection()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 687
    :goto_0
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v2, v2, 0x70

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 700
    iget p5, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, p5

    goto :goto_1

    :cond_2
    sub-int/2addr p5, v0

    .line 696
    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int p3, p5, p3

    goto :goto_1

    :cond_3
    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    .line 692
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    iget p5, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, p5

    iget p5, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, p5

    :goto_1
    const/16 p5, 0x10

    if-eq v2, p5, :cond_6

    const/16 p5, 0x30

    if-eq v2, p5, :cond_5

    const/16 p5, 0x50

    if-eq v2, p5, :cond_4

    .line 715
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_4
    sub-int/2addr p6, v1

    .line 712
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p4, p6, p2

    goto :goto_3

    .line 705
    :cond_5
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_2
    add-int/2addr p4, p2

    goto :goto_3

    :cond_6
    sub-int/2addr p6, p4

    sub-int/2addr p6, v1

    .line 708
    div-int/lit8 p6, p6, 0x2

    add-int/2addr p4, p6

    iget p5, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p4, p5

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p4, p2

    :goto_3
    add-int/2addr v0, p3

    add-int/2addr v1, p4

    .line 718
    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private callChildMeasure(Landroid/view/View;IIII)V
    .locals 5

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 496
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getMeasuredWidth()I

    move-result p4

    .line 498
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v1

    .line 497
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 500
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 502
    invoke-static {p4, v1, v4}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 505
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 506
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 510
    :goto_0
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne p4, v3, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getMeasuredHeight()I

    move-result p4

    .line 512
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p4, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, p5

    .line 511
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 514
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 516
    invoke-static {p5, p4, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 519
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    .line 520
    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 523
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    .line 772
    iput-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 774
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLayoutHorizontal(ZIIII)V
    .locals 10

    .line 634
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 635
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    sub-int v1, p4, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 637
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v8

    .line 638
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v3

    sub-int v4, p2, v8

    sub-int p2, p3, v3

    add-int p3, v4, v1

    sub-int v9, p5, v3

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, v9

    .line 639
    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    sub-int v8, p4, v8

    move-object v3, p0

    move-object v4, v0

    move v5, p1

    move v7, p2

    .line 640
    invoke-direct/range {v3 .. v9}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    return-void
.end method

.method private onLayoutSelect1(ZIIII)V
    .locals 9

    .line 575
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    .line 576
    :goto_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    move-object v8, v1

    .line 577
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v1

    .line 578
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v4, p2, v1

    sub-int v5, p3, v2

    sub-int v6, p4, v1

    sub-int v7, p5, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    .line 579
    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    .line 580
    iget-boolean p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz p2, :cond_3

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 583
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    .line 584
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 585
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 586
    iget p5, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    sub-int v5, v7, p3

    sub-int v6, p2, p4

    move-object v2, p0

    move-object v3, v8

    move v4, p1

    move v8, p2

    .line 592
    invoke-direct/range {v2 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    goto :goto_2

    :cond_2
    sub-int v5, v7, p3

    sub-int v6, p2, p4

    move-object v2, p0

    move-object v3, v8

    move v4, p1

    move v8, p2

    .line 588
    invoke-direct/range {v2 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    :cond_3
    :goto_2
    return-void
.end method

.method private onLayoutSelect2(ZIIII)V
    .locals 10

    .line 599
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 600
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    .line 601
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v1

    .line 602
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v3

    sub-int v6, p2, v1

    sub-int v7, p3, v3

    sub-int v8, p4, v1

    sub-int v9, p5, v3

    move-object v3, p0

    move-object v4, v0

    move v5, p1

    .line 603
    invoke-direct/range {v3 .. v9}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    .line 604
    iget-boolean p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz p2, :cond_3

    .line 606
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 607
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    .line 609
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 610
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 611
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 612
    iget p4, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_2

    sub-int v5, v7, p3

    add-int v6, v4, p2

    move-object v1, p0

    move v3, p1

    .line 618
    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    goto :goto_2

    :cond_2
    sub-int v4, v6, p2

    add-int v7, v5, p3

    move-object v1, p0

    move v3, p1

    .line 614
    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    :cond_3
    :goto_2
    return-void
.end method

.method private onLayoutSplit(ZIIII)V
    .locals 2

    .line 563
    iget v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 568
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/widget/TwoPainViewGroup;->onLayoutHorizontal(ZIIII)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/widget/TwoPainViewGroup;->onLayoutVertical(ZIIII)V

    :goto_0
    return-void
.end method

.method private onLayoutVertical(ZIIII)V
    .locals 10

    .line 653
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 654
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    sub-int v1, p5, p3

    ushr-int/lit8 v1, v1, 0x1

    .line 656
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v3

    .line 657
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v8

    sub-int/2addr p2, v3

    sub-int v5, p3, v8

    sub-int p3, p4, v3

    add-int p4, v5, v1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 658
    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    sub-int v9, p5, v8

    move-object v3, p0

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v8, p3

    .line 659
    invoke-direct/range {v3 .. v9}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    return-void
.end method

.method private onMeasureHorizontal(IIII)V
    .locals 9

    .line 465
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 466
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 467
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    move-object v3, p0

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 468
    invoke-direct/range {v3 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    return-void
.end method

.method private onMeasureSelect1(IIII)V
    .locals 9

    .line 438
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 439
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 440
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    .line 441
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz v1, :cond_2

    int-to-float p1, p1

    .line 442
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    mul-float p1, p1, v1

    float-to-int v5, p1

    int-to-float p1, p2

    mul-float p1, p1, v1

    float-to-int v6, p1

    move-object v3, p0

    move-object v4, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    :cond_2
    return-void
.end method

.method private onMeasureSelect2(IIII)V
    .locals 9

    .line 448
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 449
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    move-object v4, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 450
    invoke-direct/range {v3 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    .line 451
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz v0, :cond_2

    int-to-float p1, p1

    .line 452
    iget v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    mul-float p1, p1, v0

    float-to-int v3, p1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int v4, p1

    move-object v1, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    :cond_2
    return-void
.end method

.method private onMeasureSplit(IIII)V
    .locals 2

    .line 426
    iget v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 431
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/widget/TwoPainViewGroup;->onMeasureHorizontal(IIII)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/widget/TwoPainViewGroup;->onMeasureVertical(IIII)V

    :goto_0
    return-void
.end method

.method private onMeasureVertical(IIII)V
    .locals 9

    .line 480
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :goto_0
    move-object v2, v0

    .line 481
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :goto_1
    ushr-int/lit8 p2, p2, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 482
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    move-object v3, p0

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 483
    invoke-direct/range {v3 .. v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    return-void
.end method

.method private startLayoutOnUI()V
    .locals 7

    .line 737
    iget-boolean v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    .line 738
    :goto_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    .line 740
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_4

    if-eq v2, v6, :cond_2

    goto :goto_3

    .line 750
    :cond_2
    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/TwoPainViewGroup;->removeView(Landroid/view/View;)V

    .line 751
    invoke-virtual {p0, v1, v3}, Lcom/serenegiant/widget/TwoPainViewGroup;->addView(Landroid/view/View;I)V

    .line 752
    iget-boolean v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eq v2, v6, :cond_3

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 753
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 743
    :cond_4
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->removeView(Landroid/view/View;)V

    .line 744
    invoke-virtual {p0, v0, v3}, Lcom/serenegiant/widget/TwoPainViewGroup;->addView(Landroid/view/View;I)V

    .line 745
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-boolean v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eq v2, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 756
    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :goto_3
    iget-boolean v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v2, :cond_7

    move-object v2, v1

    goto :goto_4

    :cond_7
    move-object v2, v0

    :goto_4
    iput-object v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    .line 762
    iget-boolean v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    .line 765
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->requestLayout()V

    return-void

    :catchall_0
    move-exception v2

    .line 761
    iget-boolean v3, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v3, :cond_9

    move-object v3, v1

    goto :goto_6

    :cond_9
    move-object v3, v0

    :goto_6
    iput-object v3, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    .line 762
    iget-boolean v3, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    throw v2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 159
    iget-object p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 160
    invoke-virtual {p0, p2}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    :cond_0
    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    .line 162
    iget-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    if-nez p1, :cond_1

    .line 163
    invoke-virtual {p0, p2}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :cond_1
    return-void

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t add more than 2 views to a ViewSwitcher"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDisplayMode()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnableSubWindow()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFlipChildPos()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrientation()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubWindowScale()F
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    const-class v0, Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 186
    const-class v0, Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 529
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 530
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 531
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v1

    add-int v5, p3, v1

    .line 532
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v6, p4, v1

    .line 533
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v7, p5, v1

    .line 536
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    move-object v1, p0

    move v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildLayout(Landroid/view/View;ZIIII)V

    goto :goto_0

    :cond_0
    if-lez v1, :cond_3

    .line 542
    iget p2, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eq p2, v2, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v5

    move v5, v6

    move v6, v7

    .line 553
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->onLayoutSplit(ZIIII)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v5

    move v5, v6

    move v6, v7

    .line 549
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->onLayoutSelect2(ZIIII)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v5

    move v5, v6

    move v6, v7

    .line 545
    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/widget/TwoPainViewGroup;->onLayoutSelect1(ZIIII)V

    goto :goto_0

    .line 557
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 318
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 321
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 322
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 323
    iget v2, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    const/4 v9, 0x1

    if-nez v2, :cond_2

    .line 325
    iget v2, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    if-ne v2, v9, :cond_1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, v0, 0x1

    .line 332
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 333
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result v12

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v4, 0x2

    const/4 v3, 0x3

    if-ge v13, v12, :cond_a

    .line 341
    invoke-virtual {v6, v13}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v18, v2

    move v2, v10

    move/from16 v3, v16

    move v4, v11

    move/from16 v19, v5

    move/from16 v5, v17

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/serenegiant/widget/TwoPainViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 344
    iget v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    if-eq v0, v9, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v2, v18

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    move-object/from16 v2, v18

    if-eq v2, v0, :cond_7

    :goto_3
    iget v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-ne v0, v1, :cond_8

    :cond_5
    iget-object v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    if-ne v2, v0, :cond_8

    goto :goto_4

    :cond_6
    move-object/from16 v2, v18

    .line 348
    :cond_7
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    .line 349
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    .line 351
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 354
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    move/from16 v2, v19

    invoke-static {v2, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->combineMeasuredStates(II)I

    move-result v0

    move v5, v0

    goto :goto_5

    :cond_9
    move v2, v5

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_a
    move v2, v5

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 364
    iget v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-nez v0, :cond_c

    .line 366
    iget v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    if-ne v0, v9, :cond_b

    shl-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_b
    shl-int/lit8 v14, v14, 0x1

    .line 375
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v14, v0

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v15, v0

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 385
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 386
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 391
    :cond_d
    invoke-static {v4, v7, v2}, Lcom/serenegiant/widget/TwoPainViewGroup;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v2, v2, 0x10

    .line 392
    invoke-static {v0, v8, v2}, Lcom/serenegiant/widget/TwoPainViewGroup;->resolveSizeAndState(III)I

    move-result v0

    .line 390
    invoke-virtual {v6, v4, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->setMeasuredDimension(II)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v9, :cond_e

    .line 402
    iget-object v1, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    move-object/from16 v0, p0

    move v3, v4

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/widget/TwoPainViewGroup;->callChildMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    :cond_e
    if-lez v0, :cond_11

    .line 405
    iget v0, v6, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eq v0, v9, :cond_10

    if-eq v0, v3, :cond_f

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    .line 416
    invoke-direct {v6, v2, v4, v7, v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->onMeasureSplit(IIII)V

    goto :goto_7

    .line 412
    :cond_f
    invoke-direct {v6, v2, v4, v7, v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->onMeasureSelect2(IIII)V

    goto :goto_7

    .line 408
    :cond_10
    invoke-direct {v6, v2, v4, v7, v8}, Lcom/serenegiant/widget/TwoPainViewGroup;->onMeasureSelect1(IIII)V

    goto :goto_7

    .line 420
    :cond_11
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_7
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 171
    iput-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild1:Landroid/view/View;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 173
    iput-object v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mChild2:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    if-eq v1, p1, :cond_0

    .line 246
    iput p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mDisplayMode:I

    .line 247
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V

    .line 249
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEnableSubWindow(Z)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    if-eq v1, p1, :cond_0

    .line 222
    iput-boolean p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mEnableSubWindow:Z

    .line 223
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V

    .line 225
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFlipChildPos(Z)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    if-eq p1, v1, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mFlipChildPos:Z

    .line 297
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V

    .line 299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOrientation(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    rem-int/lit8 v2, p1, 0x2

    if-eq v1, v2, :cond_0

    .line 198
    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mOrientation:I

    .line 199
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V

    .line 201
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSubWindowScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 273
    iput p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup;->mSubWindowScale:F

    .line 274
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V

    .line 276
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startLayout()V
    .locals 2

    .line 723
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/TwoPainViewGroup;->requestLayout()V

    .line 726
    :cond_1
    new-instance v0, Lcom/serenegiant/widget/TwoPainViewGroup$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/TwoPainViewGroup$1;-><init>(Lcom/serenegiant/widget/TwoPainViewGroup;)V

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
