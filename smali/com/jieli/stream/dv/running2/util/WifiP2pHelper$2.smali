.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->disconnectP2pForGroup(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

.field final synthetic val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$2;->val$actionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->disconnectP2pDevice(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method
