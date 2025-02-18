.class public final Lcom/baidu/trace/api/track/HistoryTrackRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Lcom/baidu/trace/model/ProcessOption;

.field private f:Lcom/baidu/trace/api/track/SupplementMode;

.field private g:Lcom/baidu/trace/model/SortType;

.field private h:Lcom/baidu/trace/model/CoordType;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    sget-object v0, Lcom/baidu/trace/api/track/SupplementMode;->no_supplement:Lcom/baidu/trace/api/track/SupplementMode;

    iput-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    sget-object v0, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    iput-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    sget-object p1, Lcom/baidu/trace/api/track/SupplementMode;->no_supplement:Lcom/baidu/trace/api/track/SupplementMode;

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    sget-object p1, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/track/HistoryTrackRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;Lcom/baidu/trace/model/SortType;Lcom/baidu/trace/model/CoordType;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/trace/api/track/HistoryTrackRequest;-><init>(IJLjava/lang/String;)V

    iput-wide p5, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->b:J

    iput-wide p7, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->c:J

    iput-boolean p9, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    iput-object p10, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    iput-object p11, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    iput-object p12, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    iput-object p13, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    iput p14, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->i:I

    iput p15, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->j:I

    return-void
.end method


# virtual methods
.method public final getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->c:J

    return-wide v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->i:I

    return v0
.end method

.method public final getPageSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->j:I

    return v0
.end method

.method public final getProcessOption()Lcom/baidu/trace/model/ProcessOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    return-object v0
.end method

.method public final getSortType()Lcom/baidu/trace/model/SortType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->b:J

    return-wide v0
.end method

.method public final getSupplementMode()Lcom/baidu/trace/api/track/SupplementMode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    return-object v0
.end method

.method public final isProcessed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    return v0
.end method

.method public final setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->c:J

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->i:I

    return-void
.end method

.method public final setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->j:I

    return-void
.end method

.method public final setProcessOption(Lcom/baidu/trace/model/ProcessOption;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    return-void
.end method

.method public final setProcessed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    return-void
.end method

.method public final setSortType(Lcom/baidu/trace/model/SortType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->b:J

    return-void
.end method

.method public final setSupplementMode(Lcom/baidu/trace/api/track/SupplementMode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HistoryTrackRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isProcessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", processOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->e:Lcom/baidu/trace/model/ProcessOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supplementMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->f:Lcom/baidu/trace/api/track/SupplementMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->g:Lcom/baidu/trace/model/SortType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->h:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
