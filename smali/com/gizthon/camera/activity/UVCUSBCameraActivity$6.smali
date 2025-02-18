.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 94
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isCameraOpened()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isPushing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/MergeCamera/Media/Video/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/serenegiant/usb/encoder/RecordParams;

    invoke-direct {v0}, Lcom/serenegiant/usb/encoder/RecordParams;-><init>()V

    .line 108
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/encoder/RecordParams;->setRecordPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 109
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/encoder/RecordParams;->setVoiceClose(Z)V

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/RecordParams;->setRecordDuration(I)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/encoder/RecordParams;->setSupportOverlay(Z)V

    .line 113
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;)V

    invoke-virtual {p1, v0, v1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->startPusher(Lcom/serenegiant/usb/encoder/RecordParams;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V

    .line 142
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$500(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lcom/jiangdg/usbcamera/utils/FileUtils;->releaseFile()V

    .line 146
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->stopPusher()V

    .line 147
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$600(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    :goto_0
    return-void

    .line 99
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    const-string v0, "sorry,camera open failed"

    invoke-static {p1, v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$400(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;Ljava/lang/String;)V

    return-void
.end method
