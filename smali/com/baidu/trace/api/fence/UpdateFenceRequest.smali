.class public final Lcom/baidu/trace/api/fence/UpdateFenceRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Lcom/baidu/trace/api/fence/Fence;


# direct methods
.method private constructor <init>(IJLcom/baidu/trace/api/fence/Fence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->a:Lcom/baidu/trace/api/fence/Fence;

    return-void
.end method

.method public static buildLocalCircleRequest(IJJLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/UpdateFenceRequest;
    .locals 1

    new-instance v0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    invoke-static/range {p3 .. p11}, Lcom/baidu/trace/api/fence/CircleFence;->buildLocalFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;-><init>(IJLcom/baidu/trace/api/fence/Fence;)V

    return-object v0
.end method

.method public static buildServerCircleRequest(IJJLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/UpdateFenceRequest;
    .locals 1

    new-instance v0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    invoke-static/range {p3 .. p11}, Lcom/baidu/trace/api/fence/CircleFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;-><init>(IJLcom/baidu/trace/api/fence/Fence;)V

    return-object v0
.end method

.method public static buildServerDistrictRequest(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/baidu/trace/api/fence/UpdateFenceRequest;
    .locals 7

    new-instance v0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    move-wide v1, p3

    move-object v3, p5

    move-object v4, p6

    move v5, p8

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/baidu/trace/api/fence/DistrictFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/baidu/trace/api/fence/DistrictFence;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;-><init>(IJLcom/baidu/trace/api/fence/Fence;)V

    return-object v0
.end method

.method public static buildServerPolygonRequest(IJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/UpdateFenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;I",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/UpdateFenceRequest;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    invoke-static/range {p3 .. p9}, Lcom/baidu/trace/api/fence/PolygonFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/PolygonFence;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;-><init>(IJLcom/baidu/trace/api/fence/Fence;)V

    return-object v0
.end method

.method public static buildServerPolylineRequest(IJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;IILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/UpdateFenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;II",
            "Lcom/baidu/trace/model/CoordType;",
            ")",
            "Lcom/baidu/trace/api/fence/UpdateFenceRequest;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    invoke-static/range {p3 .. p10}, Lcom/baidu/trace/api/fence/PolylineFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/PolylineFence;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;-><init>(IJLcom/baidu/trace/api/fence/Fence;)V

    return-object v0
.end method


# virtual methods
.method public final getFence()Lcom/baidu/trace/api/fence/Fence;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->a:Lcom/baidu/trace/api/fence/Fence;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->a:Lcom/baidu/trace/api/fence/Fence;

    instance-of v1, v0, Lcom/baidu/trace/api/fence/CircleFence;

    const-string v2, "]"

    const-string v3, ", serviceId="

    const-string v4, "UpdateFenceRequest [tag="

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->serviceId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", circleFence="

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->a:Lcom/baidu/trace/api/fence/Fence;

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/Fence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolygonFence;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->serviceId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", polygonFence="

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolylineFence;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->serviceId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", polylineFence="

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/baidu/trace/api/fence/DistrictFence;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->serviceId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", districtFence="

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->serviceId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fence="

    goto :goto_0
.end method
