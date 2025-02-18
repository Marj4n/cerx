.class public Lcom/bm/library/RotateGestureDetector;
.super Ljava/lang/Object;
.source "RotateGestureDetector.java"


# static fields
.field private static final MAX_DEGREES_STEP:I = 0x78


# instance fields
.field private mCurrSlope:F

.field private mListener:Lcom/bm/library/OnRotateListener;

.field private mPrevSlope:F

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Lcom/bm/library/OnRotateListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bm/library/RotateGestureDetector;->mListener:Lcom/bm/library/OnRotateListener;

    return-void
.end method

.method private caculateSlope(Landroid/view/MotionEvent;)F
    .locals 2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/bm/library/RotateGestureDetector;->y2:F

    .line 61
    iget v0, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/bm/library/RotateGestureDetector;->caculateSlope(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 38
    invoke-direct {p0, p1}, Lcom/bm/library/RotateGestureDetector;->caculateSlope(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/bm/library/RotateGestureDetector;->mCurrSlope:F

    float-to-double v0, p1

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 41
    iget p1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/bm/library/RotateGestureDetector;->mListener:Lcom/bm/library/OnRotateListener;

    double-to-float v0, v0

    iget v1, p0, Lcom/bm/library/RotateGestureDetector;->x2:F

    iget v2, p0, Lcom/bm/library/RotateGestureDetector;->x1:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/bm/library/RotateGestureDetector;->y2:F

    iget v4, p0, Lcom/bm/library/RotateGestureDetector;->y1:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-interface {p1, v0, v1, v3}, Lcom/bm/library/OnRotateListener;->onRotate(FFF)V

    .line 48
    :cond_2
    iget p1, p0, Lcom/bm/library/RotateGestureDetector;->mCurrSlope:F

    iput p1, p0, Lcom/bm/library/RotateGestureDetector;->mPrevSlope:F

    :cond_3
    :goto_0
    return-void
.end method
