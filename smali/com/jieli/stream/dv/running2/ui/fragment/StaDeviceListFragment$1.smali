.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;
.super Ljava/lang/Object;
.source "StaDeviceListFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x457

    if-eq v0, v1, :cond_1

    const/16 v1, 0x458

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/DeviceBean;

    .line 70
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ADD_NEW_DEVICE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->add(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
