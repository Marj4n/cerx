.class public Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "FlashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mStartButton:Landroid/widget/Button;

.field private mUserAgreementText:Landroid/widget/TextView;

.field private notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private toWriteSettingIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->handler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissions()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Landroid/widget/Button;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mStartButton:Landroid/widget/Button;

    return-object p0
.end method

.method private checkPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkPermissions()V
    .locals 3

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 132
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 133
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    .line 134
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 135
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 137
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x6f

    .line 141
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.CAMERA"

    .line 143
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x71

    .line 145
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 153
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 154
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x72

    .line 155
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 157
    :cond_4
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->toMainActivity()V

    goto :goto_1

    .line 160
    :cond_5
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->toMainActivity()V

    :goto_1
    return-void
.end method

.method private enter(J)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_agreed_with_agreement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "You are not allowed to enter without agree with the user agreement"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const-string v0, "location"

    .line 103
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 104
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->showNotifyGPSDialog()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private showNotifyDialog()V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 205
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->open_wifi:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_no:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_yes:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$6;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$6;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "openWifi"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showNotifyGPSDialog()V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 177
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->open_gpg_tip:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_exit:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->comfirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$3;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$4;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$4;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_gps_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showRequestPermissionDialog(Ljava/lang/String;I)V
    .locals 6

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    .line 257
    :pswitch_0
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->request_microphone_permission:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 254
    :pswitch_1
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->request_camera_permission:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 260
    :pswitch_2
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->request_write_setting_permission:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 251
    :pswitch_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->request_sdcard_permission:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 248
    :pswitch_4
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->request_location_permission:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 263
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez p2, :cond_1

    .line 264
    sget p2, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_exit:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->grant:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$7;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$7;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$8;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$8;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 281
    :cond_1
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 282
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setContent(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "request_permission_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toMainActivity()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->enter(J)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x1104

    if-ne p1, p2, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->toMainActivity()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x70

    if-ne p1, p2, :cond_2

    const/4 p2, 0x0

    .line 317
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->toWriteSettingIntent:Landroid/content/Intent;

    .line 318
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissions()V

    goto :goto_0

    :cond_1
    const-string p2, "android.permission.WRITE_SETTINGS"

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->showRequestPermissionDialog(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mUserAgreementText:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 361
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jieli/stream/dv/running2/ui/activity/UserAgreementActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mStartButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    const-wide/16 v0, 0x64

    .line 363
    invoke-direct {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->enter(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_flash:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->setContentView(I)V

    .line 58
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->agreement_layout:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->welcome_view:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_agreed_with_agreement"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->user_agreement_text:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mUserAgreementText:Landroid/widget/TextView;

    .line 69
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->agreement_checkbox:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->start_button:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mStartButton:Landroid/widget/Button;

    .line 72
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mUserAgreementText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 74
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mUserAgreementText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 75
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mUserAgreementText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissions()V

    goto :goto_1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->showNotifyDialog()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 291
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->handler:Landroid/os/Handler;

    .line 292
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 296
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 302
    :cond_2
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->notifyGpsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 308
    :cond_4
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->requestPermissionDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_5
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 328
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 333
    aget v2, p3, v1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FlashActivity"

    invoke-static {v4, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 337
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 338
    aget-object v2, p2, v1

    .line 340
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->finish()V

    goto :goto_1

    .line 345
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->showRequestPermissionDialog(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->checkPermissions()V

    .line 355
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStart()V

    return-void
.end method
