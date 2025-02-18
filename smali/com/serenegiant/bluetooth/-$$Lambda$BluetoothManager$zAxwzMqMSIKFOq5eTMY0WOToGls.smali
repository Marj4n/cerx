.class public final synthetic Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$1:[B

    iput p3, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$1:[B

    iget v2, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->lambda$callOnReceive$4$BluetoothManager([BI)V

    return-void
.end method
