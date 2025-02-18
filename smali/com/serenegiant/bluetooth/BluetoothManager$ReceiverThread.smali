.class Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;
.super Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverThread"
.end annotation


# instance fields
.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 872
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothSocket;)V

    const/4 p1, 0x0

    .line 883
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 884
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v0, p1

    .line 886
    :goto_0
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp sockets not created"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    :goto_1
    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mmInStream:Ljava/io/InputStream;

    .line 890
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mmOutStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 900
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 906
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v2, v0, v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnReceive([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 909
    iget-boolean v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mIsCanceled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnDisConnect()V

    :cond_2
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 930
    iget-boolean v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mIsCanceled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 931
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 925
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already disconnected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->this$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 951
    iget-boolean p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->mIsCanceled:Z

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 952
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 946
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already disconnected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
