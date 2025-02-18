.class Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$1;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 85
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start discovery error, code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 80
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start discovery wifi direct list"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
