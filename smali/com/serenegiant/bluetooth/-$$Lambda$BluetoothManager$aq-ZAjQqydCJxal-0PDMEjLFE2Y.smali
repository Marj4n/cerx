.class public final synthetic Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->lambda$callOnDiscover$0$BluetoothManager(Ljava/util/List;)V

    return-void
.end method
