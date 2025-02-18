.class Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;
.super Ljava/lang/Object;
.source "UVCUSBCamera.java"

# interfaces
.implements Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/core/usb/UVCUSBCamera;->connectDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachDev(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-static {p1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$000(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$002(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z

    .line 90
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-static {p1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$100(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-static {p1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$100(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->requestPermission(I)V

    :cond_0
    return-void
.end method

.method public onConnectDev(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$302(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$302(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z

    .line 114
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    iget-object p1, p1, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    const/16 p2, 0x4e23

    invoke-interface {p1, p2}, Lcom/gizthon/camera/core/OnCameraConnectedListener;->onConnectedSuccess(I)V

    :goto_0
    return-void
.end method

.method public onDettachDev(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-static {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$000(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$002(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z

    .line 101
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-static {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$100(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->closeCamera()V

    .line 102
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is out"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->access$200(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisConnectDev(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;->this$0:Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    iget-object p1, p1, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    const/16 v0, 0x4e24

    invoke-interface {p1, v0}, Lcom/gizthon/camera/core/OnCameraConnectedListener;->onConnectedSuccess(I)V

    return-void
.end method
