.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->notifyP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

.field final synthetic val$wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;->val$wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$800(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    .line 343
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;->val$wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-interface {v1, v2}, Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;->onCallP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method
