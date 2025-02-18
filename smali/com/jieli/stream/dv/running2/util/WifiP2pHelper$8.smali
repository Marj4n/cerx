.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$8;
.super Ljava/lang/Object;
.source "WifiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$8;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$8;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->access$1100(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
