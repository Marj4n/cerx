.class public Lcom/jieli/stream/dv/running2/ui/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field public static isFactoryMode:Z = false

.field private static sMyApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;


# instance fields
.field private UUID:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appVersion:I

.field private appVersionName:Ljava/lang/String;

.field private deviceDesc:Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

.field private deviceSettingInfo:Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

.field private isUpgrading:Z

.field private isWifiDirectGO:Z

.field private sdcardExist:Z

.field private searchMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isWifiDirectGO:Z

    return-void
.end method

.method static synthetic access$000()Lcom/jieli/stream/dv/running2/ui/MainApplication;
    .locals 1

    .line 29
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sMyApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    return-object v0
.end method

.method public static declared-synchronized getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;
    .locals 2

    const-class v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sMyApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appVersion:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDir()Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceSettingInfo:Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "RMedia"

    goto :goto_0

    :cond_0
    const-string v0, "FMedia"

    :goto_0
    return-object v0
.end method

.method public getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceDesc:Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    return-object v0
.end method

.method public getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceSettingInfo:Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    return-object v0
.end method

.method public getSearchMode()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->searchMode:I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public isSdcardExist()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sdcardExist:Z

    return v0
.end method

.method public isUpgrading()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isUpgrading:Z

    return v0
.end method

.method public isWifiDirectGO()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isWifiDirectGO:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 145
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "language_code"

    const-string v1, "-1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    sput-object p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sMyApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 49
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->init(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sMyApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_root_path_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appName:Ljava/lang/String;

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appVersion:I

    .line 58
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 62
    :goto_0
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceDesc:Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    .line 63
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceSettingInfo:Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->appName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceDesc(Lcom/jieli/stream/dv/running2/bean/DeviceDesc;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->deviceDesc:Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    :cond_0
    return-void
.end method

.method public setSdcardExist(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sdcardExist:Z

    return-void
.end method

.method public setSearchMode(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->searchMode:I

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->UUID:Ljava/lang/String;

    return-void
.end method

.method public setUpgrading(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isUpgrading:Z

    return-void
.end method

.method public switchWifi()V
    .locals 3

    .line 153
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 154
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/MainApplication$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication$1;-><init>(Lcom/jieli/stream/dv/running2/ui/MainApplication;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
