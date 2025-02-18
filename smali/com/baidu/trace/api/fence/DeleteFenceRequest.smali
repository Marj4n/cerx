.class public final Lcom/baidu/trace/api/fence/DeleteFenceRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/trace/api/fence/FenceType;


# direct methods
.method private constructor <init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/baidu/trace/api/fence/FenceType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->b:Ljava/util/List;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public static buildLocalRequest(IJLjava/lang/String;Ljava/util/List;)Lcom/baidu/trace/api/fence/DeleteFenceRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/baidu/trace/api/fence/DeleteFenceRequest;"
        }
    .end annotation

    new-instance v7, Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    sget-object v6, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;-><init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v7
.end method

.method public static buildServerRequest(IJLjava/lang/String;Ljava/util/List;)Lcom/baidu/trace/api/fence/DeleteFenceRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/baidu/trace/api/fence/DeleteFenceRequest;"
        }
    .end annotation

    new-instance v7, Lcom/baidu/trace/api/fence/DeleteFenceRequest;

    sget-object v6, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;-><init>(IJLjava/lang/String;Ljava/util/List;Lcom/baidu/trace/api/fence/FenceType;)V

    return-object v7
.end method


# virtual methods
.method public final getFenceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->c:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public final getMonitoredPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setFenceIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->b:Ljava/util/List;

    return-void
.end method

.method public final setMonitoredPerson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteFenceRequest [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->c:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
