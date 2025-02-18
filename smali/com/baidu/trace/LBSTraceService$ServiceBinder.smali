.class Lcom/baidu/trace/LBSTraceService$ServiceBinder;
.super Lcom/baidu/trace/IService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/LBSTraceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinder"
.end annotation


# instance fields
.field private service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/trace/LBSTraceService;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/IService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleExtendedOperate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-static {p1}, Lcom/baidu/trace/LBSTraceService;->a(Lcom/baidu/trace/LBSTraceService;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/baidu/trace/g;->b()V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    const/16 v0, 0x12

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    :cond_0
    return-void
.end method

.method public handleLocalFence(IJLjava/lang/String;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-wide/from16 v9, p2

    move-object v11, p0

    move-object/from16 v1, p4

    iget-object v2, v11, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/trace/LBSTraceService;

    invoke-static {v2}, Lcom/baidu/trace/LBSTraceService;->e(Lcom/baidu/trace/LBSTraceService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.baidu.trace_fence_status"

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v0}, Lcom/baidu/trace/aj;->c()V

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v0, :cond_4

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    sget-object v4, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/trace/aj;->a(J)V

    invoke-interface {v13, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v8}, Lcom/baidu/trace/api/fence/CircleFence;->buildLocalFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/api/fence/CircleFence;)V

    sget-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v1, v9, v10, v0}, Lcom/baidu/trace/aj;->a(JLcom/baidu/trace/api/fence/Fence;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v8}, Lcom/baidu/trace/api/fence/CircleFence;->buildLocalFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/api/fence/CircleFence;)V

    sget-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v1, v9, v10, v0}, Lcom/baidu/trace/aj;->a(JLcom/baidu/trace/api/fence/Fence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return v12
.end method

.method public queryRealTimeLoc(Lcom/baidu/trace/model/TraceLocation;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public registerListener(Lcom/baidu/trace/IListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->setClientListener(Lcom/baidu/trace/IListener;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceService;->d(Lcom/baidu/trace/LBSTraceService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/trace/LBSTraceService;->a(Lcom/baidu/trace/LBSTraceService;Z)Z

    :cond_0
    return-void
.end method

.method public setCacheSize(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->b(I)Z

    move-result p1

    return p1
.end method

.method public setInterval(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/trace/LBSTraceService;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public setLocTimeOffset(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->c(I)Z

    move-result p1

    return p1
.end method

.method public setLocationMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->d(I)Z

    move-result p1

    return p1
.end method

.method public setProtocolType(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/trace/model/ProtocolType;->HTTP:Lcom/baidu/trace/model/ProtocolType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    :goto_0
    sput-object p1, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    const/4 p1, 0x1

    return p1
.end method

.method public startGather()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceService;->c(Lcom/baidu/trace/LBSTraceService;)I

    move-result v0

    return v0
.end method

.method public stopGather()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceService;->b(Lcom/baidu/trace/LBSTraceService;)I

    move-result v0

    return v0
.end method

.method public stopTrace(JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p1}, Lcom/baidu/trace/LBSTraceService;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/trace/LBSTraceService;->setClientListener(Lcom/baidu/trace/IListener;)V

    return-void
.end method
