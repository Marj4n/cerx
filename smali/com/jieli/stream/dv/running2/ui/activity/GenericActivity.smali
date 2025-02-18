.class public Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "GenericActivity.java"


# instance fields
.field private connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->tag:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    return-void
.end method

.method private switchFragmentByTag(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto/16 :goto_0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->newInstance()Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 131
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_1

    .line 122
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;-><init>()V

    :cond_1
    move-object v1, p1

    .line 124
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 113
    :pswitch_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_2

    .line 115
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;-><init>()V

    :cond_2
    move-object v1, p1

    .line 117
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_3

    .line 108
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;-><init>()V

    :cond_3
    move-object v1, p1

    .line 110
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :pswitch_4
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_4

    .line 101
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;-><init>()V

    :cond_4
    move-object v1, p1

    .line 103
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_6

    .line 94
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;-><init>()V

    :cond_6
    move-object v1, p1

    .line 96
    const-class p1, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v1, :cond_9

    if-eqz p2, :cond_7

    .line 136
    invoke-virtual {v1, p2}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 138
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 139
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {p0, p2, v1, p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_8
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {p0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->changeFragment(ILandroidx/fragment/app/Fragment;)V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 57
    sget-boolean v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isFactoryMode:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const-string v1, "current_wifi_ssid"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_account_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->setResult(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_generic:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->setContentView(I)V

    .line 35
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_fragment_tag"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_data"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->switchFragmentByTag(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 52
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onResume()V

    return-void
.end method
