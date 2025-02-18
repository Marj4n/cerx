.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallP2pConnectionChanged(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onCallP2pConnectionChanged- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isWifiDirectGO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz p1, :cond_0

    .line 416
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->connectDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCallP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    return-void
.end method

.method public onCallP2pPeersChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_wifi_ssid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 377
    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_3

    .line 384
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;)V

    invoke-virtual {p1, v2, v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->connectP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 403
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 404
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public onCallP2pStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 364
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
