.class Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkCallback"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/serenegiant/net/ConnectivityHelper;


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    .line 327
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 324
    const-class p1, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 337
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    invoke-static {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->access$000(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 350
    iget-object p2, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    invoke-static {p2, p1}, Lcom/serenegiant/net/ConnectivityHelper;->access$000(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/Network;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 366
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 374
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 377
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    invoke-static {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->access$000(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/Network;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 382
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 386
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/net/ConnectivityHelper;->access$100(Lcom/serenegiant/net/ConnectivityHelper;I)V

    return-void
.end method
