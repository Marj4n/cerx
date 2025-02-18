.class public Lcom/jieli/lib/dv/control/model/GpsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->b:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->c:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->a:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->b:D

    return-void
.end method

.method public setSpeed(D)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->c:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",Longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",Speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jieli/lib/dv/control/model/GpsInfo;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
