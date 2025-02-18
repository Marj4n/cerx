.class public final Lcom/baidu/trace/api/bos/BosGetObjectResponse;
.super Lcom/baidu/trace/api/bos/BosObjectResponse;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/baidubce/services/bos/model/ObjectMetadata;

.field private e:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/bos/BosObjectResponse;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/bos/BosObjectResponse;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final getETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaData()Lcom/baidubce/services/bos/model/ObjectMetadata;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-object v0
.end method

.method public final getObjectContent()Ljava/io/ByteArrayOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->e:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public final setETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public final setMetaData(Lcom/baidubce/services/bos/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    return-void
.end method

.method public final setObjectContent(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->d:Lcom/baidubce/services/bos/model/ObjectMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidubce/services/bos/model/ObjectMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BosGetObjectResponse [tag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", objectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", objectKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", eTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", metaData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", objectContent size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
