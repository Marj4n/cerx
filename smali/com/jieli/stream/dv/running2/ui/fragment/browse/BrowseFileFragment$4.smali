.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;
.super Ljava/lang/Object;
.source "BrowseFileFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->showShareTipsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 430
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 431
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    .line 432
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
