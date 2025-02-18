.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$3;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->onConnectedFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$3;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$3;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivBroken:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
