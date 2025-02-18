.class public Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->enterLiveVideo()V

    return-void
.end method

.method private enterLiveVideo()V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;-><init>()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    sget v2, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private enterWiFiSettings()V
    .locals 2

    .line 209
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->go_to_wifi_settings:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->go_to_wifi_settings:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toQrCodeFragment()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;-><init>()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    sget v2, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "search_mode"

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSearchMode(I)V

    .line 64
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 112
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->device_list_switch_search_mode:I

    if-ne p1, v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->toQrCodeFragment()V

    goto :goto_0

    .line 114
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->go_to_wifi:I

    if-ne p1, v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->enterWiFiSettings()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_list_switch_search_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->go_to_wifi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->stopDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->unregisterBroadcastReceiver(Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 71
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mIWifiDirectListener:Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->registerBroadcastReceiver(Lcom/jieli/stream/dv/running2/util/IWifiDirectListener;)V

    .line 74
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    const-string v1, "registerBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->requestPeerList()V

    .line 76
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->tag:Ljava/lang/String;

    const-string v1, "requestPeerList"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->startDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->tip_open_wifi:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
