.class public final Lcom/baidu/trace/api/bos/BosPutObjectResponse;
.super Lcom/baidu/trace/api/bos/BosObjectResponse;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/baidubce/services/bos/model/ObjectMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/bos/BosObjectResponse;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/bos/BosObjectResponse;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public final getETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaData()Lcom/baidubce/services/bos/model/ObjectMetadata;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-object v0
.end method

.method public final setETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public final setMetaData(Lcom/baidubce/services/bos/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidubce/services/bos/model/ObjectMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BosPutObjectResponse [tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", objectType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", objectKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", eTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", metaData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
