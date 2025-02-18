.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$16;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 1749
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$16;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1752
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$16;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
