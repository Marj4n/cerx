.class public Lcom/serenegiant/net/NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_GLOBAL_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_LOCAL_CONNECTIVITY_CHANGE:Ljava/lang/String; = "com.serenegiant.net.CONNECTIVITY_CHANGE"

.field private static final DEBUG:Z = false

.field public static final KEY_NETWORK_CHANGED_ACTIVE_NETWORK_MASK:Ljava/lang/String; = "KEY_NETWORK_CHANGED_ACTIVE_NETWORK_MASK"

.field public static final KEY_NETWORK_CHANGED_IS_CONNECTED:Ljava/lang/String; = "KEY_NETWORK_CHANGED_IS_CONNECTED"

.field public static final KEY_NETWORK_CHANGED_IS_CONNECTED_OR_CONNECTING:Ljava/lang/String; = "KEY_NETWORK_CHANGED_IS_CONNECTED_OR_CONNECTING"

.field private static final NETWORKS:[I

.field private static final NETWORK_MASK_INTERNET_WIFI:I = 0x2c2

.field public static final NETWORK_TYPE_BLUETOOTH:I = 0x80

.field public static final NETWORK_TYPE_ETHERNET:I = 0x200

.field public static final NETWORK_TYPE_MOBILE:I = 0x1

.field public static final NETWORK_TYPE_MOBILE_DUN:I = 0x10

.field public static final NETWORK_TYPE_MOBILE_HIPRI:I = 0x20

.field public static final NETWORK_TYPE_MOBILE_MMS:I = 0x4

.field public static final NETWORK_TYPE_MOBILE_SUPL:I = 0x8

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field public static final NETWORK_TYPE_WIMAX:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field private static sActiveNetworkMask:I

.field private static sGlobalReceiverNum:I

.field private static sIsConnected:I

.field private static sIsConnectedOrConnecting:I

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mListener:Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/serenegiant/net/NetworkChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->TAG:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 275
    sput v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    .line 277
    sput v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnected:I

    .line 279
    sput v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 321
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->NETWORKS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x4
        0x3
        0x8
        0x4
        0x10
        0x5
        0x20
        0x6
        0x40
        0x7
        0x80
        0x9
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/serenegiant/net/NetworkChangedReceiver;->mListener:Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;

    return-void
.end method

.method private constructor <init>(Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/serenegiant/net/NetworkChangedReceiver;->mListener:Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/NetworkChangedReceiver;III)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/net/NetworkChangedReceiver;->callOnNetworkChanged(III)V

    return-void
.end method

.method private callOnNetworkChanged(III)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/serenegiant/net/NetworkChangedReceiver;->mListener:Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;->onNetworkChanged(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    sget-object p2, Lcom/serenegiant/net/NetworkChangedReceiver;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static disable(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    const-class v0, Lcom/serenegiant/net/NetworkChangedReceiver;

    invoke-static {p0, v0}, Lcom/serenegiant/utils/ComponentUtils;->disable(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static enable(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    const-class v0, Lcom/serenegiant/net/NetworkChangedReceiver;

    invoke-static {p0, v0}, Lcom/serenegiant/utils/ComponentUtils;->enable(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static isGlobalRegistered()Z
    .locals 2

    .line 182
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sGlobalReceiverNum:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isMobileNetworkReachable()Z
    .locals 3

    .line 468
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    sget v2, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    and-int/2addr v1, v2

    .line 470
    monitor-exit v0

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isMobileNetworkReachable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 483
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 484
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 485
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNetworkReachable()Z
    .locals 3

    .line 499
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    sget v2, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    and-int/2addr v1, v2

    .line 501
    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isNetworkReachable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 512
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 513
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiNetworkReachable()Z
    .locals 3

    .line 434
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    sget v2, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    and-int/2addr v1, v2

    .line 436
    monitor-exit v0

    and-int/lit16 v0, v1, 0x2c2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWifiNetworkReachable(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 449
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 450
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 451
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private onReceiveGlobal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p2, "connectivity"

    .line 354
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 361
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid5()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 362
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 364
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v7, v0, v4

    .line 365
    invoke-virtual {p2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 367
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    shl-int v8, v1, v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v5, v8

    .line 368
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    shl-int v7, v1, v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_6

    .line 373
    :cond_4
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->NETWORKS:[I

    array-length v0, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v3, v0, :cond_8

    .line 375
    sget-object v4, Lcom/serenegiant/net/NetworkChangedReceiver;->NETWORKS:[I

    aget v4, v4, v3

    invoke-virtual {p2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 377
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/serenegiant/net/NetworkChangedReceiver;->NETWORKS:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v5, v7

    .line 378
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/serenegiant/net/NetworkChangedReceiver;->NETWORKS:[I

    add-int/lit8 v7, v3, 0x1

    aget v4, v4, v7

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    or-int/2addr v6, v4

    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 382
    :cond_8
    :goto_6
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 383
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    shl-int v2, v1, p2

    .line 384
    :cond_9
    sget-object p2, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter p2

    .line 385
    :try_start_0
    sput v5, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    .line 386
    sput v6, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnected:I

    .line 387
    sput v2, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    .line 388
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 389
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-direct {p0, v5, v6, v2}, Lcom/serenegiant/net/NetworkChangedReceiver;->callOnNetworkChanged(III)V

    .line 395
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.serenegiant.net.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "KEY_NETWORK_CHANGED_IS_CONNECTED_OR_CONNECTING"

    .line 396
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "KEY_NETWORK_CHANGED_IS_CONNECTED"

    .line 397
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "KEY_NETWORK_CHANGED_ACTIVE_NETWORK_MASK"

    .line 398
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 389
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onReceiveLocal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "KEY_NETWORK_CHANGED_IS_CONNECTED_OR_CONNECTING"

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "KEY_NETWORK_CHANGED_IS_CONNECTED"

    .line 408
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "KEY_NETWORK_CHANGED_ACTIVE_NETWORK_MASK"

    .line 409
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 410
    invoke-direct {p0, p1, v1, p2}, Lcom/serenegiant/net/NetworkChangedReceiver;->callOnNetworkChanged(III)V

    return-void
.end method

.method public static registerGlobal(Landroid/content/Context;)Lcom/serenegiant/net/NetworkChangedReceiver;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-static {p0, v0}, Lcom/serenegiant/net/NetworkChangedReceiver;->registerGlobal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)Lcom/serenegiant/net/NetworkChangedReceiver;

    move-result-object p0

    return-object p0
.end method

.method public static registerGlobal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)Lcom/serenegiant/net/NetworkChangedReceiver;
    .locals 2

    .line 171
    new-instance v0, Lcom/serenegiant/net/NetworkChangedReceiver;

    invoke-direct {v0, p1}, Lcom/serenegiant/net/NetworkChangedReceiver;-><init>(Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)V

    .line 172
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    sget p0, Lcom/serenegiant/net/NetworkChangedReceiver;->sGlobalReceiverNum:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/serenegiant/net/NetworkChangedReceiver;->sGlobalReceiverNum:I

    .line 177
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static registerLocal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)Lcom/serenegiant/net/NetworkChangedReceiver;
    .locals 4

    .line 219
    new-instance v0, Lcom/serenegiant/net/NetworkChangedReceiver;

    invoke-direct {v0, p1}, Lcom/serenegiant/net/NetworkChangedReceiver;-><init>(Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)V

    .line 220
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.serenegiant.net.CONNECTIVITY_CHANGE"

    .line 221
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    .line 224
    invoke-virtual {p0, v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 227
    :try_start_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 234
    :goto_0
    sget-object p1, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter p1

    .line 235
    :try_start_1
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnectedOrConnecting:I

    .line 236
    sget v2, Lcom/serenegiant/net/NetworkChangedReceiver;->sIsConnected:I

    .line 237
    sget v3, Lcom/serenegiant/net/NetworkChangedReceiver;->sActiveNetworkMask:I

    .line 238
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 240
    new-instance p1, Lcom/serenegiant/net/NetworkChangedReceiver$1;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/serenegiant/net/NetworkChangedReceiver$1;-><init>(Lcom/serenegiant/net/NetworkChangedReceiver;III)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 247
    :cond_0
    invoke-direct {v0, v1, v2, v3}, Lcom/serenegiant/net/NetworkChangedReceiver;->callOnNetworkChanged(III)V

    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 238
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static unregisterGlobal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver;)V
    .locals 2

    .line 197
    sget-object v0, Lcom/serenegiant/net/NetworkChangedReceiver;->sSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    sget v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sGlobalReceiverNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/serenegiant/net/NetworkChangedReceiver;->sGlobalReceiverNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static unregisterLocal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver;)V
    .locals 0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    .line 265
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/net/NetworkChangedReceiver;->onReceiveGlobal(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-string v1, "com.serenegiant.net.CONNECTIVITY_CHANGE"

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/net/NetworkChangedReceiver;->onReceiveLocal(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 307
    :try_start_0
    invoke-static {p1, p0}, Lcom/serenegiant/net/NetworkChangedReceiver;->unregisterGlobal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :catch_0
    :try_start_1
    invoke-static {p1, p0}, Lcom/serenegiant/net/NetworkChangedReceiver;->unregisterLocal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
