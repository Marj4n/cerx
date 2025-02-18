.class public Lcom/baidu/trace/api/track/AddPointRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/trace/model/Point;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/model/Point;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lcom/baidu/trace/model/Point;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/track/AddPointRequest;-><init>(IJ)V

    iput-object p4, p0, Lcom/baidu/trace/api/track/AddPointRequest;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/track/AddPointRequest;->b:Lcom/baidu/trace/model/Point;

    iput-object p6, p0, Lcom/baidu/trace/api/track/AddPointRequest;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/trace/api/track/AddPointRequest;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getColumns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/track/AddPointRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/AddPointRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/AddPointRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/baidu/trace/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/AddPointRequest;->b:Lcom/baidu/trace/model/Point;

    return-object v0
.end method

.method public setColumns(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Lcom/baidu/trace/model/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->b:Lcom/baidu/trace/model/Point;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AddPointRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", entityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", point="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/api/track/AddPointRequest;->b:Lcom/baidu/trace/model/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", objectName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/api/track/AddPointRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/track/AddPointRequest;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
