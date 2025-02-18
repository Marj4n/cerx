.class public Lcom/baidu/mapapi/utils/AreaUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateArea(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-static {v2, p1}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    invoke-static {p0, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide p0

    cmpl-double v2, v3, v0

    if-eqz v2, :cond_2

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    mul-double v3, v3, p0

    return-wide v3

    :cond_2
    :goto_0
    return-wide v0
.end method
