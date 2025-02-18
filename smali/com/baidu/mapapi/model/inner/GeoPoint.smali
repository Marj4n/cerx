.class public Lcom/baidu/mapapi/model/inner/GeoPoint;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    iput-wide p3, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    check-cast p1, Lcom/baidu/mapapi/model/inner/GeoPoint;

    iget-wide v3, p1, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    iget-wide v3, p1, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getLatitudeE6()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    return-wide v0
.end method

.method public getLongitudeE6()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-wide v0
.end method

.method public setLatitudeE6(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    return-void
.end method

.method public setLongitudeE6(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoPoint: Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/mapapi/model/inner/GeoPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
