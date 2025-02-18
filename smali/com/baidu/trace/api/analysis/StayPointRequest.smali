.class public final Lcom/baidu/trace/api/analysis/StayPointRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Lcom/baidu/trace/model/ProcessOption;

.field private g:Lcom/baidu/trace/model/CoordType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    const/16 v0, 0x258

    iput v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/16 p1, 0x258

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/16 p1, 0x258

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJIILcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/16 p1, 0x258

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->c:J

    iput p9, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    iput p10, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    iput-object p11, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    iput-object p12, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJILcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/16 p1, 0x258

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    iput-object p4, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->c:J

    iput p9, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    iput-object p10, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    iput-object p11, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public final getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->c:J

    return-wide v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessOption()Lcom/baidu/trace/model/ProcessOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->b:J

    return-wide v0
.end method

.method public final getStayRadius()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    return v0
.end method

.method public final getStayTime()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    return v0
.end method

.method public final setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->c:J

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final setProcessOption(Lcom/baidu/trace/model/ProcessOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->b:J

    return-void
.end method

.method public final setStayRadius(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    return-void
.end method

.method public final setStayTime(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StayPointRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", entityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", stayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", stayRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", processOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->f:Lcom/baidu/trace/model/ProcessOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/analysis/StayPointRequest;->g:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
