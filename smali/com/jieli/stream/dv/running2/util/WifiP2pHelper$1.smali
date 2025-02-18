.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->connectP2pDeviceForGroup(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

.field final synthetic val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field final synthetic val$device:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 148
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 150
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 151
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$300(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$200(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method
