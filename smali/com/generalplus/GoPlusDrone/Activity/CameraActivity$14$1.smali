.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;)V
    .locals 0

    .line 1413
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1418
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1419
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1420
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1422
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1423
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v3

    const-string v4, "Scale"

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v3

    if-gez v3, :cond_1

    .line 1424
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Down-,mWidthStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1602(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I

    .line 1426
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1702(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I

    .line 1428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Down-,mWidthOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mHeightOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mScale:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v5

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1802(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;F)F

    .line 1430
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v5

    mul-float v0, v0, v5

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Down-,mWidthNew:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightNew:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1433
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1434
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
