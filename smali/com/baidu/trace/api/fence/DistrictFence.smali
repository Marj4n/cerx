.class public Lcom/baidu/trace/api/fence/DistrictFence;
.super Lcom/baidu/trace/api/fence/Fence;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/baidu/trace/api/fence/Fence;-><init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;)V

    iput-object p7, p0, Lcom/baidu/trace/api/fence/DistrictFence;->f:Ljava/lang/String;

    return-void
.end method

.method public static buildServerFence(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/baidu/trace/api/fence/DistrictFence;
    .locals 9

    new-instance v8, Lcom/baidu/trace/api/fence/DistrictFence;

    sget-object v6, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/trace/api/fence/DistrictFence;-><init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/DistrictFence;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/DistrictFence;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->g:Ljava/lang/String;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistrictFence [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->e:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", denoise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/DistrictFence;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
