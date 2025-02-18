.class public interface abstract Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;
.super Ljava/lang/Object;
.source "USBMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/USBMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceConnectListener"
.end annotation


# virtual methods
.method public abstract onAttach(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onCancel(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
.end method

.method public abstract onDettach(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onDisconnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
.end method
