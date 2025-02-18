.class public final Lcom/baidu/trace/api/track/DistanceRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Lcom/baidu/trace/model/ProcessOption;

.field private f:Lcom/baidu/trace/api/track/SupplementMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    iput-object p4, p0, Lcom/baidu/trace/api/track/DistanceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    iput-object p4, p0, Lcom/baidu/trace/api/track/DistanceRequest;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/trace/api/track/DistanceRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/track/DistanceRequest;->c:J

    iput-boolean p9, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    iput-object p10, p0, Lcom/baidu/trace/api/track/DistanceRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    iput-object p11, p0, Lcom/baidu/trace/api/track/DistanceRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    return-void
.end method


# virtual methods
.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->c:J

    return-wide v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessOption()Lcom/baidu/trace/model/ProcessOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->b:J

    return-wide v0
.end method

.method public final getSupplementMode()Lcom/baidu/trace/api/track/SupplementMode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    return-object v0
.end method

.method public final isProcessed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    return v0
.end method

.method public final setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->c:J

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final setProcessOption(Lcom/baidu/trace/model/ProcessOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    return-void
.end method

.method public final setProcessed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->b:J

    return-void
.end method

.method public final setSupplementMode(Lcom/baidu/trace/api/track/SupplementMode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistanceRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isProcessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", processOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supplementMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/DistanceRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
