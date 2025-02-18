.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.jieli.dv.running2_language_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.jieli.dv.running2_tf_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "com.jieli.dv.running2_connection_timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "com.jieli.dv.running2_account_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.jieli.dv.running2_dev_access"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_3

    .line 160
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    .line 161
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->getInstance()Lcom/jieli/stream/dv/running2/util/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/ActivityManager;->popActivityOnlyMain()V

    goto/16 :goto_3

    :cond_2
    const-string p1, "allow_access"

    .line 130
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 131
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    .line 134
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DEV_ACCESS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    instance-of p2, p1, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    if-nez p2, :cond_4

    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string p2, "It isn\'t DeviceListFragment or StaDeviceListFragment"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 136
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 142
    :goto_2
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;-><init>()V

    goto :goto_3

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    :cond_7
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e60fc8a -> :sswitch_4
        0x15e23caa -> :sswitch_3
        0x266d33a8 -> :sswitch_2
        0x5567deb7 -> :sswitch_1
        0x6579cccf -> :sswitch_0
    .end sparse-switch
.end method
