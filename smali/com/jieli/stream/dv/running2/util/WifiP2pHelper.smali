.class public Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;,
        Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;
    }
.end annotation


# static fields
.field private static instance:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;


# instance fields
.field private mBroadcastReceiver:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mMainContext:Landroid/content/Context;

.field private mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiDirectListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

.field private peerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field private peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peers:Ljava/util/List;

    .line 350
    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$7;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 361
    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$8;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$8;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    const-string v0, "wifip2p"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 44
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 45
    new-instance p1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/os/Looper;Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context can not be empty."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->notifyP2pPeerListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->notifyP2pConnectionChanged(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->notifyP2pStateChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->notifyP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peers:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
    .locals 2

    .line 49
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    return-object p0
.end method

.method private notifyP2pConnectionChanged(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$5;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyP2pDeviceChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 339
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$6;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyP2pPeerListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$4;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyP2pStateChanged(I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$3;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;I)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public connectP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 131
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 132
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x0

    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 133
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p1, v1, v0, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public connectP2pDeviceForGroup(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public disconnectP2pDevice(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public disconnectP2pForGroup(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 181
    new-instance v2, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public getConnectWifiDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getPeerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peers:Ljava/util/List;

    return-object v0
.end method

.method public registerBroadcastReceiver(Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mBroadcastReceiver:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 70
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mBroadcastReceiver:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

    .line 81
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiHandler:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->stopDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 240
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 244
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    :cond_2
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 247
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    .line 248
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 249
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method

.method public requestConnectionInfo()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    :cond_0
    return-void
.end method

.method public requestPeerList()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 218
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->peerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_0
    return-void
.end method

.method public setConnectWifiDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mConnectWifiDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public startDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public stopDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public unregisterBroadcastReceiver(Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mWifiDirectListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mMainContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mBroadcastReceiver:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->mBroadcastReceiver:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$WiFiDirectBroadcastReceiver;

    :cond_1
    return-void
.end method
