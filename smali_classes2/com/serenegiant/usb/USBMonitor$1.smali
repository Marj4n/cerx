.class Lcom/serenegiant/usb/USBMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "USBMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/USBMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/USBMonitor;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/USBMonitor;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 572
    iget-object p1, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p1}, Lcom/serenegiant/usb/USBMonitor;->access$100(Lcom/serenegiant/usb/USBMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 573
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$200(Lcom/serenegiant/usb/USBMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    monitor-enter v0

    :try_start_0
    const-string p1, "device"

    .line 577
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    const-string v2, "permission"

    .line 578
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    .line 581
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->access$300(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->access$400(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    .line 587
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "device"

    .line 589
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 590
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-virtual {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/serenegiant/usb/USBMonitor;->access$500(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;Z)Z

    .line 591
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->access$600(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    :cond_4
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 592
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "device"

    .line 594
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_6

    .line 596
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2}, Lcom/serenegiant/usb/USBMonitor;->access$700(Lcom/serenegiant/usb/USBMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz p2, :cond_5

    .line 599
    invoke-virtual {p2}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->close()V

    .line 601
    :cond_5
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2, v1}, Lcom/serenegiant/usb/USBMonitor;->access$802(Lcom/serenegiant/usb/USBMonitor;I)I

    .line 602
    iget-object p2, p0, Lcom/serenegiant/usb/USBMonitor$1;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->access$900(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    :cond_6
    :goto_1
    return-void
.end method
