.class public final Lcom/baidu/trace/api/fence/UpdateFenceResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/trace/api/fence/FenceType;

.field private d:Lcom/baidu/trace/api/fence/FenceShape;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput-wide p4, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->a:J

    iput-object p6, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->b:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput-object p4, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method


# virtual methods
.method public final getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistrictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->f:Ljava/util/List;

    return-object v0
.end method

.method public final getFenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->a:J

    return-wide v0
.end method

.method public final getFenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->d:Lcom/baidu/trace/api/fence/FenceShape;

    return-object v0
.end method

.method public final getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public final setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->e:Ljava/lang/String;

    return-void
.end method

.method public final setDistrictList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->f:Ljava/util/List;

    return-void
.end method

.method public final setFenceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->a:J

    return-void
.end method

.method public final setFenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public final setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->d:Lcom/baidu/trace/api/fence/FenceShape;

    return-void
.end method

.method public final setFenceType(Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->d:Lcom/baidu/trace/api/fence/FenceShape;

    const-string v2, "]"

    const-string v3, ", fenceShape="

    const-string v4, ", fenceType="

    const-string v5, ", fenceName="

    const-string v6, ", fenceId="

    const-string v7, ", message="

    const-string v8, ", status="

    const-string v9, "UpdateFenceResponse [tag="

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->d:Lcom/baidu/trace/api/fence/FenceShape;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->c:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->d:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", districtList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->f:Ljava/util/List;

    goto :goto_0
.end method
