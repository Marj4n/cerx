.class public final synthetic Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->lambda$callOnConnect$1$BluetoothManager(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
