.class public Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "APPAdvancedSettingActivity.java"


# instance fields
.field private listView:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private openDebugOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private returnBtn:Landroid/widget/Button;

.field private tag:Ljava/lang/String;

.field private usingHardCodecListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->tag:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 104
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->usingHardCodecListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 113
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->openDebugOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)Landroid/widget/ListView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method private initUI()V
    .locals 9

    .line 47
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->app_advanced_setting_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$dimen;->list_marginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 51
    aget-object v5, v0, v4

    .line 52
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 53
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->time_format:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 55
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 57
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_0
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->using_hard_codec:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 59
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 60
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 62
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "hard_codec"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 63
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->usingHardCodecListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_1

    .line 65
    :cond_1
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->open_debug:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 67
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 69
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "open_debug"

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 70
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->openDebugOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 74
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-virtual {v5, v2}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setMarginTop(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_app_advanced_settings:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->setContentView(I)V

    .line 42
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->app_advanced_setting_list_view:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->listView:Landroid/widget/ListView;

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->initUI()V

    return-void
.end method

.method public returnBtnClick(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->onBackPressed()V

    return-void
.end method
