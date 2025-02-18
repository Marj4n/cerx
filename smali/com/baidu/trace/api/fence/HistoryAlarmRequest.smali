.class public final Lcom/baidu/trace/api/fence/HistoryAlarmRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/trace/model/CoordType;

.field private f:Lcom/baidu/trace/api/fence/FenceType;


# direct methods
.method private constructor <init>(IJJJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/model/CoordType;",
            "Lcom/baidu/trace/api/fence/FenceType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->e:Lcom/baidu/trace/model/CoordType;

    iput-wide p4, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->a:J

    iput-wide p6, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->b:J

    iput-object p8, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->c:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->d:Ljava/util/List;

    iput-object p10, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->e:Lcom/baidu/trace/model/CoordType;

    iput-object p11, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->f:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public static buildLocalRequest(IJJJLjava/lang/String;Ljava/util/List;)Lcom/baidu/trace/api/fence/HistoryAlarmRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/baidu/trace/api/fence/HistoryAlarmRequest;"
        }
    .end annotation

    new-instance v12, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;

    sget-object v10, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    sget-object v11, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v12

    move v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;-><init>(IJJJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v12
.end method

.method public static buildServerRequest(IJJJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/HistoryAlarmRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/HistoryAlarmRequest;"
        }
    .end annotation

    new-instance v12, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;

    sget-object v11, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v12

    move v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;-><init>(IJJJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v12
.end method


# virtual methods
.method public final getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->e:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->b:J

    return-wide v0
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

    iget-object v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->f:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public final getMonitoredPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->a:J

    return-wide v0
.end method

.method public final setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 2

    sget-object v0, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->f:Lcom/baidu/trace/api/fence/FenceType;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->e:Lcom/baidu/trace/model/CoordType;

    :cond_0
    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->b:J

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

    iput-object p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->d:Ljava/util/List;

    return-void
.end method

.method public final setMonitoredPerson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->a:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HistoryAlarmRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->e:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->f:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
