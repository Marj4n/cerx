.class public abstract Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;
.super Landroid/view/View;
.source "BaseZoomableImageView.java"


# static fields
.field private static final MAX_IMAGE_RATIO_LARGE:F = 5.0f

.field private static final MAX_IMAGE_RATIO_WIDTH_LARGE_LANDSCAPE:F = 2.0f

.field public static final MIN_SDK_ENABLE_LAYER_TYPE_HARDWARE:I = 0xe

.field static final sAnimationDelay:I = 0x1f4

.field static final sPaintDelay:I = 0xfa

.field static final sPanRate:F = 7.0f

.field static final sScaleRate:F = 1.25f


# instance fields
.field private adjustLongImageEnable:Z

.field private fling:Z

.field private landscape:Z

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mFling:Ljava/lang/Runnable;

.field protected mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

.field private mLastDraw:D

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixValues:[F

.field private mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefresh:Ljava/lang/Runnable;

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mThisHeight:I

.field private mThisWidth:I

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 121
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 88
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrixValues:[F

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisHeight:I

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mRefresh:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 103
    iput-wide v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mLastDraw:D

    .line 109
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mFling:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    .line 117
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->landscape:Z

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->adjustLongImageEnable:Z

    .line 122
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->initBaseZoomableImageView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 88
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrixValues:[F

    const/4 p2, -0x1

    .line 91
    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisHeight:I

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mRefresh:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mLastDraw:D

    .line 109
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mFling:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 110
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    .line 117
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->landscape:Z

    const/4 p2, 0x1

    .line 513
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->adjustLongImageEnable:Z

    .line 128
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->initBaseZoomableImageView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FFFF)F
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->easeOut(FFFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    return p1
.end method

.method private easeOut(FFFF)F
    .locals 1

    div-float/2addr p1, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    mul-float v0, p1, p1

    mul-float v0, v0, p1

    add-float/2addr v0, p4

    mul-float p3, p3, v0

    add-float/2addr p3, p2

    return p3
.end method

.method private setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 380
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 382
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    move v2, v3

    .line 391
    :cond_0
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    div-float/2addr v1, v3

    .line 392
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 413
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 414
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p3

    int-to-float p3, v1

    .line 416
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p3

    .line 432
    :goto_0
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 434
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    sub-float/2addr p3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    .line 435
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    .line 433
    invoke-virtual {p2, p3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected static translatePoint(Landroid/graphics/Matrix;[F)V
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method


# virtual methods
.method protected center(ZZZ)V
    .locals 9

    .line 307
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 312
    fill-array-data v2, :array_0

    new-array v1, v1, [F

    .line 313
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 315
    invoke-static {v0, v2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 316
    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 318
    aget v0, v1, v5

    aget v3, v2, v5

    sub-float/2addr v0, v3

    .line 319
    aget v3, v1, v4

    aget v6, v2, v4

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v8, v0, p1

    if-gez v8, :cond_1

    sub-float/2addr p1, v0

    div-float/2addr p1, v6

    .line 326
    aget v0, v2, v5

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    .line 327
    :cond_1
    aget v0, v2, v5

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 328
    aget p1, v2, v5

    neg-float p1, p1

    goto :goto_1

    .line 329
    :cond_2
    aget v0, v1, v5

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    aget v0, v1, v5

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v0, v3, p2

    if-gez v0, :cond_4

    sub-float/2addr p2, v3

    div-float/2addr p2, v6

    .line 337
    aget v0, v2, v4

    :goto_2
    sub-float/2addr p2, v0

    goto :goto_3

    .line 338
    :cond_4
    aget v0, v2, v4

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 339
    aget p2, v2, v4

    neg-float p2, p2

    goto :goto_3

    .line 340
    :cond_5
    aget v0, v1, v4

    cmpg-float v0, v0, p2

    if-gez v0, :cond_6

    .line 341
    aget v0, v1, v4

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 345
    :goto_3
    invoke-virtual {p0, p2, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->postTranslate(FF)Z

    if-eqz p3, :cond_7

    .line 347
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    neg-float p2, p2

    neg-float p1, p1

    invoke-direct {p3, p2, v7, p1, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    const-wide/16 p1, 0xfa

    .line 349
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 350
    invoke-virtual {p0, p3}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 352
    :cond_7
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public clear()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected fling()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    return v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 442
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 443
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 358
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method protected initBaseZoomableImageView(Landroid/content/Context;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 137
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->landscape:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->landscape:Z

    .line 144
    :goto_0
    new-instance p1, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$1;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$1;-><init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mRefresh:Ljava/lang/Runnable;

    return-void
.end method

.method protected isScrollOver(F)Z
    .locals 5

    const/4 v0, 0x0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 696
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    cmpg-float v1, p1, v3

    if-lez v1, :cond_1

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 701
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 702
    invoke-virtual {p0, v4, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v4

    mul-float v1, v1, v4

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_2

    .line 703
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ScrollOver"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "Vincent"

    const-string v2, "isScrollOver"

    .line 708
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    return v0
.end method

.method protected maxZoom()F
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 454
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 455
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 456
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v0, v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mLastDraw:D

    sub-double/2addr v0, v3

    const-wide v3, 0x406f400000000000L    # 250.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    .line 678
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mLastDraw:D

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 685
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mRefresh:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 686
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mRefresh:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 177
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 178
    iput p4, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    sub-int/2addr p5, p3

    .line 179
    iput p5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisHeight:I

    .line 180
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 182
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 183
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onScrollFinish()V
    .locals 0

    return-void
.end method

.method protected postTranslate(FF)Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result p1

    return p1
.end method

.method protected scrollBy(FFF)V
    .locals 8

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 617
    new-instance v7, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;-><init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FJFF)V

    iput-object v7, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mFling:Ljava/lang/Runnable;

    .line 639
    invoke-virtual {p0, v7}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    return-void
.end method

.method public setAdjustLongImageEnable(Z)V
    .locals 0

    .line 516
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->adjustLongImageEnable:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 272
    new-instance p2, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;

    invoke-direct {p2, p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;-><init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1, p2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    .line 283
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 285
    :cond_1
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 286
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 293
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 294
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->maxZoom()F

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMaxZoom:F

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Fragment/BitmapUtils;->getTextureSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Fragment/BitmapUtils;->getTextureSize()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 222
    invoke-virtual {p0, v1, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 224
    invoke-virtual {p0, v1, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 230
    new-instance v0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;-><init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mOnLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    .line 240
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 241
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 244
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v0, :cond_5

    .line 246
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_5
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 251
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 252
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->maxZoom()F

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMaxZoom:F

    if-eqz p2, :cond_6

    .line 256
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomToScreen()V

    :cond_6
    return-void
.end method

.method public setImageGestureListener(Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 205
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method protected stopFling()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mFling:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 644
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->fling:Z

    .line 646
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->onScrollFinish()V

    :cond_0
    return-void
.end method

.method protected updateSelection()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zoomDefault()F
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 473
    :cond_0
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 474
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisHeight:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 475
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public zoomIn()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 560
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomIn(F)V

    return-void
.end method

.method protected zoomIn(F)V
    .locals 4

    .line 570
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMaxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 578
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 580
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 581
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public zoomOut()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 565
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomOut(F)V

    return-void
.end method

.method protected zoomOut(F)V
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 592
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 594
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const v3, 0x3f4ccccd    # 0.8f

    .line 595
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 596
    invoke-virtual {p0, v2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 597
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float/2addr v3, p1

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 601
    :goto_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 602
    invoke-virtual {p0, v0, v0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->center(ZZZ)V

    return-void
.end method

.method public zoomTo(F)V
    .locals 3

    .line 552
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 553
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 555
    invoke-virtual {p0, p1, v0, v1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomTo(FFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 2

    .line 480
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mMaxZoom:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 487
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 488
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 489
    invoke-virtual {p0, p2, p2, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->center(ZZZ)V

    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 9

    .line 494
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    .line 495
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale()F

    move-result v5

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 499
    new-instance p1, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$4;

    move-object v0, p1

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$4;-><init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FJFFFF)V

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zoomToScreen()V
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 524
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mThisWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v0, 0x0

    .line 527
    iget-boolean v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->adjustLongImageEnable:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 529
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :goto_0
    move v1, v2

    const/4 v0, 0x1

    goto :goto_1

    .line 532
    :cond_1
    iget-boolean v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->landscape:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getScale()F

    move-result v0

    div-float/2addr v1, v0

    .line 542
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 543
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 544
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 546
    :cond_3
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomDefault()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->zoomTo(F)V

    :goto_2
    return-void
.end method
