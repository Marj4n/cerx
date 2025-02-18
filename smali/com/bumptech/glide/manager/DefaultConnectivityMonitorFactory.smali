.class public Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitorFactory.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    return-object v0

    .line 24
    :cond_1
    new-instance p1, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {p1}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    return-object p1
.end method
