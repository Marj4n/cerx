.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->onCallP2pPeersChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 392
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v1, "-onCallP2pPeersChanged- connectP2pDevice ok."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
