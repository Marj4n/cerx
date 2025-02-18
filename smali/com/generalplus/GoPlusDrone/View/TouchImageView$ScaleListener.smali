.class Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/View/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;Lcom/generalplus/GoPlusDrone/View/TouchImageView$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;-><init>(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 174
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v3

    mul-float v3, v3, v0

    invoke-static {v2, v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$702(Lcom/generalplus/GoPlusDrone/View/TouchImageView;F)F

    .line 177
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$900(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$900(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$702(Lcom/generalplus/GoPlusDrone/View/TouchImageView;F)F

    .line 179
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$900(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v0

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$1000(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$1000(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$702(Lcom/generalplus/GoPlusDrone/View/TouchImageView;F)F

    .line 182
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$1000(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget v1, v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigWidth:F

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$600(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget v1, v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fOrigHeight:F

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    .line 186
    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$700(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$800(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_2

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_3

    .line 187
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$600(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->access$800(Lcom/generalplus/GoPlusDrone/View/TouchImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 191
    :goto_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->fixTrans()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TouchImageView$ScaleListener;->this$0:Lcom/generalplus/GoPlusDrone/View/TouchImageView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/generalplus/GoPlusDrone/View/TouchImageView;->mode:I

    const/4 p1, 0x1

    return p1
.end method
