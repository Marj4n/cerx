.class public final Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:Lcom/baidu/trace/api/analysis/ThresholdOption;

.field private f:Lcom/baidu/trace/model/ProcessOption;

.field private g:Lcom/baidu/trace/model/CoordType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJILcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->c:J

    iput p9, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    iput-object p10, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    iput-object p11, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJLcom/baidu/trace/api/analysis/ThresholdOption;Lcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->c:J

    iput-object p9, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    iput-object p10, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    iput-object p11, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public final getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->c:J

    return-wide v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessOption()Lcom/baidu/trace/model/ProcessOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    return-object v0
.end method

.method public final getSpeedingThreshold()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->b:J

    return-wide v0
.end method

.method public final getThresholdOption()Lcom/baidu/trace/api/analysis/ThresholdOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    return-object v0
.end method

.method public final setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->c:J

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final setProcessOption(Lcom/baidu/trace/model/ProcessOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    return-void
.end method

.method public final setSpeedingThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->d:I

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->b:J

    return-void
.end method

.method public final setThresholdOption(Lcom/baidu/trace/api/analysis/ThresholdOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrivingBehaviorRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", thresholdOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->e:Lcom/baidu/trace/api/analysis/ThresholdOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->g:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
