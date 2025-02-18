.class public final Lcom/baidu/trace/api/fence/FenceInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/trace/api/fence/FenceShape;

.field private b:Lcom/baidu/trace/api/fence/CircleFence;

.field private c:Lcom/baidu/trace/api/fence/PolygonFence;

.field private d:Lcom/baidu/trace/api/fence/PolylineFence;

.field private e:Lcom/baidu/trace/api/fence/DistrictFence;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/api/fence/FenceShape;Lcom/baidu/trace/api/fence/CircleFence;Lcom/baidu/trace/api/fence/PolygonFence;Lcom/baidu/trace/api/fence/PolylineFence;Lcom/baidu/trace/api/fence/DistrictFence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    iput-object p2, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    iput-object p3, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    iput-object p4, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    iput-object p5, p0, Lcom/baidu/trace/api/fence/FenceInfo;->e:Lcom/baidu/trace/api/fence/DistrictFence;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/FenceInfo;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/trace/api/fence/FenceInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/api/fence/FenceShape;Lcom/baidu/trace/api/fence/CircleFence;Lcom/baidu/trace/api/fence/PolygonFence;Lcom/baidu/trace/api/fence/PolylineFence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    iput-object p2, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    iput-object p3, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    iput-object p4, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    iput-object p5, p0, Lcom/baidu/trace/api/fence/FenceInfo;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/FenceInfo;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCircleFence()Lcom/baidu/trace/api/fence/CircleFence;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    return-object v0
.end method

.method public final getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistrictFence()Lcom/baidu/trace/api/fence/DistrictFence;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->e:Lcom/baidu/trace/api/fence/DistrictFence;

    return-object v0
.end method

.method public final getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    return-object v0
.end method

.method public final getModifyTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getPolygonFence()Lcom/baidu/trace/api/fence/PolygonFence;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    return-object v0
.end method

.method public final getPolylineFence()Lcom/baidu/trace/api/fence/PolylineFence;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    return-object v0
.end method

.method public final setCircleFence(Lcom/baidu/trace/api/fence/CircleFence;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    return-void
.end method

.method public final setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final setDistrictFence(Lcom/baidu/trace/api/fence/DistrictFence;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->e:Lcom/baidu/trace/api/fence/DistrictFence;

    return-void
.end method

.method public final setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    return-void
.end method

.method public final setModifyTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final setPolygonFence(Lcom/baidu/trace/api/fence/PolygonFence;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    return-void
.end method

.method public final setPolylineFence(Lcom/baidu/trace/api/fence/PolylineFence;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    const-string v2, ", circleFence="

    const-string v3, "]"

    const-string v4, ", modifyTime="

    const-string v5, ", createTime="

    const-string v6, "FenceInfo [fenceShape="

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    const-string v7, ", polygonFence="

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    const-string v8, ", polylineFence="

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    const-string v9, ", districtFence="

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->e:Lcom/baidu/trace/api/fence/DistrictFence;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->a:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->b:Lcom/baidu/trace/api/fence/CircleFence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->c:Lcom/baidu/trace/api/fence/PolygonFence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceInfo;->d:Lcom/baidu/trace/api/fence/PolylineFence;

    goto :goto_1
.end method
