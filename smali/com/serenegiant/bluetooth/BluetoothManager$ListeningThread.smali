.class Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;
.super Ljava/lang/Thread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListeningThread"
.end annotation


# instance fields
.field private volatile mIsCanceled:Z

.field private final mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Z)V
    .locals 2

    .line 973
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListeningThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 981
    :try_start_0
    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$500(Lcom/serenegiant/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$400(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    goto :goto_0

    .line 983
    :cond_0
    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$500(Lcom/serenegiant/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$600(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 986
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 988
    :goto_0
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 1034
    iput-boolean v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->mIsCanceled:Z

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close() of server failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 997
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 1008
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->onConnect(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 1018
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1020
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not close unwanted socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1002
    iget-boolean v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->mIsCanceled:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
