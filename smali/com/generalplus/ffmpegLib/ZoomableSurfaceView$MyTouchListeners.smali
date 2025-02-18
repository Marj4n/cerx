.class Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;
.super Ljava/lang/Object;
.source "ZoomableSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTouchListeners"
.end annotation


# instance fields
.field dX:F

.field dY:F

.field final synthetic this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;


# direct methods
.method constructor <init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$100(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$202(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Z)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$202(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Z)Z

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    return v0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$200(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->dX:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->dY:F

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 101
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 103
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$300(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Landroid/view/View;)V

    goto :goto_1

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->dX:F

    .line 93
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;->dY:F

    :cond_4
    :goto_1
    return v0
.end method
