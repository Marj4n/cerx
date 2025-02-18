.class public interface abstract Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;
.super Ljava/lang/Object;
.source "IWifiDirectListener.java"


# virtual methods
.method public abstract onCallP2pConnectionChanged(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end method

.method public abstract onCallP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
.end method

.method public abstract onCallP2pPeersChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCallP2pStateChanged(I)V
.end method
