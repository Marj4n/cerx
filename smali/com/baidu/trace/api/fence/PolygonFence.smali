.class public final Lcom/baidu/trace/api/fence/PolygonFence;
.super Lcom/baidu/trace/api/fence/Fence;


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/trace/model/CoordType;


# direct methods
.method private constructor <init>(JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/baidu/trace/api/fence/FenceType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;I",
            "Lcom/baidu/trace/model/CoordType;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/Fence;-><init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/PolygonFence;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/baidu/trace/api/fence/PolygonFence;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public static buildServerFence(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/PolygonFence;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;I",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/PolygonFence;"
        }
    .end annotation

    new-instance v9, Lcom/baidu/trace/api/fence/PolygonFence;

    sget-object v4, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/fence/PolygonFence;-><init>(JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)V

    return-object v9
.end method


# virtual methods
.method public final getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/PolygonFence;->g:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getVertexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/fence/PolygonFence;->f:Ljava/util/List;

    return-object v0
.end method

.method public final setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setVertexes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->f:Ljava/util/List;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolygonFence [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->e:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vertexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", denoise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/PolygonFence;->g:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
