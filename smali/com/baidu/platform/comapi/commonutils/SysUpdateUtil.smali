.class public Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/util/SysUpdateObserver;


# static fields
.field static a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    const-string v1, ""

    sput-object v1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    sput v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->a()J

    sget-object v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->b()V

    :cond_0
    return-void
.end method

.method public updateNetworkInfo(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    return-void
.end method

.method public updateNetworkProxy(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    sput-boolean v4, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    return-void

    :cond_0
    const-string v2, "mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->isWifiConnected(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    sput-boolean v4, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    const-string v0, "10.0.0.200"

    const/16 v1, 0x50

    const-string v2, "10.0.0.172"

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v6, "cmwap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "uniwap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "3gwap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "ctwap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "cmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "uninet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ctnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3gnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    sput-boolean v4, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_4

    :cond_5
    :goto_0
    sput-object v2, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sput-object v2, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    sput v6, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->d:I

    :goto_1
    sput-boolean v5, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_2
    sput-object v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    :goto_3
    sput v1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->d:I

    goto :goto_1

    :cond_8
    :goto_4
    sget-boolean p1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->b:Z

    if-ne p1, v5, :cond_9

    sget-object p1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    sget v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->d:I

    invoke-static {p1, v0}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    invoke-static {v3, v4}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    :cond_a
    :goto_5
    return-void
.end method

.method public updatePhoneInfo()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->b()V

    :cond_0
    return-void
.end method
