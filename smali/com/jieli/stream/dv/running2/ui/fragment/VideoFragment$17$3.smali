.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1210
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    .line 1227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void
.end method
