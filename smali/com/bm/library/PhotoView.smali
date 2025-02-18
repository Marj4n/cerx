.class public Lcom/bm/library/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bm/library/PhotoView$OTHER;,
        Lcom/bm/library/PhotoView$END;,
        Lcom/bm/library/PhotoView$START;,
        Lcom/bm/library/PhotoView$ClipCalculate;,
        Lcom/bm/library/PhotoView$Transform;,
        Lcom/bm/library/PhotoView$InterpolatorProxy;
    }
.end annotation


# static fields
.field private static final ANIMA_DURING:I = 0x154

.field private static final MAX_SCALE:F = 2.5f

.field private static final MIN_ROTATE:I = 0x23


# instance fields
.field private MAX_ANIM_FROM_WAITE:I

.field private MAX_FLING_OVER_SCROLL:I

.field private MAX_OVER_RESISTANCE:I

.field private MAX_OVER_SCROLL:I

.field private canRotate:Z

.field private hasDrawable:Z

.field private hasMultiTouch:Z

.field private hasOverTranslate:Z

.field private imgLargeHeight:Z

.field private imgLargeWidth:Z

.field private isEnable:Z

.field private isInit:Z

.field private isKnowSize:Z

.field private isZoonUp:Z

.field private mAdjustViewBounds:Z

.field private mAnimaDuring:I

.field private mAnimaMatrix:Landroid/graphics/Matrix;

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRect:Landroid/graphics/RectF;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mClip:Landroid/graphics/RectF;

.field private mCommonRect:Landroid/graphics/RectF;

.field private mCompleteCallBack:Ljava/lang/Runnable;

.field private mDegrees:F

.field private mDetector:Landroid/view/GestureDetector;

.field private mFromInfo:Lcom/bm/library/Info;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHalfBaseRectHeight:F

.field private mHalfBaseRectWidth:F

.field private mImgRect:Landroid/graphics/RectF;

.field private mInfoTime:J

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mMaxScale:F

.field private mMinRotate:I

.field private mRotateCenter:Landroid/graphics/PointF;

.field private mRotateDetector:Lcom/bm/library/RotateGestureDetector;

.field private mRotateFlag:F

.field private mRotateListener:Lcom/bm/library/OnRotateListener;

.field private mScale:F

.field private mScaleCenter:Landroid/graphics/PointF;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSynthesisMatrix:Landroid/graphics/Matrix;

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRect:Landroid/graphics/RectF;

.field private mTranslate:Lcom/bm/library/PhotoView$Transform;

.field private mTranslateX:I

.field private mTranslateY:I

.field private mWidgetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    const/16 v0, 0x1f4

    .line 40
    iput v0, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    iput p1, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance p1, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance p1, Lcom/bm/library/PhotoView$1;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance p1, Lcom/bm/library/PhotoView$2;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance p1, Lcom/bm/library/PhotoView$3;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance p1, Lcom/bm/library/PhotoView$4;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    const/16 p2, 0x1f4

    .line 40
    iput p2, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    iput p1, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance p1, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance p1, Lcom/bm/library/PhotoView$1;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance p1, Lcom/bm/library/PhotoView$2;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance p1, Lcom/bm/library/PhotoView$3;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance p1, Lcom/bm/library/PhotoView$4;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 103
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 38
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 39
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    const/16 p2, 0x1f4

    .line 40
    iput p2, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    .line 42
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    iput p1, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 81
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 83
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 84
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 85
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 87
    new-instance p1, Lcom/bm/library/PhotoView$Transform;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$Transform;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    .line 670
    new-instance p1, Lcom/bm/library/PhotoView$1;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$1;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    .line 687
    new-instance p1, Lcom/bm/library/PhotoView$2;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$2;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 753
    new-instance p1, Lcom/bm/library/PhotoView$3;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$3;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance p1, Lcom/bm/library/PhotoView$4;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$4;-><init>(Lcom/bm/library/PhotoView;)V

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 108
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mRotateFlag:F

    return p0
.end method

.method static synthetic access$002(Lcom/bm/library/PhotoView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mRotateFlag:F

    return p1
.end method

.method static synthetic access$100(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/bm/library/PhotoView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    return p1
.end method

.method static synthetic access$102(Lcom/bm/library/PhotoView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->imgLargeWidth:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->imgLargeHeight:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/bm/library/PhotoView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    return p0
.end method

.method static synthetic access$1802(Lcom/bm/library/PhotoView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/bm/library/PhotoView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->checkRect()V

    return-void
.end method

.method static synthetic access$200(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    return p0
.end method

.method static synthetic access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bm/library/PhotoView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    return p1
.end method

.method static synthetic access$2100(Lcom/bm/library/PhotoView;FF)F
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bm/library/PhotoView;->resistanceScrollByX(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/bm/library/PhotoView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return p0
.end method

.method static synthetic access$2202(Lcom/bm/library/PhotoView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2300(Lcom/bm/library/PhotoView;FF)F
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bm/library/PhotoView;->resistanceScrollByY(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/bm/library/PhotoView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return p0
.end method

.method static synthetic access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    return p0
.end method

.method static synthetic access$3100(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    return p0
.end method

.method static synthetic access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/bm/library/PhotoView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    return p0
.end method

.method static synthetic access$3500(Lcom/bm/library/PhotoView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    return p0
.end method

.method static synthetic access$3600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/bm/library/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bm/library/PhotoView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mMinRotate:I

    return p0
.end method

.method static synthetic access$500(Lcom/bm/library/PhotoView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/bm/library/PhotoView;->mScale:F

    return p0
.end method

.method static synthetic access$502(Lcom/bm/library/PhotoView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/bm/library/PhotoView;->mScale:F

    return p1
.end method

.method static synthetic access$600(Lcom/bm/library/PhotoView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    return-void
.end method

.method static synthetic access$700(Lcom/bm/library/PhotoView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bm/library/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/bm/library/PhotoView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    return p0
.end method

.method static synthetic access$902(Lcom/bm/library/PhotoView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    return p1
.end method

.method private checkRect()V
    .locals 3

    .line 748
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasOverTranslate:Z

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/bm/library/PhotoView;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private doTranslateReset(Landroid/graphics/RectF;)V
    .locals 5

    .line 634
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 635
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->isImageCenterWidth(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_1

    .line 638
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 639
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    .line 640
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 641
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 645
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_3

    .line 646
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->isImageCenterHeight(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 647
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    neg-int v3, p1

    goto :goto_3

    .line 649
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 650
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, v1

    float-to-int v3, p1

    goto :goto_3

    .line 651
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 652
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_8

    .line 657
    :cond_6
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object p1, p1, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object p1, p1, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 658
    :cond_7
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v1, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    iget v2, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    neg-int v0, v0

    neg-int v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    :cond_8
    return-void
.end method

.method private executeTranslate()V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 457
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 458
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 460
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 462
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->imgLargeWidth:Z

    .line 463
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/bm/library/PhotoView;->imgLargeHeight:Z

    return-void
.end method

.method private static getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 260
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_1
    return v0
.end method

.method public static getImageViewInfo(Landroid/widget/ImageView;)Lcom/bm/library/Info;
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1200
    invoke-static {p0, v0}, Lcom/bm/library/PhotoView;->getLocation(Landroid/view/View;[I)V

    .line 1202
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1206
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 1207
    invoke-static {v1}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 1209
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v6, v4, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1210
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1212
    new-instance v5, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v7, v0, v3

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    aget v1, v0, v1

    int-to-float v1, v1

    iget v8, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v8

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    invoke-direct {v5, v2, v7, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1213
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v7, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1214
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1215
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-direct {v9, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1217
    new-instance v0, Lcom/bm/library/Info;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v12

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/bm/library/Info;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private static getLocation(Landroid/view/View;[I)V
    .locals 4

    const/4 v0, 0x0

    .line 1222
    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 1223
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 1225
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1226
    :goto_0
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1227
    check-cast p0, Landroid/view/View;

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_0

    return-void

    .line 1231
    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v0

    .line 1232
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    .line 1234
    aget v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 1235
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 1237
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 1240
    :cond_1
    aget p0, p1, v0

    int-to-float p0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, p1, v0

    .line 1241
    aget p0, p1, v1

    int-to-float p0, p0

    add-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, p1, v1

    return-void
.end method

.method private hasSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 3

    .line 112
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 114
    :cond_0
    new-instance v0, Lcom/bm/library/RotateGestureDetector;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mRotateListener:Lcom/bm/library/OnRotateListener;

    invoke-direct {v0, v1}, Lcom/bm/library/RotateGestureDetector;-><init>(Lcom/bm/library/OnRotateListener;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mRotateDetector:Lcom/bm/library/RotateGestureDetector;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 117
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 118
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_OVER_SCROLL:I

    .line 119
    iput v1, p0, Lcom/bm/library/PhotoView;->MAX_FLING_OVER_SCROLL:I

    const/high16 v1, 0x430c0000    # 140.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 120
    iput v0, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    const/16 v0, 0x23

    .line 122
    iput v0, p0, Lcom/bm/library/PhotoView;->mMinRotate:I

    const/16 v0, 0x154

    .line 123
    iput v0, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    const/high16 v0, 0x40200000    # 2.5f

    .line 124
    iput v0, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return-void
.end method

.method private initBase()V
    .locals 9

    .line 267
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-nez v0, :cond_1

    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 271
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isZoonUp:Z

    .line 275
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getWidth()I

    move-result v1

    .line 278
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getHeight()I

    move-result v2

    .line 279
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 280
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 282
    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int v4, v1, v3

    .line 285
    div-int/lit8 v4, v4, 0x2

    sub-int v7, v2, v0

    .line 286
    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    if-le v3, v1, :cond_2

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-le v0, v2, :cond_3

    int-to-float v0, v2

    div-float v8, v0, v6

    :cond_3
    cmpg-float v0, v1, v8

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v8

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 303
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v4

    int-to-float v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 305
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 307
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    .line 308
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    .line 310
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 311
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 313
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 315
    sget-object v0, Lcom/bm/library/PhotoView$6;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 335
    :pswitch_0
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitXY()V

    goto :goto_2

    .line 332
    :pswitch_1
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitEnd()V

    goto :goto_2

    .line 329
    :pswitch_2
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitStart()V

    goto :goto_2

    .line 326
    :pswitch_3
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    goto :goto_2

    .line 323
    :pswitch_4
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenterInside()V

    goto :goto_2

    .line 320
    :pswitch_5
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenterCrop()V

    goto :goto_2

    .line 317
    :pswitch_6
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initCenter()V

    :goto_2
    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isInit:Z

    .line 341
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bm/library/PhotoView;->mInfoTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 342
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    invoke-virtual {p0, v0}, Lcom/bm/library/PhotoView;->animaFrom(Lcom/bm/library/Info;)V

    :cond_5
    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCenter()V
    .locals 4

    .line 349
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-nez v0, :cond_1

    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 355
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    int-to-float v1, v1

    .line 357
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2

    int-to-float v2, v0

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    .line 359
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 361
    :goto_0
    iput v1, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 363
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 365
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 367
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    :cond_4
    return-void
.end method

.method private initCenterCrop()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 374
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 376
    :goto_0
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 378
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 380
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 381
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    :cond_2
    return-void
.end method

.method private initCenterInside()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 388
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 390
    :goto_0
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 392
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 394
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 395
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    :cond_2
    return-void
.end method

.method private initFitCenter()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    .line 403
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 405
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 406
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    :cond_0
    return-void
.end method

.method private initFitEnd()V
    .locals 3

    .line 421
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    .line 423
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 424
    iget v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 425
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 427
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    return-void
.end method

.method private initFitStart()V
    .locals 3

    .line 411
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initFitCenter()V

    .line 413
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 414
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 415
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 416
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    .line 417
    iget v1, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return-void
.end method

.method private initFitXY()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 432
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 434
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 436
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 437
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->resetBase()V

    return-void
.end method

.method private isImageCenterHeight(Landroid/graphics/RectF;)Z
    .locals 2

    .line 663
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isImageCenterWidth(Landroid/graphics/RectF;)Z
    .locals 2

    .line 667
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 728
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 729
    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->right:F

    :goto_1
    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 732
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 736
    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    iget v3, p2, Landroid/graphics/RectF;->top:F

    .line 737
    :goto_2
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    :goto_3
    cmpl-float p2, v3, p1

    if-lez p2, :cond_5

    .line 740
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 744
    :cond_5
    invoke-virtual {p3, v0, v3, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private onUp()V
    .locals 6

    .line 584
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-boolean v0, v0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->canRotate:Z

    const/high16 v1, 0x42b40000    # 90.0f

    if-nez v0, :cond_1

    iget v0, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    rem-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 587
    :cond_1
    iget v0, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    div-float v2, v0, v1

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    rem-float/2addr v0, v1

    const/high16 v3, 0x42340000    # 45.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    add-float/2addr v2, v1

    goto :goto_0

    :cond_2
    const/high16 v3, -0x3dcc0000    # -45.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    sub-float/2addr v2, v1

    .line 595
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v1, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    float-to-int v1, v1

    float-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 597
    iput v2, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    .line 600
    :cond_4
    iget v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    .line 604
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v2, v0, v1}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 605
    :cond_5
    iget v1, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_6

    .line 607
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v2, v0, v1}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    move v0, v1

    .line 610
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 611
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 613
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 614
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v3, 0x0

    .line 616
    iput v3, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 617
    iput v3, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 619
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 620
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 621
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 622
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 623
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 624
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 626
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/bm/library/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    .line 627
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v0}, Lcom/bm/library/PhotoView$Transform;->start()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1246
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1247
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    const/4 v0, 0x0

    .line 1248
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 1249
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    return-void
.end method

.method private resetBase()V
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 443
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 444
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 446
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 447
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectWidth:F

    .line 448
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bm/library/PhotoView;->mHalfBaseRectHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 449
    iput v0, p0, Lcom/bm/library/PhotoView;->mScale:F

    const/4 v0, 0x0

    .line 450
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 451
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 452
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method private resistanceScrollByX(FF)F
    .locals 1

    .line 712
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    return p2
.end method

.method private resistanceScrollByY(FF)F
    .locals 1

    .line 717
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/bm/library/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    return p2
.end method


# virtual methods
.method public animaFrom(Lcom/bm/library/Info;)V
    .locals 12

    .line 1283
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz v0, :cond_7

    .line 1284
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->reset()V

    .line 1286
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getInfo()Lcom/bm/library/Info;

    move-result-object v0

    .line 1288
    iget-object v1, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 1289
    iget-object v2, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1292
    :goto_0
    iget-object v2, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1293
    iget-object v3, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 1295
    iget-object v5, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 1296
    iget-object v6, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v0, v0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v6, v0

    .line 1298
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1300
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    sub-float v5, v2, v5

    sub-float v6, v3, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1301
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1302
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v7, p1, Lcom/bm/library/Info;->mDegrees:F

    invoke-virtual {v0, v7, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1303
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->executeTranslate()V

    .line 1305
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1306
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1308
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    neg-float v2, v5

    float-to-int v2, v2

    neg-float v3, v6

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v3}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    .line 1309
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 1310
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v1, p1, Lcom/bm/library/Info;->mDegrees:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v5}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 1312
    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1313
    :cond_1
    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1314
    iget-object v1, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v1, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1318
    :cond_3
    iget-object v3, p1, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v5, :cond_4

    new-instance p1, Lcom/bm/library/PhotoView$START;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$START;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v3, :cond_5

    new-instance p1, Lcom/bm/library/PhotoView$END;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$END;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/bm/library/PhotoView$OTHER;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$OTHER;-><init>(Lcom/bm/library/PhotoView;)V

    .line 1320
    :goto_1
    iget-object v5, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    sub-float v8, v2, v0

    sub-float v9, v2, v1

    iget v2, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    div-int/lit8 v10, v2, 0x3

    move v6, v0

    move v7, v1

    move-object v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/bm/library/PhotoView$Transform;->withClip(FFFFILcom/bm/library/PhotoView$ClipCalculate;)V

    .line 1322
    iget-object v2, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-interface {p1}, Lcom/bm/library/PhotoView$ClipCalculate;->calculateTop()F

    move-result p1

    invoke-virtual {v2, v0, v1, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1323
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v0, v0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1324
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object p1, p1, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    .line 1327
    :cond_6
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {p1}, Lcom/bm/library/PhotoView$Transform;->start()V

    goto :goto_2

    .line 1329
    :cond_7
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mFromInfo:Lcom/bm/library/Info;

    .line 1330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bm/library/PhotoView;->mInfoTime:J

    :goto_2
    return-void
.end method

.method public animaTo(Lcom/bm/library/Info;Ljava/lang/Runnable;)V
    .locals 8

    .line 1335
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz v0, :cond_7

    .line 1336
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v0}, Lcom/bm/library/PhotoView$Transform;->stop()V

    const/4 v0, 0x0

    .line 1338
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateX:I

    .line 1339
    iput v0, p0, Lcom/bm/library/PhotoView;->mTranslateY:I

    .line 1341
    iget-object v1, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1342
    iget-object v2, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 1344
    iget-object v4, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 1345
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1348
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1349
    iget-object v3, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1352
    iget-object v3, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    .line 1353
    iget-object v4, p1, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1356
    :goto_0
    iget-object v4, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1357
    iget-object v4, p0, Lcom/bm/library/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1359
    iget v4, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    iput v4, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    .line 1361
    iget-object v4, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v0, v0, v1, v2}, Lcom/bm/library/PhotoView$Transform;->withTranslate(IIII)V

    .line 1362
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v1, p0, Lcom/bm/library/PhotoView;->mScale:F

    invoke-virtual {v0, v1, v3}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 1363
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    iget v1, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    float-to-int v1, v1

    iget v2, p1, Lcom/bm/library/Info;->mDegrees:F

    float-to-int v2, v2

    iget v3, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bm/library/PhotoView$Transform;->withRotate(III)V

    .line 1365
    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1366
    :cond_1
    iget-object v0, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1367
    iget-object v1, p1, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p1, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1373
    :cond_3
    iget-object v2, p1, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_4

    new-instance p1, Lcom/bm/library/PhotoView$START;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$START;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v2, :cond_5

    new-instance p1, Lcom/bm/library/PhotoView$END;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$END;-><init>(Lcom/bm/library/PhotoView;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/bm/library/PhotoView$OTHER;

    invoke-direct {p1, p0}, Lcom/bm/library/PhotoView$OTHER;-><init>(Lcom/bm/library/PhotoView;)V

    .line 1375
    :goto_1
    new-instance v2, Lcom/bm/library/PhotoView$5;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/bm/library/PhotoView$5;-><init>(Lcom/bm/library/PhotoView;FFLcom/bm/library/PhotoView$ClipCalculate;)V

    iget p1, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    div-int/lit8 p1, p1, 0x2

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/bm/library/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1383
    :cond_6
    iput-object p2, p0, Lcom/bm/library/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    .line 1384
    iget-object p1, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {p1}, Lcom/bm/library/PhotoView$Transform;->start()V

    :cond_7
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    int-to-float p1, p1

    .line 945
    invoke-virtual {p0, p1}, Lcom/bm/library/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollHorizontallySelf(F)Z
    .locals 4

    .line 925
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    int-to-float p1, p1

    .line 951
    invoke-virtual {p0, p1}, Lcom/bm/library/PhotoView;->canScrollVerticallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollVerticallySelf(F)Z
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 937
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public disenable()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 567
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    if-eqz v0, :cond_3

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/bm/library/PhotoView;->hasMultiTouch:Z

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 572
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mRotateDetector:Lcom/bm/library/RotateGestureDetector;

    invoke-virtual {v1, p1}, Lcom/bm/library/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 573
    iget-object v1, p0, Lcom/bm/library/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->onUp()V

    :cond_2
    return v3

    .line 579
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/bm/library/PhotoView;->mClip:Landroid/graphics/RectF;

    .line 562
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/bm/library/PhotoView;->isEnable:Z

    return-void
.end method

.method public getAnimaDuring()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    return v0
.end method

.method public getDefaultAnimaDuring()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public getInfo()Lcom/bm/library/Info;
    .locals 10

    .line 1191
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1193
    invoke-static {p0, v0}, Lcom/bm/library/PhotoView;->getLocation(Landroid/view/View;[I)V

    const/4 v2, 0x0

    .line 1194
    aget v3, v0, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    aget v2, v0, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    aget v0, v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v4

    invoke-virtual {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1195
    new-instance v9, Lcom/bm/library/Info;

    iget-object v2, p0, Lcom/bm/library/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bm/library/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v6, p0, Lcom/bm/library/PhotoView;->mScale:F

    iget v7, p0, Lcom/bm/library/PhotoView;->mDegrees:F

    iget-object v8, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/bm/library/Info;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V

    return-object v9
.end method

.method public getMaxScale()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 468
    iget-boolean v0, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    .line 469
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 475
    invoke-static {v0}, Lcom/bm/library/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 477
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 478
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 480
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 481
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 486
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_1

    .line 489
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 492
    :cond_1
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    if-nez p1, :cond_5

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_4

    if-le v1, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 508
    :cond_5
    :goto_1
    iget p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v8, :cond_6

    if-nez p2, :cond_9

    goto :goto_2

    :cond_6
    if-ne p2, v7, :cond_7

    goto :goto_3

    :cond_7
    if-ne p2, v6, :cond_8

    if-le v0, v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v0

    .line 524
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lcom/bm/library/PhotoView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_d

    int-to-float p1, v1

    int-to-float p2, v0

    div-float v0, p1, p2

    int-to-float v1, v2

    int-to-float v5, v3

    div-float v6, v1, v5

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_d

    div-float/2addr v5, p2

    div-float/2addr v1, p1

    cmpg-float v0, v5, v1

    if-gez v0, :cond_a

    goto :goto_4

    :cond_a
    move v5, v1

    .line 530
    :goto_4
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_b

    goto :goto_5

    :cond_b
    mul-float p1, p1, v5

    float-to-int v2, p1

    .line 531
    :goto_5
    iget p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v8, :cond_c

    goto :goto_6

    :cond_c
    mul-float p2, p2, v5

    float-to-int v3, p2

    .line 534
    :cond_d
    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/bm/library/PhotoView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 547
    iget-object p3, p0, Lcom/bm/library/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    iget-object p3, p0, Lcom/bm/library/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 550
    iget-boolean p1, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->isKnowSize:Z

    .line 552
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .line 539
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 540
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->mAdjustViewBounds:Z

    return-void
.end method

.method public setAnimaDuring(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/bm/library/PhotoView;->mAnimaDuring:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/bm/library/PhotoView;->hasSize(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 236
    :cond_1
    iget-boolean p1, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/bm/library/PhotoView;->hasDrawable:Z

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/bm/library/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bm/library/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mTranslate:Lcom/bm/library/PhotoView$Transform;

    invoke-virtual {v0, p1}, Lcom/bm/library/PhotoView$Transform;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setMaxAnimFromWaiteTime(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/bm/library/PhotoView;->MAX_ANIM_FROM_WAITE:I

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/bm/library/PhotoView;->mMaxScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 142
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 145
    iput-object p1, p0, Lcom/bm/library/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 147
    iget-boolean p1, p0, Lcom/bm/library/PhotoView;->isInit:Z

    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/bm/library/PhotoView;->initBase()V

    :cond_1
    return-void
.end method
