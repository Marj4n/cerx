.class Lcom/serenegiant/net/WiFiP2pHelper$6;
.super Ljava/lang/Object;
.source "WiFiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/WiFiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/net/WiFiP2pHelper;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/WiFiP2pHelper;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$6;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$6;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-virtual {v0, p1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnConnect(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    :cond_0
    return-void
.end method
