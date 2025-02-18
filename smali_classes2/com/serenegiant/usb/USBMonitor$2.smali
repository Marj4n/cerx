.class Lcom/serenegiant/usb/USBMonitor$2;
.super Ljava/lang/Object;
.source "USBMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 615
    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 618
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$100(Lcom/serenegiant/usb/USBMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList()Ljava/util/List;

    move-result-object v0

    .line 620
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 623
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2}, Lcom/serenegiant/usb/USBMonitor;->access$1000(Lcom/serenegiant/usb/USBMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 624
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v3}, Lcom/serenegiant/usb/USBMonitor;->access$1000(Lcom/serenegiant/usb/USBMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 625
    iget-object v4, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v4}, Lcom/serenegiant/usb/USBMonitor;->access$1000(Lcom/serenegiant/usb/USBMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 627
    iget-object v6, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-virtual {v6, v5}, Lcom/serenegiant/usb/USBMonitor;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    goto :goto_0

    .line 629
    :cond_1
    iget-object v4, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v4}, Lcom/serenegiant/usb/USBMonitor;->access$1000(Lcom/serenegiant/usb/USBMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 630
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2}, Lcom/serenegiant/usb/USBMonitor;->access$800(Lcom/serenegiant/usb/USBMonitor;)I

    move-result v2

    if-gt v1, v2, :cond_2

    if-le v4, v3, :cond_3

    .line 632
    :cond_2
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2, v1}, Lcom/serenegiant/usb/USBMonitor;->access$802(Lcom/serenegiant/usb/USBMonitor;I)I

    .line 633
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v2}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 635
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 636
    iget-object v4, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v4}, Lcom/serenegiant/usb/USBMonitor;->access$1200(Lcom/serenegiant/usb/USBMonitor;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/serenegiant/usb/USBMonitor$2$1;

    invoke-direct {v5, p0, v3}, Lcom/serenegiant/usb/USBMonitor$2$1;-><init>(Lcom/serenegiant/usb/USBMonitor$2;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$2;->this$0:Lcom/serenegiant/usb/USBMonitor;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1200(Lcom/serenegiant/usb/USBMonitor;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    .line 630
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
