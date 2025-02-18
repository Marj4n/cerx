.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1249
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1250
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1251
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1253
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1254
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v3

    const-string v4, "Scale"

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v3

    if-gez v3, :cond_1

    .line 1255
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Down-,mWidthStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 1257
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 1259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Down-,mWidthOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mHeightOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mScale:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    const v6, 0x3e19999a    # 0.15f

    add-float/2addr v5, v6

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;F)F

    .line 1261
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v5, v5, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v5

    mul-float v0, v0, v5

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1262
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

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1264
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1265
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
