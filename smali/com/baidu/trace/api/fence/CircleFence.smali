.class public final Lcom/baidu/trace/api/fence/CircleFence;
.super Lcom/baidu/trace/api/fence/Fence;


# instance fields
.field private f:Lcom/baidu/trace/model/LatLng;

.field private g:D

.field private h:Lcom/baidu/trace/model/CoordType;


# direct methods
.method private constructor <init>(JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p9

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/Fence;-><init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, v7, Lcom/baidu/trace/api/fence/CircleFence;->h:Lcom/baidu/trace/model/CoordType;

    move-object v0, p6

    iput-object v0, v7, Lcom/baidu/trace/api/fence/CircleFence;->f:Lcom/baidu/trace/model/LatLng;

    move-wide v0, p7

    iput-wide v0, v7, Lcom/baidu/trace/api/fence/CircleFence;->g:D

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/baidu/trace/api/fence/CircleFence;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public static buildLocalFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;
    .locals 12

    new-instance v11, Lcom/baidu/trace/api/fence/CircleFence;

    sget-object v4, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v11

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/baidu/trace/api/fence/CircleFence;-><init>(JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)V

    return-object v11
.end method

.method public static buildServerFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;
    .locals 12

    new-instance v11, Lcom/baidu/trace/api/fence/CircleFence;

    sget-object v4, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v11

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/baidu/trace/api/fence/CircleFence;-><init>(JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)V

    return-object v11
.end method


# virtual methods
.method public final getCenter()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/CircleFence;->f:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public final getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/CircleFence;->h:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/CircleFence;->g:D

    return-wide v0
.end method

.method public final setCenter(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/CircleFence;->f:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public final setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/CircleFence;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/CircleFence;->g:D

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleFence [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->e:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->f:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", denoise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/CircleFence;->h:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
