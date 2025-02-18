.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;
.super Ljava/lang/Object;
.source "StaDeviceListFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 385
    new-instance p2, Lcom/jieli/stream/dv/running2/bean/DeviceBean;

    invoke-direct {p2}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;-><init>()V

    .line 386
    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->setWifiIP(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p2, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->setMode(I)V

    .line 388
    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->setWifiSSID(Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x458

    .line 391
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 398
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , msg : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->access$402(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;Z)Z

    return-void
.end method
