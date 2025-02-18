.class public Lcom/baidu/trace/api/entity/CommonResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/entity/EntityInfo;",
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

.method public constructor <init>(IILjava/lang/String;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/entity/EntityInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput p4, p0, Lcom/baidu/trace/api/entity/CommonResponse;->a:I

    iput p5, p0, Lcom/baidu/trace/api/entity/CommonResponse;->b:I

    iput-object p6, p0, Lcom/baidu/trace/api/entity/CommonResponse;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/entity/EntityInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/entity/CommonResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/entity/CommonResponse;->b:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/entity/CommonResponse;->a:I

    return v0
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/entity/EntityInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->c:Ljava/util/List;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->b:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommonResponse [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/CommonResponse;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
