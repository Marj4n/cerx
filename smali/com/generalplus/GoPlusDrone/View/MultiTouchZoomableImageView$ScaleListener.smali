.class Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MultiTouchZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float v0, v0, v1

    .line 71
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {v1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->maxZoom()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->zoomTo(FFF)V

    .line 75
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->invalidate()V

    .line 77
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->access$102(Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
