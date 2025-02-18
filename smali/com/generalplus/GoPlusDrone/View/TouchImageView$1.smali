.class Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/TouchImageView;->sharedConstructing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 92
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p1, v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$302(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z

    .line 143
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iput v1, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    goto/16 :goto_1

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p1, v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$302(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z

    .line 149
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iput v1, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    goto/16 :goto_1

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget p2, p2, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    if-ne p2, v2, :cond_6

    .line 116
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    .line 117
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$600(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget v4, v4, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigWidth:F

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v1, p2, v3, v4}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getFixDragTrans(FFF)F

    move-result p2

    .line 120
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$800(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget v4, v4, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigHeight:F

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->getFixDragTrans(FFF)F

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 122
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fixTrans()V

    .line 123
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$202(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 131
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iput v1, p2, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    .line 132
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    .line 133
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_6

    if-ge p1, v0, :cond_6

    .line 136
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->performClick()Z

    goto :goto_1

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$102(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 100
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$200(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$100(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$300(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    .line 101
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$100(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$200(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v0, v3, v4, p2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$400(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 103
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p2, v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$502(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z

    goto :goto_0

    .line 105
    :cond_5
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p2, v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$502(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Z)Z

    .line 109
    :goto_0
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 110
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->start:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 111
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iput v2, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    .line 153
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->DetermineAllowSlidePage(F)V

    .line 154
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p2, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 155
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->invalidate()V

    return v2
.end method
