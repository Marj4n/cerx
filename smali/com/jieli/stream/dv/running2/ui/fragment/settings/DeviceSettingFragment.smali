.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceSettingFragment.java"


# static fields
.field private static final MSG_FINISH_FRAGMENT:I = 0x6352


# instance fields
.field private final DEV_ADVANCED_SETTING:I

.field private final FACTORY_RESET:I

.field private final RESOLUTION_SETTING:I

.field private listView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

.field private notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->DEV_ADVANCED_SETTING:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->FACTORY_RESET:I

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->RESOLUTION_SETTING:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 296
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$9;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->dismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->tryToSendFactoryReset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->dismissNotifyDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->searchApMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Landroid/widget/ListView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showStopRecordingDialog(Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showNotifyDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showFactoryResetDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->removeDeviceWifiMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showWaitingDialog()V

    return-void
.end method

.method private dismissNotifyDialog()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    return-void
.end method

.method private dismissWaitingDialog()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->device_setting_list_sta:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->device_setting_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$dimen;->list_marginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 110
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 111
    aget-object v5, v0, v4

    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 113
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 114
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->device_password:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->photo_quality:I

    .line 115
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->setting_record_quality:I

    .line 116
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->advanced_settings:I

    .line 117
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->device_storage_manage:I

    .line 118
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->factory_reset:I

    .line 119
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->switch_sta_mode:I

    .line 120
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->switch_ap_mode:I

    .line 121
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 125
    :cond_1
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->device_name:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 128
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v7, 0x5

    if-ne v4, v7, :cond_4

    .line 131
    :cond_3
    invoke-virtual {v6, v2}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setMarginTop(I)V

    .line 132
    :cond_4
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 133
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private removeDeviceWifiMsg()V
    .locals 3

    .line 314
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_wifi_ssid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeSavedNetWork(Ljava/lang/String;)Z

    .line 319
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private searchApMode()V
    .locals 2

    .line 406
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->dismissNotifyDialog()V

    .line 407
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSearchMode(I)V

    .line 408
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    .line 409
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private showFactoryResetDialog()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 233
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->factory_reset_tips:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$5;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$6;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showNotifyDialog()V
    .locals 7

    .line 356
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 357
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_warning:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->waring_operation_tip:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$10;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$10;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showStopRecordingDialog(Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V
    .locals 6

    .line 253
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->stop_recording_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$7;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;

    invoke-direct {v5, p0, p2, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$8;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;ILcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 p2, 0x0

    .line 289
    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 291
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "notify_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showWaitingDialog()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    .line 418
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "wait_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private tryToSendFactoryReset()V
    .locals 2

    .line 211
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToFactoryReset(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestTFCardCapacity(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 95
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_setting_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->listView:Landroid/widget/ListView;

    .line 97
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->initUI()V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 348
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->dismissWaitingDialog()V

    .line 349
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    :cond_0
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 327
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 328
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 333
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->dismissNotifyDialog()V

    .line 334
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 338
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 341
    :cond_1
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mResetDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 342
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 343
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
