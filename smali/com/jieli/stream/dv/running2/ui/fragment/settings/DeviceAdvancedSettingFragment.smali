.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceAdvancedSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;
    }
.end annotation


# instance fields
.field private bootPromptoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private hourTextView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private parkingMonitoringOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private recordingOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private rtspOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private senorTextView:Landroid/widget/TextView;

.field private senors:[Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timeTheWatermarkOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->tag:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->parkingMonitoringOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 165
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->timeTheWatermarkOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 182
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->bootPromptoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 199
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$6;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->rtspOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 209
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$7;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->recordingOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    .line 236
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->hourTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;Landroid/widget/TextView;[Ljava/lang/String;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->showPopupWindow(Landroid/widget/TextView;[Ljava/lang/String;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)[Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senors:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private initUI()V
    .locals 8

    .line 68
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->device_advanced_setting_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$dimen;->list_marginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 71
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 72
    aget-object v5, v0, v4

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 74
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 75
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 76
    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 77
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 78
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->parking_monitoring:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    invoke-virtual {v6, v2}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setMarginTop(I)V

    .line 81
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isVideoParCar()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 82
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->parkingMonitoringOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto/16 :goto_1

    .line 83
    :cond_0
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->time_the_watermark:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isVideoDate()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 85
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->timeTheWatermarkOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_1

    .line 86
    :cond_1
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->boot_prompt:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenBootSound()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 88
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->bootPromptoOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_1

    :cond_2
    const-string v7, "RTSP"

    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 90
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "rtsp_state"

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 91
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->rtspOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    goto :goto_1

    .line 92
    :cond_3
    sget v7, Lcom/jieli/stream/dv/running2/R$string;->sound_recording:I

    invoke-virtual {p0, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isVideoMic()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 94
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->recordingOnSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->hourTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->collision_induction_sensitivity_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senors:[Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getGravitySensor()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senorTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopupWindow(Landroid/widget/TextView;[Ljava/lang/String;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 294
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 296
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v6, 0x1

    .line 297
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 298
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v5, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 303
    array-length v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v13, :cond_0

    aget-object v10, v1, v15

    .line 304
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v12, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    invoke-direct {v7, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {v7, v14, v14, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v8, 0x11

    .line 307
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 308
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 310
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 311
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, -0x1000000

    .line 312
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v7, -0x1

    .line 314
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 315
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance v11, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$9;

    move-object v7, v11

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object v4, v11

    move/from16 v11, v16

    move-object v5, v12

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$9;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;Ljava/lang/String;ILandroid/widget/PopupWindow;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0xa

    const/4 v5, -0x2

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$drawable;->bg_pupop_window:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 338
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_advanced_settings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_advanced_setting_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->listView:Landroid/widget/ListView;

    .line 60
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->hour_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->hourTextView:Landroid/widget/TextView;

    .line 61
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->senor_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->senorTextView:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->initUI()V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 227
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 233
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
