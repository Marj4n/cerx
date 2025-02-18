.class public Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "SettingFragment.java"


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private downLoadPhotoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private listView:Landroid/widget/ListView;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private savePictureInPhoneOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->savePictureInPhoneOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 157
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->downLoadPhotoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 164
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->initUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)Landroid/widget/ListView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->goToAbout()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private goToAbout()V
    .locals 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_fragment_tag"

    const/16 v2, 0x9

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initUI()V
    .locals 12

    .line 92
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mView:Landroid/view/View;

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->setting_top_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->tab_me:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->setting_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$dimen;->list_marginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_a

    .line 98
    aget-object v5, v0, v4

    .line 99
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 100
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 101
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->device_setting:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->app_storage_manager:I

    .line 102
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->about_app:I

    .line 104
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->help:I

    .line 105
    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    .line 108
    :cond_0
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->language:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 111
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/jieli/stream/dv/running2/R$array;->language:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 114
    iget-object v9, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v9}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "language_code"

    const-string v11, "-1"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int/2addr v9, v8

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/4 v10, -0x1

    if-le v9, v10, :cond_6

    .line 118
    array-length v10, v7

    if-ge v9, v10, :cond_6

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 123
    :cond_2
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->save_picture_in_phone:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    invoke-virtual {v6, v8}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 125
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "save_picture"

    invoke-interface {v7, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 126
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->savePictureInPhoneOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_3

    .line 127
    :cond_3
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->auto_download_the_photo_files:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 128
    invoke-virtual {v6, v8}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 129
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "auto_download_picture"

    invoke-interface {v7, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 130
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->downLoadPhotoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_3

    .line 131
    :cond_4
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->app_advanced_settings:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_7

    const/4 v7, 0x3

    if-eq v4, v7, :cond_7

    const/4 v7, 0x4

    if-eq v4, v7, :cond_7

    const/4 v7, 0x5

    if-ne v4, v7, :cond_8

    .line 135
    :cond_7
    invoke-virtual {v6, v2}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setMarginTop(I)V

    .line 136
    :cond_8
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 137
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_setting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mView:Landroid/view/View;

    .line 80
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->setting_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->listView:Landroid/widget/ListView;

    .line 82
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->initUI()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.jieli.dv.running2_language_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 59
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
