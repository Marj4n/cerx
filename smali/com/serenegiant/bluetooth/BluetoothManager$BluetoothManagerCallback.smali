.class public interface abstract Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothManagerCallback"
.end annotation


# virtual methods
.method public abstract onConnect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onDiscover(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFailed()V
.end method

.method public abstract onReceive([BI)V
.end method
