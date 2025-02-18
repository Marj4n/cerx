.class Lcom/jiangdg/usbcamera/UVCCameraHelper$1;
.super Ljava/lang/Object;
.source "UVCCameraHelper.java"

# interfaces
.implements Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiangdg/usbcamera/UVCCameraHelper;->initUSBMonitor(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

.field final synthetic val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;


# direct methods
.method constructor <init>(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    iput-object p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;->onAttachDev(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    return-void
.end method

.method public onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
    .locals 0

    .line 115
    iget-object p3, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-static {p3, p2}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->access$002(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 116
    iget-object p3, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->this$0:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-static {p3, p2}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->access$100(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 117
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;

    invoke-direct {p3, p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper$1$1;-><init>(Lcom/jiangdg/usbcamera/UVCCameraHelper$1;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 130
    iget-object p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 131
    invoke-interface {p2, p1, p3}, Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;->onConnectDev(Landroid/hardware/usb/UsbDevice;Z)V

    :cond_0
    return-void
.end method

.method public onDettach(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;->onDettachDev(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method

.method public onDisconnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    .line 139
    iget-object p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;->val$listener:Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;

    if-eqz p2, :cond_0

    .line 140
    invoke-interface {p2, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;->onDisConnectDev(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method
