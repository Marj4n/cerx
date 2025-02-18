.class Lcom/serenegiant/usb/USBMonitor$3;
.super Ljava/lang/Object;
.source "USBMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/USBMonitor;->processConnect(Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/USBMonitor;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    iput-object p2, p0, Lcom/serenegiant/usb/USBMonitor$3;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$700(Lcom/serenegiant/usb/USBMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$3;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$3;->val$device:Landroid/hardware/usb/UsbDevice;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$1;)V

    .line 666
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v1}, Lcom/serenegiant/usb/USBMonitor;->access$700(Lcom/serenegiant/usb/USBMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$3;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$3;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$3;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v2, v3, v0, v1}, Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;->onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V

    :cond_1
    return-void
.end method
