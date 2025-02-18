.class Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;


# direct methods
.method private constructor <init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;-><init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$500(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$600(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGlobalLayout: "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$402(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;F)F

    .line 118
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$700(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v0

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    iget-object v2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$800(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$402(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;F)F

    .line 120
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$500(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v0

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$600(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v1

    iget-object v2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;->this$0:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {p1, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->access$300(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
