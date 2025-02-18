.class Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;
.super Ljava/lang/Object;
.source "UVCCameraHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiangdg/usbcamera/UVCCameraHelper$1;


# direct methods
.method constructor <init>(Lcom/jiangdg/usbcamera/UVCCameraHelper$1;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;->this$1:Lcom/jiangdg/usbcamera/UVCCameraHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 122
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;->this$1:Lcom/jiangdg/usbcamera/UVCCameraHelper$1;

    iget-object v0, v0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    iget-object v1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;->this$1:Lcom/jiangdg/usbcamera/UVCCameraHelper$1;

    iget-object v1, v1, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-static {v1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->access$200(Lcom/jiangdg/usbcamera/UVCCameraHelper;)Lcom/serenegiant/usb/widget/CameraViewInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->startPreview(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    return-void
.end method
