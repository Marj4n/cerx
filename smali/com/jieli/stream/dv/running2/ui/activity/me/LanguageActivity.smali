.class public Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "LanguageActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastLanguage:Ljava/lang/String;

.field private mSelectLanguage:I

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->tag:Ljava/lang/String;

    const-string v0, "-1"

    .line 45
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mLastLanguage:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mSelectLanguage:I

    return p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->goToMainActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private goToMainActivity()V
    .locals 3

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    const-class v2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private initLanguage()V
    .locals 10

    .line 73
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "language_code"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mLastLanguage:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$array;->language:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 83
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v7, v3, v5

    if-eqz v6, :cond_2

    const/4 v8, 0x4

    if-ne v6, v8, :cond_4

    .line 85
    :cond_2
    sget v8, Lcom/jieli/stream/dv/running2/R$layout;->item_radiobuttom:I

    iget-object v9, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v8, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 86
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v6, :cond_3

    const/4 v7, 0x1

    .line 87
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    :cond_3
    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 89
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setLanguage(Ljava/util/Locale;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 172
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 173
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 174
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public confirmBtnClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mSelectLanguage:I

    if-lez p1, :cond_2

    .line 133
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mSelectLanguage:I

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$3;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetLanguage(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "language_code"

    const-string v1, "-1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mLastLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mLastLanguage:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->changeAppLanguage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_language_change"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->mLastLanguage:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_language:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->setContentView(I)V

    .line 58
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->language_radio_group:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 59
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 61
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->initLanguage()V

    .line 63
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStart()V

    .line 158
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStop()V

    .line 164
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public returnBtnClick(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->onBackPressed()V

    return-void
.end method
