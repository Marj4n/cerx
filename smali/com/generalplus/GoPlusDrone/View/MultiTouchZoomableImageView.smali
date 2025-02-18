.class public Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;
.super Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;
.source "MultiTouchZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;,
        Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private scaleRecognized:Z

.field protected transIgnoreScale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->transIgnoreScale:Z

    .line 38
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scaleRecognized:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->initMultiTouchZoomableImageView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->transIgnoreScale:Z

    .line 38
    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scaleRecognized:Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->initMultiTouchZoomableImageView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scaleRecognized:Z

    return p0
.end method

.method static synthetic access$102(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scaleRecognized:Z

    return p1
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method


# virtual methods
.method protected initMultiTouchZoomableImageView(Landroid/content/Context;)V
    .locals 3

    .line 55
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;-><init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;-><init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 213
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scaleRecognized:Z

    .line 219
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 224
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    invoke-interface {p1}, Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;->onImageGestureSingleTapConfirmed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method
