.class public abstract Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Lcom/jieli/stream/dv/running2/util/IActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

.field public mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private registerBroadCastReceiver()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$1;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    .line 170
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public changeFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    const/4 p1, 0x0

    .line 202
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 203
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 141
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    .line 142
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->getInstance()Lcom/jieli/stream/dv/running2/util/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->pushActivity(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 163
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->getInstance()Lcom/jieli/stream/dv/running2/util/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->popActivity(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 148
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->registerBroadCastReceiver()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->mReceiver:Lcom/jieli/stream/dv/running2/ui/base/BaseActivity$BaseWifiBroadcastReceiver;

    :cond_0
    return-void
.end method
