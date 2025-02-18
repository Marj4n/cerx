.class public Lcom/serenegiant/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;,
        Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;,
        Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;,
        Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothSocketThread;,
        Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RELEASED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_SPP:Ljava/util/UUID;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAsyncHandler:Landroid/os/Handler;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

.field private final mDiscoveredDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

.field private final mInSecureProfileUUID:Ljava/util/UUID;

.field private final mName:Ljava/lang/String;

.field private mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

.field private mSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

.field private final mSecureProfileUUID:Ljava/util/UUID;

.field private volatile mState:I

.field private final mSync:Ljava/lang/Object;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/serenegiant/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 211
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/bluetooth/BluetoothManager;->UUID_SPP:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;)V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    .line 589
    new-instance v0, Lcom/serenegiant/bluetooth/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/bluetooth/BluetoothManager$1;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 317
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mName:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureProfileUUID:Ljava/util/UUID;

    if-eqz p4, :cond_1

    move-object p3, p4

    .line 319
    :cond_1
    iput-object p3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureProfileUUID:Ljava/util/UUID;

    if-eqz p5, :cond_2

    .line 321
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {p2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_3

    .line 324
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 327
    iput p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    .line 328
    sget-object p2, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {p2}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    .line 329
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.device.action.FOUND"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 330
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object p3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 325
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "bluetooth\u306b\u5bfe\u5fdc\u3057\u3066\u3044\u306a\u3044\u304b\u7121\u52b9\u306b\u306a\u3063\u3066\u3044\u308b"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/bluetooth/BluetoothManager;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    return p0
.end method

.method static synthetic access$400(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/UUID;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureProfileUUID:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$500(Lcom/serenegiant/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/util/UUID;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureProfileUUID:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$700(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/bluetooth/BluetoothManager;->createBluetoothSocket(Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/serenegiant/bluetooth/BluetoothManager;)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/serenegiant/bluetooth/BluetoothManager;Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;)Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    return-object p1
.end method

.method private checkReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 615
    iget v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createBluetoothSocket(Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1056
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureProfileUUID:Ljava/util/UUID;

    .line 1057
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureProfileUUID:Ljava/util/UUID;

    .line 1058
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getBondedDevices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private internalCancel(IZ)V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {v0}, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->cancel()V

    .line 652
    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {v0}, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->cancel()V

    .line 657
    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    .line 660
    :cond_2
    iget v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eqz p2, :cond_5

    .line 661
    :cond_3
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    if-eqz p2, :cond_4

    .line 662
    invoke-virtual {p2}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->cancel()V

    .line 663
    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    .line 665
    :cond_4
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    if-eqz p2, :cond_5

    .line 666
    invoke-virtual {p2}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->cancel()V

    .line 667
    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    .line 670
    :cond_5
    invoke-direct {p0, p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->setState(I)V

    return-void
.end method

.method private internalStartListen()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 627
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalCancel(IZ)V

    .line 628
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-void

    .line 629
    :cond_0
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    if-nez v3, :cond_1

    .line 630
    new-instance v3, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    invoke-direct {v3, p0, v2}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Z)V

    iput-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    .line 631
    invoke-virtual {v3}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->start()V

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    if-nez v2, :cond_2

    .line 634
    new-instance v2, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    invoke-direct {v2, p0, v1}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Z)V

    iput-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mInSecureListeningThread:Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;

    .line 635
    invoke-virtual {v2}, Lcom/serenegiant/bluetooth/BluetoothManager$ListeningThread;->start()V

    .line 637
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 73
    sget-object v2, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static requestBluetoothEnable(Landroid/app/Activity;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestBluetoothEnable(Landroid/app/Fragment;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestBluetoothEnable(Landroidx/fragment/app/Fragment;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestDiscoverable(Landroid/app/Activity;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 178
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p0

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 174
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bluetooth\u306b\u5bfe\u5fdc\u3057\u3066\u3044\u306a\u3044\u304b\u7121\u52b9\u306b\u306a\u3063\u3066\u3044\u308b"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestDiscoverable(Landroid/app/Fragment;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 193
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/16 v3, 0x12c

    if-gt p1, v3, :cond_0

    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 200
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 204
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p0

    if-ne p0, v2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 195
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bluetooth\u306b\u5bfe\u5fdc\u3057\u3066\u3044\u306a\u3044\u304b\u7121\u52b9\u306b\u306a\u3063\u3066\u3044\u308b"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setState(I)V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 812
    iput p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    .line 814
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addCallback(Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected callOnConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$szEVXQv64iZS7lvZIvIx-YwetxU;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected callOnDisConnect()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$FBgsvbmziOwyzz08q67BJF_cCOo;

    invoke-direct {v2, p0}, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$FBgsvbmziOwyzz08q67BJF_cCOo;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalStartListen()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 743
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected callOnDiscover()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    monitor-enter v0

    .line 681
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 683
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 684
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    new-instance v3, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;

    invoke-direct {v3, p0, v1}, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$aq-ZAjQqydCJxal-0PDMEjLFE2Y;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 682
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected callOnFailed()V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$SPq2NTSgCJsXSumNRxJqJjvtdaI;

    invoke-direct {v2, p0}, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$SPq2NTSgCJsXSumNRxJqJjvtdaI;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalStartListen()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 770
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected callOnReceive([BI)V
    .locals 3

    .line 784
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 785
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 787
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p1

    return-void

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;

    invoke-direct {v2, p0, v0, p2}, Lcom/serenegiant/bluetooth/-$$Lambda$BluetoothManager$zAxwzMqMSIKFOq5eTMY0WOToGls;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;[BI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 480
    invoke-direct {p0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalCancel(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    new-instance v1, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v3}, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catch_0
    :try_start_2
    new-instance v1, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    invoke-direct {v1, p0, p1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mConnectingThread:Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;

    invoke-virtual {p1}, Lcom/serenegiant/bluetooth/BluetoothManager$ConnectingThread;->start()V

    .line 495
    monitor-exit v0

    return-void

    :catch_1
    move-exception p1

    .line 491
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public connect(Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 455
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 468
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/bluetooth/BluetoothManager;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 385
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 386
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 387
    new-instance v4, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    invoke-direct {v4, v3}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isListening()Z
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReleased()Z
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 559
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$callOnConnect$1$BluetoothManager(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;

    .line 713
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;->onConnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 715
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 716
    sget-object v1, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$callOnDisConnect$2$BluetoothManager()V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;

    .line 735
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 737
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 738
    sget-object v1, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$callOnDiscover$0$BluetoothManager(Ljava/util/List;)V
    .locals 4

    .line 686
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;

    .line 688
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;->onDiscover(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 690
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 691
    sget-object v1, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$callOnFailed$3$BluetoothManager()V
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;

    .line 762
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;->onFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 764
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 765
    sget-object v1, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$callOnReceive$4$BluetoothManager([BI)V
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;

    .line 792
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;->onReceive([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 794
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 795
    sget-object v1, Lcom/serenegiant/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onConnect(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 827
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalCancel(IZ)V

    .line 829
    new-instance v1, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;-><init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    .line 830
    invoke-virtual {v1}, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->start()V

    .line 833
    invoke-virtual {p0, p2}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnConnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 834
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 339
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 341
    iput v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mState:I

    .line 342
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->stop()V

    .line 343
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 345
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    .line 349
    :try_start_2
    iput-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAsyncHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    :catch_1
    :cond_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public removeCallback(Lcom/serenegiant/bluetooth/BluetoothManager$BluetoothManagerCallback;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public send([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 517
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    invoke-virtual {v1, p1}, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->write([B)V

    .line 520
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public send([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 536
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mReceiverThread:Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;

    invoke-virtual {v1, p1, p2, p3}, Lcom/serenegiant/bluetooth/BluetoothManager$ReceiverThread;->write([BII)V

    .line 539
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startDiscovery()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 412
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 413
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 414
    iget-object v4, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mDiscoveredDeviceList:Ljava/util/List;

    new-instance v5, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    invoke-direct {v5, v3}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->callOnDiscover()V

    .line 418
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 421
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 418
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 421
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public startListen()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->checkReleased()V

    .line 444
    invoke-direct {p0}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalStartListen()V

    .line 445
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 504
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->internalCancel(IZ)V

    .line 505
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDiscovery()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 434
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
