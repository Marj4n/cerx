.class public final Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/trace/model/LatLng;

.field private d:Lcom/baidu/trace/model/CoordType;

.field private e:Lcom/baidu/trace/api/fence/FenceType;


# direct methods
.method private constructor <init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/model/LatLng;",
            "Lcom/baidu/trace/model/CoordType;",
            "Lcom/baidu/trace/api/fence/FenceType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->b:Ljava/util/List;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->c:Lcom/baidu/trace/model/LatLng;

    iput-object p7, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->d:Lcom/baidu/trace/model/CoordType;

    iput-object p8, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->e:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public static buildLocalRequest(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/model/LatLng;",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;"
        }
    .end annotation

    new-instance v9, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;

    sget-object v8, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v9

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;-><init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v9
.end method

.method public static buildServerRequest(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/model/LatLng;",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;"
        }
    .end annotation

    new-instance v9, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;

    sget-object v8, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v9

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;-><init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v9
.end method


# virtual methods
.method public final getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->d:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getFenceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->e:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public final getLatLng()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->c:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public final getMonitoredPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->d:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setFenceIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->b:Ljava/util/List;

    return-void
.end method

.method public final setLatLng(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->c:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public final setMonitoredPerson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->e:Lcom/baidu/trace/api/fence/FenceType;

    const-string v2, "]"

    const-string v3, ", fenceType="

    const-string v4, ", coordType="

    const-string v5, ", latLng="

    const-string v6, ", fenceIds="

    const-string v7, ", serviceId="

    const-string v8, "MonitoredStatusByLocationRequest [tag="

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->serviceId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->c:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->d:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->e:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->serviceId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
