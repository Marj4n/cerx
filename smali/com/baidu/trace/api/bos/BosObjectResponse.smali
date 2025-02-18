.class public Lcom/baidu/trace/api/bos/BosObjectResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field protected a:Lcom/baidu/trace/api/bos/BosObjectType;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseResponse;-><init>()V

    sget-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    sget-object p1, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    const-string p1, ""

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    return-object v0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public setObjectType(Lcom/baidu/trace/api/bos/BosObjectType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BosObjectResponse [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->a:Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosObjectResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
