.class public final Lcom/baidu/trace/d;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a()V
    .locals 5

    sget-object v0, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "from"

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/c/f;->a:Ljava/lang/String;

    const-string v2, "mb"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sv"

    const-string v2, "3.0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-virtual {v1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getIMEI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imt"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/c/e;->a:Ljava/lang/String;

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/c/f;->b:Ljava/lang/String;

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resid"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-virtual {v1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getCUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/c/e;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    const/4 v2, 0x1

    new-instance v3, Lcom/baidu/trace/e;

    invoke-direct {v3}, Lcom/baidu/trace/e;-><init>()V

    const-string v4, "lbs_tracesdk"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;)I

    return-void
.end method

.method protected static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    return-void
.end method
