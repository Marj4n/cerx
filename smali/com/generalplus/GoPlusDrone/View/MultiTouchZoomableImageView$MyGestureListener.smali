.class Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTouchZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;-><init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomDefault()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomDefault()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomTo(F)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomDefault()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomTo(FFFF)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_2

    :cond_1
    return v0

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->access$200(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    const-string v2, "MultiTouchZoomableImageView"

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 166
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    const-string v0, "Fling Left"

    .line 167
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 169
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    const-string v0, "Fling Right"

    .line 170
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 172
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    const-string v0, "Fling Up"

    .line 173
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 175
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    const-string v0, "Fling Down"

    .line 176
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-boolean v0, v0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->transIgnoreScale:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->getScale()F

    move-result v0

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomDefault()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_7

    .line 179
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    invoke-interface {p1}, Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;->onImageGestureFlingDown()V

    return v1

    .line 185
    :cond_7
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 188
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x44480000    # 800.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_8

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 189
    :cond_8
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v2, v0, v1, v3}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->scrollBy(FFF)V

    .line 190
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 198
    :catch_1
    :cond_9
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->access$100(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    invoke-interface {p1}, Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;->onImageGestureLongPress()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->access$200(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->access$200(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-boolean p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->transIgnoreScale:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->getScale()F

    move-result p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomDefault()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    goto :goto_1

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_8

    .line 132
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 116
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->stopFling()V

    .line 117
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    neg-float p2, p3

    neg-float p4, p4

    invoke-virtual {p1, p2, p4}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->postTranslate(FF)Z

    .line 119
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1, p3}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->isScrollOver(F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 120
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_7

    .line 121
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 124
    :cond_6
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_7

    .line 125
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 129
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1, v1, v1, v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->center(ZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 136
    :goto_3
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_8
    :goto_4
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$MyGestureListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->mImageGestureListener:Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;

    invoke-interface {p1}, Lcom/generalplus/GoPlusDrone/View/ImageGestureListener;->onImageGestureSingleTapConfirmed()V

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
