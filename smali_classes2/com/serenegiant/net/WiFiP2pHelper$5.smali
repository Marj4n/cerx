.class Lcom/serenegiant/net/WiFiP2pHelper$5;
.super Ljava/lang/Object;
.source "WiFiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/WiFiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/net/WiFiP2pHelper;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/WiFiP2pHelper;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$5;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    .line 433
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$5;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$800(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper$5;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$800(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 436
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper$5;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$800(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$5;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {p1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$800(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnUpdateDevices(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 437
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
