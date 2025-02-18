.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeResult([BIIJI)V
    .locals 0

    const/4 p4, 0x1

    if-ne p6, p4, :cond_0

    .line 118
    invoke-static {p1, p2, p3}, Lcom/jiangdg/usbcamera/utils/FileUtils;->putFileStream([BII)V

    :cond_0
    return-void
.end method

.method public onRecordResult(Ljava/lang/String;)V
    .locals 2

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;

    iget-object v1, v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {v1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;

    invoke-direct {v1, p0, p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
