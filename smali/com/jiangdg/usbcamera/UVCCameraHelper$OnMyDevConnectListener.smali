.class public interface abstract Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;
.super Ljava/lang/Object;
.source "UVCCameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiangdg/usbcamera/UVCCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMyDevConnectListener"
.end annotation


# virtual methods
.method public abstract onAttachDev(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onConnectDev(Landroid/hardware/usb/UsbDevice;Z)V
.end method

.method public abstract onDettachDev(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onDisConnectDev(Landroid/hardware/usb/UsbDevice;)V
.end method
