.class Lcom/gizthon/camera/view/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/view/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/gizthon/camera/view/TouchImageView;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gizthon/camera/view/TouchImageView;Lcom/gizthon/camera/view/TouchImageView$1;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;-><init>(Lcom/gizthon/camera/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 240
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v1}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v1

    .line 242
    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v3

    mul-float v3, v3, v0

    invoke-static {v2, v3}, Lcom/gizthon/camera/view/TouchImageView;->access$702(Lcom/gizthon/camera/view/TouchImageView;F)F

    .line 243
    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v3}, Lcom/gizthon/camera/view/TouchImageView;->access$900(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v0}, Lcom/gizthon/camera/view/TouchImageView;->access$900(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/gizthon/camera/view/TouchImageView;->access$702(Lcom/gizthon/camera/view/TouchImageView;F)F

    .line 245
    iget-object v0, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v0}, Lcom/gizthon/camera/view/TouchImageView;->access$900(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v0

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v3}, Lcom/gizthon/camera/view/TouchImageView;->access$1000(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v0}, Lcom/gizthon/camera/view/TouchImageView;->access$1000(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/gizthon/camera/view/TouchImageView;->access$702(Lcom/gizthon/camera/view/TouchImageView;F)F

    .line 248
    iget-object v0, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v0}, Lcom/gizthon/camera/view/TouchImageView;->access$1000(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v0

    goto :goto_0

    .line 251
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    iget v1, v1, Lcom/gizthon/camera/view/TouchImageView;->fOrigWidth:F

    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$600(Lcom/gizthon/camera/view/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    iget v1, v1, Lcom/gizthon/camera/view/TouchImageView;->fOrigHeight:F

    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$700(Lcom/gizthon/camera/view/TouchImageView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$800(Lcom/gizthon/camera/view/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    iget-object v1, v1, Lcom/gizthon/camera/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_2

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    iget-object p1, p1, Lcom/gizthon/camera/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v1}, Lcom/gizthon/camera/view/TouchImageView;->access$600(Lcom/gizthon/camera/view/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-static {v2}, Lcom/gizthon/camera/view/TouchImageView;->access$800(Lcom/gizthon/camera/view/TouchImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 257
    :goto_2
    iget-object p1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/TouchImageView;->fixTrans()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/gizthon/camera/view/TouchImageView$ScaleListener;->this$0:Lcom/gizthon/camera/view/TouchImageView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/gizthon/camera/view/TouchImageView;->mode:I

    const/4 p1, 0x1

    return p1
.end method
