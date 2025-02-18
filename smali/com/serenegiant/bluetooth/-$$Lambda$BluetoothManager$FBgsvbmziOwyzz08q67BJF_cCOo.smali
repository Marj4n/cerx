.class public final synthetic Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$FBgsvbmziOwyzz08q67BJF_cCOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/bluetooth/BluetoothManager;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$FBgsvbmziOwyzz08q67BJF_cCOo;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$FBgsvbmziOwyzz08q67BJF_cCOo;->f$0:Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lcom/serenegiant/bluetooth/BluetoothManager;->lambda$callOnDisConnect$2$BluetoothManager()V

    return-void
.end method
