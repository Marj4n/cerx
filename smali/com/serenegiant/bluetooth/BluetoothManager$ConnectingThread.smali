.class Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;
.super Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingThread"
.end annotation


# instance fields
.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectingThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {p1, p2, p3}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$700(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    .line 1076
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothSocket;)V

    .line 1079
    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$500(Lcom/serenegiant/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$500(Lcom/serenegiant/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1094
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$800(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1107
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$902(Lcom/serenegiant/bluetooth/BluetoothManager;Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;)Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    .line 1108
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->onConnect(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1108
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .line 1096
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1100
    iget-boolean v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->mIsCanceled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to close socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnFailed()V

    return-void
.end method
