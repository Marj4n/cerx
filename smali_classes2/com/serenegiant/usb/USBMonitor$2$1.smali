.class Lcom/serenegiant/usb/USBMonitor$2$1;
.super Ljava/lang/Object;
.source "USBMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/USBMonitor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/serenegiant/usb/USBMonitor$2;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/USBMonitor$2;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor$2$1;->this$1:Lcom/serenegiant/usb/USBMonitor$2;

    iput-object p2, p0, Lcom/serenegiant/usb/USBMonitor$2$1;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$2$1;->this$1:Lcom/serenegiant/usb/USBMonitor$2;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$2$1;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v0, v1}, Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;->onAttach(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
