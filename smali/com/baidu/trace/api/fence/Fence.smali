.class public abstract Lcom/baidu/trace/api/fence/Fence;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Lcom/baidu/trace/api/fence/FenceType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(JLjava/lang/String;Ljava/lang/String;ILcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/Fence;->a:J

    iput-object p3, p0, Lcom/baidu/trace/api/fence/Fence;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/Fence;->e:Lcom/baidu/trace/api/fence/FenceType;

    iput p5, p0, Lcom/baidu/trace/api/fence/Fence;->d:I

    iput-object p4, p0, Lcom/baidu/trace/api/fence/Fence;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDenoise()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/fence/Fence;->d:I

    return v0
.end method

.method public getFenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/Fence;->a:J

    return-wide v0
.end method

.method public getFenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/Fence;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/Fence;->e:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public getMonitoredPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/Fence;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDenoise(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/fence/Fence;->d:I

    return-void
.end method

.method public setFenceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/Fence;->a:J

    return-void
.end method

.method public setFenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/Fence;->b:Ljava/lang/String;

    return-void
.end method

.method public setMonitoredPerson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/Fence;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fence [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/Fence;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/Fence;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", denoise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/Fence;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/Fence;->e:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
