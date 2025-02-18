.class public Lcom/baidu/trace/api/fence/AlarmPoint;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/baidu/trace/model/LatLng;

.field protected b:Lcom/baidu/trace/model/CoordType;

.field protected c:J

.field protected d:D

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->b:Lcom/baidu/trace/model/CoordType;

    iput-wide p3, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->c:J

    iput-wide p5, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->d:D

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JJD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->b:Lcom/baidu/trace/model/CoordType;

    iput-wide p3, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->c:J

    iput-wide p5, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->e:J

    iput-wide p7, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->d:D

    return-void
.end method


# virtual methods
.method public getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->e:J

    return-wide v0
.end method

.method public getLocTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->c:J

    return-wide v0
.end method

.method public getLocation()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->a:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->d:D

    return-wide v0
.end method

.method public setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->e:J

    return-void
.end method

.method public setLocTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->c:J

    return-void
.end method

.method public setLocation(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->a:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->d:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlarmPoint [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", radius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/AlarmPoint;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
