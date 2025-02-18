.class public final Lcom/baidu/trace/api/track/HistoryTrackResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:D

.field private e:D

.field private f:Lcom/baidu/trace/model/Point;

.field private g:Lcom/baidu/trace/model/Point;

.field public trackPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/track/TrackPoint;",
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

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;DDLcom/baidu/trace/model/Point;Lcom/baidu/trace/model/Point;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "DD",
            "Lcom/baidu/trace/model/Point;",
            "Lcom/baidu/trace/model/Point;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/track/TrackPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput p4, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->a:I

    iput p5, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->b:I

    iput-object p6, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->c:Ljava/lang/String;

    iput-wide p7, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->d:D

    iput-wide p9, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->e:D

    iput-object p11, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->f:Lcom/baidu/trace/model/Point;

    iput-object p12, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->g:Lcom/baidu/trace/model/Point;

    iput-object p13, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->trackPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->d:D

    return-wide v0
.end method

.method public final getEndPoint()Lcom/baidu/trace/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->g:Lcom/baidu/trace/model/Point;

    return-object v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->b:I

    return v0
.end method

.method public final getStartPoint()Lcom/baidu/trace/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->f:Lcom/baidu/trace/model/Point;

    return-object v0
.end method

.method public final getTollDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->e:D

    return-wide v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->a:I

    return v0
.end method

.method public final getTrackPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/track/TrackPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->trackPoints:Ljava/util/List;

    return-object v0
.end method

.method public final setDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->d:D

    return-void
.end method

.method public final setEndPoint(Lcom/baidu/trace/model/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->g:Lcom/baidu/trace/model/Point;

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->b:I

    return-void
.end method

.method public final setStartPoint(Lcom/baidu/trace/model/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->f:Lcom/baidu/trace/model/Point;

    return-void
.end method

.method public final setTollDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->e:D

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->a:I

    return-void
.end method

.method public final setTrackPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/track/TrackPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->trackPoints:Ljava/util/List;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HistoryTrackResponse [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", tollDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", startPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->f:Lcom/baidu/trace/model/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->g:Lcom/baidu/trace/model/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/HistoryTrackResponse;->trackPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
