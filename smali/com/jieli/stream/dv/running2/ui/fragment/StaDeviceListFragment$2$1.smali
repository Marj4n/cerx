.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;
.super Ljava/lang/Object;
.source "StaDeviceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;Z)Z

    .line 177
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
