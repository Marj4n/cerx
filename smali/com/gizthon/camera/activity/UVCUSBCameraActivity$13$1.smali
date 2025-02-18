.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->onConnectedSuccess(I)V
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

    .line 244
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$100(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivBroken:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->updateResolution(II)V

    .line 250
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$200(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    iget-object v1, v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$700(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->selected(I)V

    return-void
.end method
