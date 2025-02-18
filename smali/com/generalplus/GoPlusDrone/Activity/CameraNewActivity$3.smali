.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 256
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iget p1, p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 257
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iput v0, p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iget v0, p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    .line 261
    :goto_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 262
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 263
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    .line 265
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    const-string v3, "Scale"

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    if-gez v2, :cond_2

    .line 267
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Up-,mWidthStart:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mHeightStart:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 269
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 273
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Up-,mWidthOld:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mHeightOld:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mScale:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-static {v2, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;F)F

    .line 275
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;F)F

    goto :goto_1

    .line 277
    :cond_3
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    .line 278
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;F)F

    .line 280
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Up-,mWidthNew:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightNew:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 286
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotY(F)V

    const-string p1, "onDraw"

    const-string v0, "onDrawonDrawonDraw2222"

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 293
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "onDrawonDrawonDraw3333"

    .line 294
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
