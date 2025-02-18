.class public Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;,
        Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;,
        Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;,
        Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;
    }
.end annotation


# static fields
.field private static final LIMIT_TIME:I = 0xea60

.field private static final MSG_UPDATE_STEP_UI:I = 0x1001

.field private static final MSG_UPGRADE_APK:I = 0x1002

.field private static final MSG_UPGRADE_RESULT:I = 0x1004

.field private static final MSG_UPGRADE_SDK:I = 0x1003


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/UpgradeStep;",
            ">;"
        }
    .end annotation
.end field

.field private isConnectDev:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUploadPb:Landroid/widget/ProgressBar;

.field private service:Ljava/util/concurrent/ExecutorService;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private tvTip:Landroid/widget/TextView;

.field private upgradePath:Ljava/lang/String;

.field private upgradePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upgradeType:I

.field private uploadFileThread:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

.field private wifiCallBack:Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->wifiCallBack:Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->tvTip:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->sendCommandToService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->uploadFileThread:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->uploadFileThread:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    return p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mUploadPb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mUploadPb:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradePathList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradePathList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->sendHandlerMsg(Landroid/os/Handler;IILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->isConnectDev:Z

    return p0
.end method

.method static synthetic access$902(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->isConnectDev:Z

    return p1
.end method

.method private initListView()V
    .locals 6

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->dataList:Ljava/util/List;

    .line 236
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->upgrade_apk_steps:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->upgrade_sdk_steps:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 241
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 242
    aget-object v3, v0, v2

    .line 243
    new-instance v4, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;-><init>()V

    .line 244
    invoke-virtual {v4, v2}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setNum(I)V

    .line 245
    invoke-virtual {v4, v3}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setDescription(Ljava/lang/String;)V

    if-ne v2, v1, :cond_1

    .line 247
    invoke-virtual {v4, v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setNeedPb(Z)V

    goto :goto_2

    .line 248
    :cond_1
    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 249
    invoke-virtual {v4, v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setNeedPb(Z)V

    .line 251
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->dataList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_3
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    .line 255
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->dataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->setDataList(Ljava/util/List;)V

    .line 257
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private sendCommandToService()V
    .locals 3

    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const-class v2, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_command"

    const/4 v2, 0x1

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private sendHandlerMsg(Landroid/os/Handler;IILjava/lang/Object;J)V
    .locals 4

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    const/16 v2, 0x1001

    cmp-long v3, p5, v0

    if-lez v3, :cond_0

    .line 396
    invoke-virtual {p1, v2, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1, v2, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 169
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    .line 170
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 171
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setUpgrading(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "update_type"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    const-string v1, "update_path"

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradePath:Ljava/lang/String;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->wifiCallBack:Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->registerOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    .line 181
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->initListView()V

    .line 183
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->upgradeType:I

    if-ne p1, v0, :cond_1

    .line 184
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 189
    :cond_2
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->sdcard_online:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 p3, 0x1008

    if-ne p1, p3, :cond_0

    .line 229
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-resultCode- "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 157
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_upgrade:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 158
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->upgrade_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->tvTip:Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 159
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->upgrade_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mListView:Landroid/widget/ListView;

    .line 161
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 213
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setUpgrading(Z)V

    .line 214
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->uploadFileThread:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->interrupt()V

    .line 219
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->uploadFileThread:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 222
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 204
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->wifiCallBack:Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->unregisterOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    return-void
.end method
