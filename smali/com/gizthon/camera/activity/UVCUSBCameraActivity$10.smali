.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->initDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llResolution:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$100(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "x"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 180
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 181
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 182
    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->updateResolution(II)V

    :cond_1
    :goto_0
    return-void
.end method
