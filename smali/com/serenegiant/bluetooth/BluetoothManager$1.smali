.class Lcom/serenegiant/bluetooth/BluetoothManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 593
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 595
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 597
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    .line 598
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {p2}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$000(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$000(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    invoke-direct {v1, p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnDiscover()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 600
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 603
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 605
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnDiscover()V

    :cond_2
    :goto_1
    return-void
.end method
