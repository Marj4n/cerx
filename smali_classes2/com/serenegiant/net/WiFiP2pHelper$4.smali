.class Lcom/serenegiant/net/WiFiP2pHelper$4;
.super Ljava/lang/Object;
.source "WiFiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


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

    .line 404
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$000(Lcom/serenegiant/net/WiFiP2pHelper;Z)V

    .line 409
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$100(Lcom/serenegiant/net/WiFiP2pHelper;)V

    .line 410
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/serenegiant/net/WiFiP2pHelper;->access$202(Lcom/serenegiant/net/WiFiP2pHelper;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$300(Lcom/serenegiant/net/WiFiP2pHelper;)I

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$308(Lcom/serenegiant/net/WiFiP2pHelper;)I

    .line 416
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$400(Lcom/serenegiant/net/WiFiP2pHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 417
    :goto_0
    iget-object v4, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v4}, Lcom/serenegiant/net/WiFiP2pHelper;->access$500(Lcom/serenegiant/net/WiFiP2pHelper;)Lcom/serenegiant/net/WiFiP2pHelper$WiFiDirectBroadcastReceiver;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v1}, Lcom/serenegiant/net/WiFiP2pHelper;->access$700(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    .line 421
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/serenegiant/net/WiFiP2pHelper$4;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-static {v4}, Lcom/serenegiant/net/WiFiP2pHelper;->access$600(Lcom/serenegiant/net/WiFiP2pHelper;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v4

    .line 420
    invoke-virtual {v2, v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/serenegiant/net/WiFiP2pHelper;->access$202(Lcom/serenegiant/net/WiFiP2pHelper;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 412
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
