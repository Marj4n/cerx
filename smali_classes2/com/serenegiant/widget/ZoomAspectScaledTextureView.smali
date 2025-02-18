.class public Lcom/serenegiant/widget/ZoomAspectScaledTextureView;
.super Lcom/serenegiant/widget/AspectScaledTextureView;
.source "ZoomAspectScaledTextureView.java"

# interfaces
.implements Lcom/serenegiant/glutils/IRendererCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;,
        Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;,
        Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;,
        Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;
    }
.end annotation


# static fields
.field private static final CHECK_TIMEOUT:I

.field private static final DEFAULT_MAX_SCALE:F = 8.0f

.field private static final DEFAULT_MIN_SCALE:F = 0.8f

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final EPS:F = 0.1f

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final MIN_DISTANCE:F = 15.0f

.field private static final MIN_DISTANCE_SQUARE:F = 225.0f

.field private static final MOVE_LIMIT_RATE:F = 0.2f

.field private static final STATE_CHECKING:I = 0x3

.field private static final STATE_DRAGING:I = 0x2

.field private static final STATE_NON:I = 0x0

.field private static final STATE_ROTATING:I = 0x5

.field private static final STATE_WAITING:I = 0x1

.field private static final STATE_ZOOMING:I = 0x4

.field private static final TAP_TIMEOUT:I

.field private static final TO_DEGREE:F = 57.29578f


# instance fields
.field private mCurrentDegrees:F

.field protected final mDefaultMatrix:Landroid/graphics/Matrix;

.field private mHandleTouchEvent:Z

.field protected mImageMatrixChanged:Z

.field private final mImageRect:Landroid/graphics/RectF;

.field private mIsRotating:Z

.field private final mLimitRect:Landroid/graphics/RectF;

.field private final mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

.field protected final mMatrixCache:[F

.field protected final mMaxScale:F

.field private mMinScale:F

.field private mMirrorMode:I

.field private mPivotX:F

.field private mPivotY:F

.field private mPrimaryId:I

.field private mPrimaryX:F

.field private mPrimaryY:F

.field private final mSavedImageMatrix:Landroid/graphics/Matrix;

.field private mSecondX:F

.field private mSecondY:F

.field private mSecondaryId:I

.field private mStartCheckRotate:Ljava/lang/Runnable;

.field private mState:I

.field private mTouchDistance:F

.field private final mTrans:[F

.field private mWaitImageReset:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->CHECK_TIMEOUT:I

    .line 90
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->TAP_TIMEOUT:I

    .line 91
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/widget/AspectScaledTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mDefaultMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 112
    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMatrixCache:[F

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSavedImageMatrix:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    .line 124
    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 133
    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    const/high16 v0, 0x41000000    # 8.0f

    .line 162
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMaxScale:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 166
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMinScale:F

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMirrorMode:I

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/serenegiant/common/R$styleable;->ZoomAspectScaledTextureView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 196
    :try_start_0
    sget p2, Lcom/serenegiant/common/R$styleable;->ZoomAspectScaledTextureView_handle_touch_event:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mHandleTouchEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    return p0
.end method

.method static synthetic access$300(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    return-void
.end method

.method private applyMirrorMode()V
    .locals 4

    .line 853
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMirrorMode:I

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 868
    invoke-virtual {p0, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleX(F)V

    .line 869
    invoke-virtual {p0, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleY(F)V

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleX(F)V

    .line 864
    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleY(F)V

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {p0, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleX(F)V

    .line 860
    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleY(F)V

    goto :goto_0

    .line 855
    :cond_2
    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleX(F)V

    .line 856
    invoke-virtual {p0, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private final calcAngle(Landroid/view/MotionEvent;)F
    .locals 9

    .line 648
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 649
    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondaryId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 653
    iget v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    iget v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    sub-float/2addr v2, v3

    .line 654
    iget v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondY:F

    iget v4, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    sub-float/2addr v3, v4

    .line 656
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 657
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, p1

    mul-float p1, v2, v2

    mul-float v0, v3, v3

    add-float/2addr p1, v0

    mul-float v0, v4, v4

    mul-float v5, v1, v1

    add-float/2addr v0, v5

    mul-float p1, p1, v0

    float-to-double v5, p1

    .line 660
    invoke-static {v2, v3, v4, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->dotProduct(FFFF)F

    move-result p1

    float-to-double v7, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v7, v5

    const p1, 0x42652ee1

    .line 661
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float v0, v0, p1

    invoke-static {v2, v3, v4, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final calcScale(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 577
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v1, v1

    float-to-double v3, v0

    .line 578
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 580
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTouchDistance:F

    div-float/2addr p1, v0

    return p1
.end method

.method private static final checkIntersect(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 791
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 793
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    iget-object v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 796
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    iget-object v5, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v4, v5}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v4

    .line 797
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    iget-object v6, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v5, v6}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v5

    .line 798
    invoke-static {v2, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F

    move-result v4

    invoke-static {v2, v5}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F

    move-result v5

    mul-float v4, v4, v5

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 800
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    aget-object v7, p1, v3

    iget-object v7, v7, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v4, v7}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v4

    .line 801
    iget-object v7, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    aget-object v8, p1, v3

    iget-object v8, v8, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v7, v8}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v7

    .line 802
    iget-object v8, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    aget-object v9, p1, v3

    iget-object v9, v9, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v8, v9}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v8

    .line 803
    invoke-static {v4, v7}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F

    move-result v7

    invoke-static {v4, v8}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F

    move-result v4

    mul-float v7, v7, v4

    cmpg-float v4, v7, v5

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    return v4
.end method

.method private final checkTouchMoved(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 590
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 591
    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondaryId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v0, :cond_1

    .line 594
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    sub-float/2addr v2, v3

    .line 595
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    sub-float/2addr v0, v3

    mul-float v2, v2, v2

    mul-float v0, v0, v0

    add-float/2addr v2, v0

    const/high16 v0, 0x43610000    # 225.0f

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 600
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    sub-float/2addr v3, v4

    .line 601
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondY:F

    sub-float/2addr p1, v1

    mul-float v3, v3, v3

    mul-float p1, p1, p1

    add-float/2addr v3, p1

    cmpg-float p1, v3, v0

    if-gez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static final crossProduct(FFFF)F
    .locals 0

    mul-float p0, p0, p3

    mul-float p2, p2, p1

    sub-float/2addr p0, p2

    return p0
.end method

.method private static final crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F
    .locals 2

    .line 675
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    iget v1, p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    iget p0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    mul-float p1, p1, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method private static final dotProduct(FFFF)F
    .locals 0

    mul-float p0, p0, p2

    mul-float p1, p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method private final getMatrixScale()F
    .locals 3

    .line 818
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->updateMatrixCache()Z

    .line 819
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMatrixCache:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method

.method private final processDrag(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    sub-float/2addr v1, v2

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    sub-float/2addr v2, v3

    .line 408
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x6

    aput v4, v3, v5

    const/4 v6, 0x0

    aput v4, v3, v6

    .line 409
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x3

    aput v4, v3, v7

    const/4 v8, 0x1

    aput v4, v3, v8

    .line 410
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x7

    aput v4, v3, v9

    const/4 v10, 0x5

    aput v4, v3, v10

    .line 411
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    const/4 v11, 0x4

    aput v4, v3, v11

    const/4 v12, 0x2

    aput v4, v3, v12

    .line 412
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 414
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v4, v3

    add-float/2addr v13, v1

    aput v13, v4, v3

    add-int/lit8 v13, v3, 0x1

    .line 415
    aget v14, v4, v13

    add-float/2addr v14, v2

    aput v14, v4, v13

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 419
    :cond_0
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v4, v6

    aget v4, v4, v8

    .line 421
    invoke-virtual {v3, v13, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v4, v12

    aget v4, v4, v7

    .line 422
    invoke-virtual {v3, v13, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v4, v11

    aget v4, v4, v10

    .line 423
    invoke-virtual {v3, v13, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v4, v5

    aget v4, v4, v9

    .line 424
    invoke-virtual {v3, v13, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    .line 426
    invoke-static {v3, v4, v13}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->ptInPoly(FF[F)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    .line 427
    invoke-static {v3, v4, v13}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->ptInPoly(FF[F)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    .line 428
    invoke-static {v3, v4, v13}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->ptInPoly(FF[F)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    .line 429
    invoke-static {v3, v4, v13}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->ptInPoly(FF[F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_5

    .line 433
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    aget-object v4, v3, v6

    if-nez v4, :cond_3

    .line 434
    new-instance v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    iget-object v14, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v13, v14, v15, v9}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;-><init>(FFFF)V

    aput-object v4, v3, v6

    .line 435
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    new-instance v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    iget-object v14, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v9, v13, v14, v15}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;-><init>(FFFF)V

    aput-object v4, v3, v8

    .line 436
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    new-instance v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v9, v13, v14, v15}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;-><init>(FFFF)V

    aput-object v4, v3, v12

    .line 437
    iget-object v3, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    new-instance v4, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v9, v13, v14, v15}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;-><init>(FFFF)V

    aput-object v4, v3, v7

    .line 439
    :cond_3
    new-instance v3, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v4, v6

    aget v13, v4, v8

    aget v14, v4, v12

    aget v4, v4, v7

    invoke-direct {v3, v9, v13, v14, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;-><init>(FFFF)V

    .line 440
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    invoke-static {v3, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkIntersect(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 442
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v4, v12

    aget v13, v4, v7

    aget v14, v4, v11

    aget v4, v4, v10

    invoke-virtual {v3, v9, v13, v14, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->set(FFFF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    .line 443
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    invoke-static {v3, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkIntersect(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 445
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v4, v11

    aget v13, v4, v10

    aget v14, v4, v5

    const/4 v15, 0x7

    aget v4, v4, v15

    invoke-virtual {v3, v9, v13, v14, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->set(FFFF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    .line 446
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    invoke-static {v3, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkIntersect(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 448
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v4, v5

    aget v13, v4, v15

    aget v14, v4, v6

    aget v4, v4, v8

    invoke-virtual {v3, v9, v13, v14, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->set(FFFF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    .line 449
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    invoke-static {v3, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkIntersect(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;)Z

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    if-eqz v3, :cond_b

    .line 458
    iget-boolean v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mIsRotating:Z

    if-nez v4, :cond_9

    .line 459
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v4, v6

    aget v4, v4, v12

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v13, v9, v11

    aget v9, v9, v5

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 460
    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v6, v9, v6

    aget v9, v9, v12

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v11, v9, v11

    aget v5, v9, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 461
    iget-object v6, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v9, v6, v8

    aget v6, v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v11, v9, v10

    const/4 v12, 0x7

    aget v9, v9, v12

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 462
    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v11, v9, v8

    aget v7, v9, v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTrans:[F

    aget v10, v9, v10

    aget v9, v9, v12

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 464
    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const v10, 0x3dcccccd    # 0.1f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_6

    .line 465
    iget-object v1, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    goto :goto_4

    :cond_6
    add-float v5, v4, v10

    .line 466
    iget-object v9, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_7

    .line 467
    iget-object v1, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    sub-float/2addr v1, v10

    .line 469
    :cond_7
    :goto_4
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_8

    .line 470
    iget-object v2, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    goto :goto_5

    :cond_8
    add-float v4, v6, v10

    .line 471
    iget-object v5, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 472
    iget-object v2, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v6

    sub-float/2addr v2, v10

    :cond_9
    :goto_5
    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_a

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_b

    .line 478
    :cond_a
    iget-object v4, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 480
    iput-boolean v8, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    .line 482
    iget-object v1, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 486
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    return v3
.end method

.method private final processRotate(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 620
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkTouchMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->restoreMatrix()V

    .line 623
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->calcAngle(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mCurrentDegrees:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float v2, p1, v0

    float-to-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v2, p1

    .line 624
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mIsRotating:Z

    if-eqz p1, :cond_1

    .line 625
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mCurrentDegrees:F

    iget v3, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotX:F

    iget v4, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotY:F

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 627
    iput-boolean v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    .line 629
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return v2

    :cond_1
    return v1
.end method

.method private final processZoom(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 545
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->restoreMatrix()V

    .line 547
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->getMatrixScale()F

    move-result v0

    .line 549
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->calcScale(Landroid/view/MotionEvent;)F

    move-result p1

    mul-float v0, v0, p1

    .line 552
    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMinScale:F

    const/4 v2, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotX:F

    iget v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotY:F

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 562
    iput-boolean v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    .line 564
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    return v0
.end method

.method private static final ptInPoly(FF[F)Z
    .locals 10

    .line 687
    array-length v0, p2

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    return v1

    .line 691
    :cond_0
    new-instance v2, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-direct {v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;-><init>()V

    .line 692
    new-instance v3, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-direct {v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_3

    .line 694
    invoke-virtual {v2, p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    move-result-object v6

    aget v7, p2, v4

    add-int/lit8 v8, v4, 0x1

    aget v9, p2, v8

    invoke-virtual {v6, v7, v9}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->dec(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    add-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_1

    .line 695
    aget v5, p2, v6

    add-int/lit8 v7, v4, 0x3

    aget v7, p2, v7

    invoke-virtual {v3, v5, v7}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    goto :goto_1

    .line 696
    :cond_1
    aget v7, p2, v1

    aget v5, p2, v5

    invoke-virtual {v3, v7, v5}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    .line 697
    :goto_1
    aget v4, p2, v4

    aget v5, p2, v8

    invoke-virtual {v3, v4, v5}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->dec(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    .line 698
    invoke-static {v2, v3}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->crossProduct(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method private final restoreMatrix()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSavedImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    .line 832
    iput-boolean v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    return-void
.end method

.method private final setState(I)V
    .locals 1

    .line 373
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    if-eq v0, p1, :cond_0

    .line 374
    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    .line 376
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSavedImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 377
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSavedImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSavedImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    :cond_0
    return-void
.end method

.method private final startCheck(Landroid/view/MotionEvent;)V
    .locals 4

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryId:I

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    .line 503
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondaryId:I

    .line 504
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    .line 505
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondY:F

    .line 507
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    sub-float/2addr v0, v1

    .line 508
    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    sub-float/2addr p1, v1

    float-to-double v0, v0

    float-to-double v2, p1

    .line 509
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 515
    :cond_0
    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mTouchDistance:F

    .line 517
    iget p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotX:F

    .line 518
    iget p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondY:F

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPivotY:F

    .line 520
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mStartCheckRotate:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 521
    new-instance p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;-><init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$1;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mStartCheckRotate:Ljava/lang/Runnable;

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mStartCheckRotate:Ljava/lang/Runnable;

    sget v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->CHECK_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x3

    .line 523
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    :cond_2
    return-void
.end method

.method private final startWaiting(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 389
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryId:I

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondaryId:I

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondX:F

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryX:F

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mSecondY:F

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mPrimaryY:F

    .line 393
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;-><init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$1;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    sget v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->CHECK_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 395
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    return-void
.end method

.method private final startZoom(Landroid/view/MotionEvent;)V
    .locals 0

    .line 534
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mStartCheckRotate:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x4

    .line 535
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    return-void
.end method

.method private final updateMatrixCache()Z
    .locals 3

    .line 839
    iget-boolean v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMatrixCache:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 841
    iput-boolean v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrixChanged:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getMirror()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMirrorMode:I

    return v0
.end method

.method protected init()V
    .locals 7

    const/4 v0, -0x1

    .line 344
    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 346
    iput v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMinScale:F

    const/4 v1, 0x0

    .line 347
    iput v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mCurrentDegrees:F

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v3, v1, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v3, v1

    .line 348
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mIsRotating:Z

    .line 355
    invoke-virtual {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->getWidth()I

    move-result v2

    .line 356
    invoke-virtual {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->getHeight()I

    move-result v3

    .line 357
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 358
    invoke-virtual {p0, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 359
    iget-object v5, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 360
    iget-object v5, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 361
    iget-object v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mLimitSegments:[Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 362
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    invoke-super {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->init()V

    .line 364
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mDefaultMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/widget/AspectScaledTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setMirror(I)V

    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/widget/AspectScaledTextureView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 302
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->applyMirrorMode()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 206
    iget-boolean v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mHandleTouchEvent:Z

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0, p1}, Lcom/serenegiant/widget/AspectScaledTextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_a

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    goto/16 :goto_1

    .line 220
    :cond_1
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_3

    goto/16 :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 226
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->startCheck(Landroid/view/MotionEvent;)V

    return v1

    .line 236
    :cond_4
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    if-eq v0, v1, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 259
    :cond_5
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->processRotate(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 255
    :cond_6
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->processZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 249
    :cond_7
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkTouchMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->startZoom(Landroid/view/MotionEvent;)V

    return v1

    .line 245
    :cond_8
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->processDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 238
    :cond_9
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->checkTouchMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 239
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    invoke-direct {p0, v4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    return v1

    .line 268
    :cond_a
    iget-object v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mWaitImageReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 269
    iget-object v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mStartCheckRotate:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-ne v0, v1, :cond_c

    .line 270
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mState:I

    if-ne v0, v1, :cond_c

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 272
    sget v2, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    .line 273
    invoke-virtual {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->performLongClick()Z

    goto :goto_0

    .line 274
    :cond_b
    sget v2, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->TAP_TIMEOUT:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    .line 275
    invoke-virtual {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->performClick()Z

    :cond_c
    :goto_0
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->setState(I)V

    .line 283
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Lcom/serenegiant/widget/AspectScaledTextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 215
    :cond_e
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->startWaiting(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public reset()V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->init()V

    return-void
.end method

.method public setEnableHandleTouchEvent(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mHandleTouchEvent:Z

    return-void
.end method

.method public setMirror(I)V
    .locals 1

    .line 320
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMirrorMode:I

    if-eq v0, p1, :cond_0

    .line 321
    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->mMirrorMode:I

    .line 322
    invoke-direct {p0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->applyMirrorMode()V

    :cond_0
    return-void
.end method
