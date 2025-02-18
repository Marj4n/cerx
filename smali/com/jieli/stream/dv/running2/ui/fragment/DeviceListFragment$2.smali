.class Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallP2pConnectionChanged(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 186
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onCallP2pConnectionChanged- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 188
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isWifiDirectGO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz p1, :cond_1

    .line 191
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->connectDevice(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCallP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    return-void
.end method

.method public onCallP2pPeersChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 149
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    if-nez v0, :cond_6

    .line 150
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onCallP2pPeersChanged- size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 154
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-onCallP2pPeersChanged- device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isGroupOwner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 156
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    :cond_3
    if-eqz v0, :cond_6

    .line 162
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/jieli/stream/dv/running2/util/IConstant;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 164
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->setConnectWifiDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 165
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const-string v1, "current_wifi_ssid"

    invoke-static {v0, v1, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v0, 0x1

    const-string v1, "reconnect_type"

    invoke-static {p1, v1, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 170
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isWifiDirectGO()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 171
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->requestConnectionInfo()V

    goto :goto_0

    .line 173
    :cond_5
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "It isn\'t WiFi direct go"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCallP2pStateChanged(I)V
    .locals 3

    .line 144
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onCallP2pStateChanged- state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
