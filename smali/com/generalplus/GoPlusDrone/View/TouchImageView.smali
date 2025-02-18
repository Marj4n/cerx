.class public Lcom/generalplus/GoPlusDrone/View/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;
    }
.end annotation


# static fields
.field static final CLICK:I = 0x3

.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field final DOUBLE_CLICK_TIMEOUT:I

.field private bAllowSlidePage:Z

.field private bCenterFlag:Z

.field private bDoubleClickFlag:Z

.field private bPointerDownFlag:Z

.field context:Landroid/content/Context;

.field protected fOrigHeight:F

.field protected fOrigWidth:F

.field last:Landroid/graphics/PointF;

.field private m:[F

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mScaleDetector:Landroid/view/ScaleGestureDetector;

.field matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field mode:I

.field private oldMeasuredHeight:I

.field private oldMeasuredWidth:I

.field private saveScale:F

.field start:Landroid/graphics/PointF;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    .line 24
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    .line 25
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->start:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    iput v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->minScale:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 27
    iput v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->maxScale:F

    .line 32
    iput v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bAllowSlidePage:Z

    .line 40
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    .line 41
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bPointerDownFlag:Z

    .line 42
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bDoubleClickFlag:Z

    const/16 v0, 0xc8

    .line 46
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->DOUBLE_CLICK_TIMEOUT:I

    .line 56
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->start:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->minScale:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 27
    iput v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->maxScale:F

    .line 32
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bAllowSlidePage:Z

    .line 40
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    .line 41
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bPointerDownFlag:Z

    .line 42
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bDoubleClickFlag:Z

    const/16 p2, 0xc8

    .line 46
    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->DOUBLE_CLICK_TIMEOUT:I

    .line 61
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method private IsConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return p1

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p2, p3

    mul-int v0, v0, v0

    mul-int p2, p2, p2

    add-int/2addr v0, p2

    const/16 p2, 0x2710

    if-ge v0, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->minScale:F

    return p0
.end method

.method static synthetic access$102(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bPointerDownFlag:Z

    return p0
.end method

.method static synthetic access$302(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bPointerDownFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->IsConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bDoubleClickFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    return p0
.end method

.method static synthetic access$702(Lcom/generalplus/GoPlusDrone/View/TouchImageView;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->maxScale:F

    return p0
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 79
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 80
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;-><init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 82
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 83
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->m:[F

    .line 84
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 85
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    new-instance p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;-><init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)V

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method CenterImage()V
    .locals 4

    .line 293
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 301
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 303
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 304
    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 305
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 306
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 309
    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v2

    sub-float/2addr v3, v0

    .line 310
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    div-float/2addr v0, v1

    .line 314
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 316
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigWidth:F

    .line 317
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    int-to-float v0, v0

    mul-float v3, v3, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigHeight:F

    .line 318
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fixTrans()V

    return-void
.end method

.method DetermineAllowSlidePage(F)V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    .line 201
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bAllowSlidePage:Z

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bAllowSlidePage:Z

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-boolean v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bAllowSlidePage:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method fixTrans()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 213
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 214
    aget v0, v0, v2

    .line 216
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigWidth:F

    iget v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    mul-float v3, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    .line 217
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigHeight:F

    iget v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    mul-float v3, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getFixTrans(FFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    const/4 v1, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 230
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    .line 233
    :cond_2
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bDoubleClickFlag:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 235
    iput v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    .line 236
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    .line 237
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bDoubleClickFlag:Z

    .line 240
    :cond_3
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->saveScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    if-eqz v0, :cond_4

    .line 242
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->bCenterFlag:Z

    .line 243
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->CenterImage()V

    :cond_4
    return-void
.end method

.method getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getFixTrans(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    const/4 p3, 0x0

    :goto_0
    cmpg-float v1, p1, p2

    if-gez v1, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 278
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    .line 280
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    .line 282
    iget p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->oldMeasuredHeight:I

    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    if-ne p2, v0, :cond_0

    if-eq p2, p1, :cond_2

    :cond_0
    iget p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewWidth:I

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->viewHeight:I

    if-nez p2, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->oldMeasuredHeight:I

    .line 286
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->oldMeasuredWidth:I

    .line 288
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->CenterImage()V

    :cond_2
    :goto_0
    return-void
.end method
