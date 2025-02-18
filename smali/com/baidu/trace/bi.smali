.class final Lcom/baidu/trace/bi;
.super Lcom/baidu/trace/api/fence/AlarmPoint;


# direct methods
.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JD)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/baidu/trace/api/fence/AlarmPoint;-><init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JD)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/baidu/trace/bi;

    iget-wide v2, p0, Lcom/baidu/trace/bi;->c:J

    iget-wide v4, p1, Lcom/baidu/trace/bi;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v2, p0, Lcom/baidu/trace/bi;->a:Lcom/baidu/trace/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/trace/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/baidu/trace/bi;->a:Lcom/baidu/trace/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/trace/model/LatLng;->longitude:D

    iget-object v6, p1, Lcom/baidu/trace/bi;->a:Lcom/baidu/trace/model/LatLng;

    iget-wide v6, v6, Lcom/baidu/trace/model/LatLng;->latitude:D

    iget-object p1, p1, Lcom/baidu/trace/bi;->a:Lcom/baidu/trace/model/LatLng;

    iget-wide v8, p1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long p1, v2, v6

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackPoint [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/bi;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/bi;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/bi;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/bi;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
