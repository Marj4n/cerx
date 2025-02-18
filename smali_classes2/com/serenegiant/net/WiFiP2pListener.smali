.class public interface abstract Lcom/serenegiant/net/WiFiP2pListener;
.super Ljava/lang/Object;
.source "WiFiP2pListener.java"


# virtual methods
.method public abstract onConnect(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onStateChanged(Z)V
.end method

.method public abstract onUpdateDevices(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation
.end method
