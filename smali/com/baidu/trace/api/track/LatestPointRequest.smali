.class public final Lcom/baidu/trace/api/track/LatestPointRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/trace/model/ProcessOption;

.field private c:Lcom/baidu/trace/model/CoordType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/track/LatestPointRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/trace/api/track/LatestPointRequest;-><init>(IJLjava/lang/String;)V

    iput-object p5, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->b:Lcom/baidu/trace/model/ProcessOption;

    iput-object p6, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public final getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessOption()Lcom/baidu/trace/model/ProcessOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->b:Lcom/baidu/trace/model/ProcessOption;

    return-object v0
.end method

.method public final setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final setProcessOption(Lcom/baidu/trace/model/ProcessOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->b:Lcom/baidu/trace/model/ProcessOption;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LatestPointRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", processOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->b:Lcom/baidu/trace/model/ProcessOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointRequest;->c:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
