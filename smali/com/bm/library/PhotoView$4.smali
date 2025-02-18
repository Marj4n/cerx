.class Lcom/bm/library/PhotoView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 883
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bm/library/PhotoView$Transform;->stop()V

    .line 888
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 889
    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 891
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 892
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 893
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 894
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 896
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$2600(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v0

    .line 901
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2700(Lcom/bm/library/PhotoView;)F

    move-result v2

    .line 903
    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    move p1, v0

    move v0, v2

    .line 906
    :goto_0
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 907
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 908
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 909
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$3000(Lcom/bm/library/PhotoView;)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$3100(Lcom/bm/library/PhotoView;)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 910
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 911
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 912
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 913
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 914
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$3200(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bm/library/PhotoView;->access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V

    .line 916
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2600(Lcom/bm/library/PhotoView;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/bm/library/PhotoView;->access$2602(Lcom/bm/library/PhotoView;Z)Z

    .line 917
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/bm/library/PhotoView$Transform;->withScale(FF)V

    .line 918
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bm/library/PhotoView$Transform;->start()V

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 773
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    .line 774
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1, v0}, Lcom/bm/library/PhotoView;->access$1002(Lcom/bm/library/PhotoView;Z)Z

    .line 775
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1, v0}, Lcom/bm/library/PhotoView;->access$102(Lcom/bm/library/PhotoView;Z)Z

    .line 776
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bm/library/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 782
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v0, :cond_2

    return v1

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 793
    :goto_1
    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, p4

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    .line 797
    :goto_3
    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$100(Lcom/bm/library/PhotoView;)Z

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v4

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_a

    .line 798
    :cond_7
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    .line 799
    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v4

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    add-float/2addr v2, v4

    goto :goto_4

    :cond_8
    const/high16 v5, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    sub-float/2addr v2, v4

    .line 806
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bm/library/PhotoView$Transform;->withRotate(II)V

    .line 808
    iget-object v3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3, v2}, Lcom/bm/library/PhotoView;->access$202(Lcom/bm/library/PhotoView;F)F

    .line 811
    :cond_a
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bm/library/PhotoView;->access$1700(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)V

    .line 813
    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bm/library/PhotoView$Transform;->withFling(FF)V

    .line 815
    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bm/library/PhotoView$Transform;->start()V

    .line 817
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 766
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$800(Lcom/bm/library/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 822
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object p1

    iget-boolean p1, p1, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz p1, :cond_0

    .line 823
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bm/library/PhotoView$Transform;->stop()V

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {p1, p3}, Lcom/bm/library/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    cmpg-float p1, p3, v0

    if-gez p1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 828
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p3, p1, Landroid/graphics/RectF;->left:F

    :cond_1
    cmpl-float p1, p3, v0

    if-lez p1, :cond_2

    .line 829
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 830
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float p3, p1, p3

    .line 832
    :cond_2
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float v1, p3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 833
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int p3, v1

    invoke-static {p1, p3}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    goto/16 :goto_0

    .line 834
    :cond_3
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$900(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 835
    :cond_4
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1900(Lcom/bm/library/PhotoView;)V

    .line 836
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_6

    cmpg-float p1, p3, v0

    if-gez p1, :cond_5

    .line 837
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 838
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lcom/bm/library/PhotoView;->access$2100(Lcom/bm/library/PhotoView;FF)F

    move-result p3

    :cond_5
    cmpl-float p1, p3, v0

    if-lez p1, :cond_6

    .line 839
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    .line 840
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lcom/bm/library/PhotoView;->access$2100(Lcom/bm/library/PhotoView;FF)F

    move-result p3

    .line 843
    :cond_6
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 844
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 845
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1, p2}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    .line 848
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {p1, p4}, Lcom/bm/library/PhotoView;->canScrollVerticallySelf(F)Z

    move-result p1

    if-eqz p1, :cond_a

    cmpg-float p1, p4, v0

    if-gez p1, :cond_8

    .line 849
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_8

    .line 850
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p4, p1, Landroid/graphics/RectF;->top:F

    :cond_8
    cmpl-float p1, p4, v0

    if-lez p1, :cond_9

    .line 851
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_9

    .line 852
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float p4, p1, p3

    .line 854
    :cond_9
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 855
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-static {p1, p3}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    goto/16 :goto_1

    .line 856
    :cond_a
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$900(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 857
    :cond_b
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1900(Lcom/bm/library/PhotoView;)V

    .line 858
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1000(Lcom/bm/library/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_d

    cmpg-float p1, p4, v0

    if-gez p1, :cond_c

    .line 859
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_c

    .line 860
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lcom/bm/library/PhotoView;->access$2300(Lcom/bm/library/PhotoView;FF)F

    move-result p4

    :cond_c
    cmpl-float p1, p4, v0

    if-lez p1, :cond_d

    .line 861
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p3}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_d

    .line 862
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2000(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lcom/bm/library/PhotoView;->access$2300(Lcom/bm/library/PhotoView;FF)F

    move-result p4

    .line 865
    :cond_d
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 866
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-static {p1, p3}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 867
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1, p2}, Lcom/bm/library/PhotoView;->access$902(Lcom/bm/library/PhotoView;Z)Z

    .line 870
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$600(Lcom/bm/library/PhotoView;)V

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 876
    iget-object p1, p0, Lcom/bm/library/PhotoView$4;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$1100(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/bm/library/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method
