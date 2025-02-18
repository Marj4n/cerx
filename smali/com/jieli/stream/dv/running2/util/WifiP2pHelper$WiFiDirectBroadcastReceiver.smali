.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_5

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "wifiP2pDevice"

    .line 288
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 289
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$700(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$300(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, "networkInfo"

    .line 279
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_5

    .line 280
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 281
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$300(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$200(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$600(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_2

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->requestPeerList()V

    goto :goto_2

    :cond_4
    const-string p1, "wifi_p2p_state"

    .line 262
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 263
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$400(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;I)V

    if-ne p1, v4, :cond_5

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$500(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 266
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$502(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69a8390a -> :sswitch_3
        -0x5d62fb1d -> :sswitch_2
        -0x532207c3 -> :sswitch_1
        0x6511c17d -> :sswitch_0
    .end sparse-switch
.end method
