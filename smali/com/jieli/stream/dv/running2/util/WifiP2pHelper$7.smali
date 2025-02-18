.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$900(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$900(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$900(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$1000(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Ljava/util/List;)V

    :cond_0
    return-void
.end method
