.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;
.super Ljava/lang/Object;
.source "StaDeviceListFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


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

    .line 162
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;Z)Z

    .line 170
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->requestPeerList()V

    .line 171
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
