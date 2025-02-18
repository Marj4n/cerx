.class final Lcom/baidu/trace/as;
.super Lcom/baidu/trace/api/entity/OnEntityListener;


# instance fields
.field private synthetic a:Lcom/baidu/trace/ar;


# direct methods
.method constructor <init>(Lcom/baidu/trace/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/as;->a:Lcom/baidu/trace/ar;

    invoke-direct {p0}, Lcom/baidu/trace/api/entity/OnEntityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveLocation(Lcom/baidu/trace/model/TraceLocation;)V
    .locals 12

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getRadius()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getLongitude()D

    move-result-wide v2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/trace/c/e;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    iget-object v5, p0, Lcom/baidu/trace/as;->a:Lcom/baidu/trace/ar;

    sget-object v9, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {p1}, Lcom/baidu/trace/model/TraceLocation;->getRadius()D

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;Lcom/baidu/trace/model/LatLng;JLcom/baidu/trace/model/CoordType;D)V

    :cond_3
    :goto_1
    return-void
.end method
