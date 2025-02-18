.class abstract Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;
.super Ljava/lang/Thread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BluetoothSocketThread"
.end annotation


# instance fields
.field protected volatile mIsCanceled:Z

.field protected final mmSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 846
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 847
    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 856
    iput-boolean v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;->mIsCanceled:Z

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 860
    invoke-static {}, Lcom/serenegiant/bluetooth/BluetoothManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to call BluetoothSocket#close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
