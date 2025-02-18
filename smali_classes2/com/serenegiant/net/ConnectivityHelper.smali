.class public Lcom/serenegiant/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;,
        Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;,
        Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;,
        Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GLOBAL_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final DEBUG:Z = false

.field public static final NETWORK_TYPE_BLUETOOTH:I = 0x80

.field public static final NETWORK_TYPE_ETHERNET:I = 0x200

.field public static final NETWORK_TYPE_MOBILE:I = 0x1

.field public static final NETWORK_TYPE_NON:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveNetworkType:I

.field private mAsyncHandler:Landroid/os/Handler;

.field private final mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

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

    .line 48
    const-class v0, Lcom/serenegiant/net/ConnectivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    .line 85
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/Network;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/net/ConnectivityHelper;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private callOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;-><init>(Lcom/serenegiant/net/ConnectivityHelper;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 244
    :cond_0
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    const-string v1, "already released?"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private callOnNetworkChanged(I)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;-><init>(Lcom/serenegiant/net/ConnectivityHelper;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 228
    :cond_0
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    const-string v1, "already released?"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNetworkTypeString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0x80

    if-eq p0, v1, :cond_1

    const/16 v1, 0x200

    if-eq p0, v1, :cond_0

    .line 650
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "UNKNOWN(%d)"

    invoke-static {v1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ETHERNET"

    return-object p0

    :cond_1
    const-string p0, "BLUETOOTH"

    return-object p0

    :cond_2
    const-string p0, "WIFI"

    return-object p0

    :cond_3
    const-string p0, "MOBILE"

    return-object p0

    :cond_4
    const-string p0, "NON"

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 193
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    new-instance v1, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 196
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 197
    new-instance v1, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 199
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isNougat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 205
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private static isBluetoothNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 1

    const/4 v0, 0x2

    .line 602
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobileNetworkReachable(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    .line 491
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 492
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 493
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 496
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 500
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 502
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 503
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 504
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 505
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 509
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 516
    :cond_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 517
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private static isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 3

    .line 587
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreoMR1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 589
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 591
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 593
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static isNetworkReachable(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    .line 535
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 537
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 538
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 540
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 541
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 543
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 545
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 546
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 547
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 548
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 550
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v2

    .line 557
    :cond_4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 558
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 5

    .line 614
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 615
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 619
    :goto_1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isPie()Z

    move-result v0

    const/16 v3, 0x10

    const/16 v4, 0xc

    if-eqz v0, :cond_4

    .line 620
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 621
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    .line 622
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x13

    .line 623
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    .line 624
    :cond_4
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 625
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 628
    :cond_5
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static isWifiNetworkReachable(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    .line 440
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 441
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 442
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 445
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 447
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 451
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 453
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 454
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 455
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 456
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 460
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 468
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 469
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private static isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 4

    .line 569
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    .line 577
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private requireConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to get ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireContext()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateActiveNetwork(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    if-eq v1, p1, :cond_0

    .line 300
    iput p1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    .line 301
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->callOnNetworkChanged(I)V

    .line 303
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

.method private updateActiveNetwork(Landroid/net/Network;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 258
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 262
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isBluetoothNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x80

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x200

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 272
    :goto_0
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method

.method private updateActiveNetwork(Landroid/net/NetworkInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x200

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 293
    :goto_1
    invoke-direct {p0, v0}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/ConnectivityHelper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getActiveNetworkType()I
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 1

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$callOnError$1$ConnectivityHelper(Ljava/lang/Throwable;)V
    .locals 1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    invoke-interface {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    sget-object v0, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$callOnNetworkChanged$0$ConnectivityHelper(I)V
    .locals 1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    invoke-interface {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;->onNetworkChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->callOnError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    .line 102
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 111
    sget-object v4, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_0
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 117
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 122
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 124
    sget-object v2, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_1
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_2
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 132
    :try_start_3
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 135
    :try_start_4
    sget-object v3, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_2
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 139
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
