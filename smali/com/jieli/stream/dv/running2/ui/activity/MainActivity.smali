.class public Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;


# static fields
.field private static final MSG_CONNECT_CTP:I = 0x3

.field private static final MSG_RECONNECTION_DEVICE:I = 0x0

.field private static final MSG_STOP_RECONNECTION_DEVICE:I = 0x1


# instance fields
.field private final deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field private isReConnectDev:Z

.field private mActivityManager:Lcom/jieli/stream/dv/running2/util/ActivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

.field private mWifiP2pHelper:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

.field private mainReceiver:Landroid/content/BroadcastReceiver;

.field private reConnectNum:I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->isReConnectDev:Z

    .line 69
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mainReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 360
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->reConnectNum:I

    return p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->reConnectNum:I

    return p1
.end method

.method static synthetic access$108(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->reConnectNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->reConnectNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->isReConnectDev:Z

    return p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->isReConnectDev:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->removeDeviceWifiMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiP2pHelper:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    return-object p0
.end method

.method private removeDeviceWifiMsg()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_wifi_ssid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public connectDevice(Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second, connect device IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mActivityManager:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->getTopActivity()Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    .line 241
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 243
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;-><init>()V

    .line 244
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "connectDevice: unknown case"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 324
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onBackPressed()V

    .line 325
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->finish()V

    return-void
.end method

.method public onConnected(Landroid/net/wifi/WifiInfo;)V
    .locals 4

    .line 308
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->isReConnectDev:Z

    .line 312
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->reConnectNum:I

    .line 313
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getGateWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->connectDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->isReConnectDev:Z

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "main activity running...."

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->getInstance()Lcom/jieli/stream/dv/running2/util/ActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mActivityManager:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    .line 182
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->setContentView(I)V

    .line 184
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiP2pHelper:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->registerBroadcastReceiver(Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;)V

    .line 189
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.jieli.dv.running2_dev_access"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.jieli.dv.running2_connection_timeout"

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mainReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->registerOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 197
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->container:I

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;-><init>()V

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiP2pHelper:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->release()V

    .line 208
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiP2pHelper:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    .line 211
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 212
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 213
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->removeDeviceWifiMsg()V

    .line 215
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mainReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->unregisterOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    .line 217
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->deviceConnectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 218
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->release()V

    .line 219
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->release()V

    .line 220
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->release()V

    .line 222
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError >>> errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 342
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getGateWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->connectDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "getExtraInfo is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "Wi-Fi is disable !!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "current_wifi_ssid"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xeef3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStart()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
