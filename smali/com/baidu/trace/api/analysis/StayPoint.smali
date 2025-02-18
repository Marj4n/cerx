.class public Lcom/baidu/trace/api/analysis/StayPoint;
.super Lcom/baidu/trace/model/Point;


# instance fields
.field private h:J

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(JJILcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/Point;-><init>()V

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->h:J

    iput-wide p3, p0, Lcom/baidu/trace/api/analysis/StayPoint;->i:J

    iput p5, p0, Lcom/baidu/trace/api/analysis/StayPoint;->j:I

    iput-object p6, p0, Lcom/baidu/trace/api/analysis/StayPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p7, p0, Lcom/baidu/trace/api/analysis/StayPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/StayPoint;->j:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/StayPoint;->i:J

    return-wide v0
.end method

.method public getLocation()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/StayPoint;->a:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/StayPoint;->h:J

    return-wide v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->j:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->i:J

    return-void
.end method

.method public setLocation(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->a:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->h:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StayPoint [startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/StayPoint;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
