.class public final Lcom/baidu/trace/api/fence/FenceListResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field private a:I

.field private b:Lcom/baidu/trace/api/fence/FenceType;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/FenceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;ILcom/baidu/trace/api/fence/FenceType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/trace/api/fence/FenceType;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/FenceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/baidu/trace/api/fence/FenceListResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    iput p4, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->a:I

    iput-object p6, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    iput-object p4, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->b:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method


# virtual methods
.method public final getFenceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/FenceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getFenceType()Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->b:Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->a:I

    return v0
.end method

.method public final setFenceInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/FenceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->c:Ljava/util/List;

    return-void
.end method

.method public final setFenceType(Lcom/baidu/trace/api/fence/FenceType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->b:Lcom/baidu/trace/api/fence/FenceType;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->a:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FenceListResponse [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->b:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fenceInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceListResponse;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
