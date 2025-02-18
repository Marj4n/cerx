.class public Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;
.super Lcom/baidu/trace/model/Point;


# instance fields
.field private h:D

.field private i:D

.field private j:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JDDD)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->b:Lcom/baidu/trace/model/CoordType;

    iput-wide p3, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->d:J

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->h:D

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->i:D

    iput-wide p9, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->j:D

    return-void
.end method


# virtual methods
.method public getAcceleration()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->h:D

    return-wide v0
.end method

.method public getEndSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->j:D

    return-wide v0
.end method

.method public getInitialSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->i:D

    return-wide v0
.end method

.method public setAcceleration(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->h:D

    return-void
.end method

.method public setEndSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->j:D

    return-void
.end method

.method public setInitialSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->i:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HarshAccelerationPoint [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", acceleration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", initialSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", endSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->j:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
