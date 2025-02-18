.class public Lcom/baidu/trace/api/analysis/SpeedingPoint;
.super Lcom/baidu/trace/model/Point;


# instance fields
.field private h:D

.field private i:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JDD)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->b:Lcom/baidu/trace/model/CoordType;

    iput-wide p3, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->d:J

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->h:D

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->i:D

    return-void
.end method


# virtual methods
.method public getActualSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->h:D

    return-wide v0
.end method

.method public getLimitSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->i:D

    return-wide v0
.end method

.method public setActualSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->h:D

    return-void
.end method

.method public setLimitSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->i:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedingPoint [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", actualSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", limitSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/SpeedingPoint;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
