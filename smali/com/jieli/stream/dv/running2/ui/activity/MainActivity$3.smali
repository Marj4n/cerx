.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


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

    .line 251
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onStateChanged-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/Constants;->getConnectDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error disconnected:WifiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "Third, connect device success..."

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$202(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Z)Z

    .line 261
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;)V

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToAccessDevice(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect with device!!! Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    .line 281
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normal disconnected fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    if-nez v0, :cond_5

    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez p1, :cond_4

    .line 288
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;-><init>()V

    .line 290
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->finish()V

    goto :goto_1

    .line 283
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "Stay!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
