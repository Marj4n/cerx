.class public Lcom/serenegiant/net/WiFiP2pHelper;
.super Ljava/lang/Object;
.source "WiFiP2pHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;


# instance fields
.field private final mAvailableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field private final mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mIsWifiP2pEnabled:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/net/WiFiP2pListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field private mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

.field private mRetryCount:I

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mAvailableDevices:Ljava/util/List;

    .line 403
    new-instance v0, Lcom/serenegiant/net/WiFiP2pHelper$4;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/WiFiP2pHelper$4;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 428
    new-instance v0, Lcom/serenegiant/net/WiFiP2pHelper$5;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/WiFiP2pHelper$5;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 443
    new-instance v0, Lcom/serenegiant/net/WiFiP2pHelper$6;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/WiFiP2pHelper$6;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    const-string v0, "wifip2p"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/WiFiP2pHelper;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->setIsWifiP2pEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/net/WiFiP2pHelper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/serenegiant/net/WiFiP2pHelper;->resetData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/serenegiant/net/WiFiP2pHelper;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->updateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$202(Lcom/serenegiant/net/WiFiP2pHelper;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/serenegiant/net/WiFiP2pHelper;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mRetryCount:I

    return p0
.end method

.method static synthetic access$308(Lcom/serenegiant/net/WiFiP2pHelper;)I
    .locals 2

    .line 56
    iget v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/serenegiant/net/WiFiP2pHelper;)Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mAvailableDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/serenegiant/net/WiFiP2pHelper;
    .locals 2

    const-class v0, Lcom/serenegiant/net/WiFiP2pHelper;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/serenegiant/net/WiFiP2pHelper;->sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/serenegiant/net/WiFiP2pHelper;->sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;

    iget-object v1, v1, Lcom/serenegiant/net/WiFiP2pHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    new-instance v1, Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/WiFiP2pHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/serenegiant/net/WiFiP2pHelper;->sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;

    .line 71
    :cond_1
    sget-object p0, Lcom/serenegiant/net/WiFiP2pHelper;->sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized release()V
    .locals 2

    const-class v0, Lcom/serenegiant/net/WiFiP2pHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    sput-object v1, Lcom/serenegiant/net/WiFiP2pHelper;->sWiFiP2PHelper:Lcom/serenegiant/net/WiFiP2pHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized resetData()V
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/WiFiP2pHelper;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIsWifiP2pEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 274
    :try_start_0
    iput-boolean p1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mIsWifiP2pEnabled:Z

    .line 275
    invoke-virtual {p0, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    monitor-enter p0

    .line 297
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(Lcom/serenegiant/net/WiFiP2pListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callOnConnect(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/WiFiP2pListener;

    .line 361
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/net/WiFiP2pListener;->onConnect(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 363
    sget-object v3, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnDisconnect()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/WiFiP2pListener;

    .line 376
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/net/WiFiP2pListener;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 378
    sget-object v3, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnError(Ljava/lang/Exception;)V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/WiFiP2pListener;

    .line 392
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/net/WiFiP2pListener;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 394
    sget-object v3, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnStateChanged(Z)V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/WiFiP2pListener;

    .line 329
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/net/WiFiP2pListener;->onStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 331
    sget-object v3, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnUpdateDevices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/WiFiP2pListener;

    .line 345
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/net/WiFiP2pListener;->onUpdateDevices(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 347
    sget-object v3, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Lcom/serenegiant/net/WiFiP2pHelper$2;

    invoke-direct {v2, p0}, Lcom/serenegiant/net/WiFiP2pHelper$2;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 195
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 196
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 197
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x0

    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 198
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2

    .line 183
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 184
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 185
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x0

    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 186
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    new-instance v0, Lcom/serenegiant/net/WiFiP2pHelper$3;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/WiFiP2pHelper$3;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->internalDisconnect(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected internalDisconnect(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 233
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_3

    .line 234
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectedOrConnecting()Z
    .locals 2

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWiFiP2pEnabled()Z
    .locals 1

    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mIsWifiP2pEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register()V
    .locals 5

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 108
    :goto_0
    iget-object v4, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 109
    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 111
    new-instance v1, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v1, v2, v3, p0}, Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/serenegiant/net/WiFiP2pHelper;)V

    iput-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lcom/serenegiant/net/WiFiP2pListener;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized startDiscovery()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/serenegiant/net/WiFiP2pHelper$1;

    invoke-direct {v2, p0}, Lcom/serenegiant/net/WiFiP2pHelper$1;-><init>(Lcom/serenegiant/net/WiFiP2pHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iput-boolean v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mIsWifiP2pEnabled:Z

    .line 127
    iput v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mRetryCount:I

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->internalDisconnect(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 129
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    :try_start_2
    sget-object v2, Lcom/serenegiant/net/WiFiP2pHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_0
    iput-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper;->mReceiver:Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
