.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1440
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is playing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 1444
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1461
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$5000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void
.end method
