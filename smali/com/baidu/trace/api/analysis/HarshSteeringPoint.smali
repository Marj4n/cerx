.class public Lcom/baidu/trace/api/analysis/HarshSteeringPoint;
.super Lcom/baidu/trace/model/Point;


# instance fields
.field private h:D

.field private i:Lcom/baidu/trace/api/analysis/TurnType;

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

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JDLcom/baidu/trace/api/analysis/TurnType;D)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->b:Lcom/baidu/trace/model/CoordType;

    iput-wide p3, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->d:J

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->h:D

    iput-object p7, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->i:Lcom/baidu/trace/api/analysis/TurnType;

    iput-wide p8, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->j:D

    return-void
.end method


# virtual methods
.method public getCentripetalAcceleration()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->h:D

    return-wide v0
.end method

.method public getTurnSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->j:D

    return-wide v0
.end method

.method public getTurnType()Lcom/baidu/trace/api/analysis/TurnType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->i:Lcom/baidu/trace/api/analysis/TurnType;

    return-object v0
.end method

.method public setCentripetalAcceleration(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->h:D

    return-void
.end method

.method public setTurnSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->j:D

    return-void
.end method

.method public setTurnType(Lcom/baidu/trace/api/analysis/TurnType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->i:Lcom/baidu/trace/api/analysis/TurnType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HarshSteeringPoint [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", centripetalAcceleration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", turnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->i:Lcom/baidu/trace/api/analysis/TurnType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", turnSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->j:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
