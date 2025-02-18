.class public final Lcom/baidu/trace/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/baidu/trace/api/fence/Fence;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/baidu/trace/api/fence/MonitoredStatus;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/trace/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/trace/c/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/shared_prefs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fenceStatus.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lcom/baidu/trace/api/fence/CircleFence;Lcom/baidu/trace/bi;Lcom/baidu/trace/api/fence/MonitoredAction;Landroid/os/Handler;)V
    .locals 11

    const-string v0, "coord_type"

    const-string v1, "radius"

    const-string v2, "longitude"

    const-string v3, "latitude"

    const-string v4, "time"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "fence_id"

    invoke-virtual {p1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "fence"

    invoke-virtual {p1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "monitored_person"

    invoke-virtual {p1}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "action"

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/MonitoredAction;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v8

    iget-wide v8, v8, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v6, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v8

    iget-wide v8, v8, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v6, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getRadius()D

    move-result-wide v8

    invoke-virtual {v6, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v8, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "cur_point"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    if-nez v8, :cond_0

    iput-object p2, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    :cond_0
    iget-object p2, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getLocTime()J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object p2

    iget-wide v8, p2, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object p2

    iget-wide v3, p2, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v7, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;

    invoke-virtual {p2}, Lcom/baidu/trace/bi;->getRadius()D

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object p2, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {p2}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pre_point"

    invoke-virtual {v5, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lcom/baidu/trace/am;->a(Lcom/baidu/trace/api/fence/CircleFence;Lcom/baidu/trace/api/fence/MonitoredAction;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa3

    invoke-virtual {p4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :catch_0
    return-void
.end method

.method private b(JLcom/baidu/trace/api/fence/MonitoredStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/baidu/trace/am;->a(JLcom/baidu/trace/api/fence/MonitoredStatus;)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(JLcom/baidu/trace/api/fence/Fence;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(JLcom/baidu/trace/api/fence/MonitoredStatus;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Lcom/baidu/trace/bi;Landroid/os/Handler;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/api/fence/Fence;

    instance-of v2, v1, Lcom/baidu/trace/api/fence/CircleFence;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/baidu/trace/api/fence/CircleFence;

    sget-object v2, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/baidu/trace/bi;->getRadius()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v2

    sget-object v3, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    iget-object v4, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/trace/api/fence/MonitoredStatus;

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v6

    cmpl-double v2, v6, v4

    if-lez v2, :cond_4

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    if-ne v2, v3, :cond_0

    :cond_3
    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v4

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->in:Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-direct {p0, v4, v5, v2}, Lcom/baidu/trace/aj;->b(JLcom/baidu/trace/api/fence/MonitoredStatus;)V

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredAction;->enter:Lcom/baidu/trace/api/fence/MonitoredAction;

    :goto_1
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/baidu/trace/aj;->a(Lcom/baidu/trace/api/fence/CircleFence;Lcom/baidu/trace/bi;Lcom/baidu/trace/api/fence/MonitoredAction;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->in:Lcom/baidu/trace/api/fence/MonitoredStatus;

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v2

    sget-object v4, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/trace/aj;->b(JLcom/baidu/trace/api/fence/MonitoredStatus;)V

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredAction;->exit:Lcom/baidu/trace/api/fence/MonitoredAction;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v1

    sget-object v3, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/trace/aj;->b(JLcom/baidu/trace/api/fence/MonitoredStatus;)V

    goto/16 :goto_0

    :cond_6
    iput-object p1, p0, Lcom/baidu/trace/aj;->c:Lcom/baidu/trace/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/baidu/trace/model/LatLng;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/trace/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/MonitoredStatusInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/api/fence/Fence;

    invoke-static {v1, p1, p2, p3}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/fence/Fence;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(J)Lcom/baidu/trace/api/fence/Fence;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/api/fence/Fence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/trace/aj;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/aj;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/aj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
