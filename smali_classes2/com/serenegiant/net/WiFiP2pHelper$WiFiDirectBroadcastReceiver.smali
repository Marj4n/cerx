.class Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiP2pHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/WiFiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mParent:Lcom/serenegiant/net/WiFiP2pHelper;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/serenegiant/net/WiFiP2pHelper;)V
    .locals 0

    .line 470
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 472
    iput-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 473
    iput-object p3, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string p1, "wifi_p2p_state"

    const/4 v0, -0x1

    .line 483
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 486
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/serenegiant/net/WiFiP2pHelper;->access$000(Lcom/serenegiant/net/WiFiP2pHelper;Z)V

    goto/16 :goto_1

    .line 489
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/serenegiant/net/WiFiP2pHelper;->access$000(Lcom/serenegiant/net/WiFiP2pHelper;Z)V

    .line 490
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {p1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$100(Lcom/serenegiant/net/WiFiP2pHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 494
    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {p2, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$900(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 505
    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {p2, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    const-string p1, "networkInfo"

    .line 511
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 516
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 519
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$1000(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_1

    .line 522
    :cond_4
    iget-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {p1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$100(Lcom/serenegiant/net/WiFiP2pHelper;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 525
    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {p2, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_3
    const-string p1, "wifiP2pDevice"

    .line 531
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 533
    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {p2, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$1100(Lcom/serenegiant/net/WiFiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 535
    iget-object p2, p0, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;->mParent:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {p2, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnError(Ljava/lang/Exception;)V

    :cond_6
    :goto_1
    return-void
.end method
