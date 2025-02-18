.class public Lcom/baidu/trace/model/Point;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/baidu/trace/model/LatLng;

.field protected b:Lcom/baidu/trace/model/CoordType;

.field protected c:D

.field protected d:J

.field protected e:I

.field protected f:D

.field protected g:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/model/Point;->a:Lcom/baidu/trace/model/LatLng;

    iput-object p2, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/Point;->e:I

    return v0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/Point;->g:D

    return-wide v0
.end method

.method public getLocTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/Point;->d:J

    return-wide v0
.end method

.method public getLocation()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/Point;->a:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/Point;->c:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/Point;->f:D

    return-wide v0
.end method

.method public setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/Point;->e:I

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/Point;->g:D

    return-void
.end method

.method public setLocTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/Point;->d:J

    return-void
.end method

.method public setLocation(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/Point;->a:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/Point;->c:D

    return-void
.end method

.method public setSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/Point;->f:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/model/Point;->a:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/model/Point;->b:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/model/Point;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", locTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/model/Point;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/model/Point;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/model/Point;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/model/Point;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
