.class public final Lcom/baidu/trace/api/track/LatestPointResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/trace/api/track/LatestPoint;

.field private c:D


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

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/api/track/LatestPoint;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput-object p4, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->b:Lcom/baidu/trace/api/track/LatestPoint;

    iput-wide p6, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->c:D

    return-void
.end method


# virtual methods
.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatestPoint()Lcom/baidu/trace/api/track/LatestPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->b:Lcom/baidu/trace/api/track/LatestPoint;

    return-object v0
.end method

.method public final getLimitSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->c:D

    return-wide v0
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->a:Ljava/lang/String;

    return-void
.end method

.method public final setLatestPoint(Lcom/baidu/trace/api/track/LatestPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->b:Lcom/baidu/trace/api/track/LatestPoint;

    return-void
.end method

.method public final setLimitSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->c:D

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LatestPointResponse [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latestPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->b:Lcom/baidu/trace/api/track/LatestPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limitSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/LatestPointResponse;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
