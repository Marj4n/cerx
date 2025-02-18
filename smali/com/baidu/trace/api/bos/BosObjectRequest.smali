.class public Lcom/baidu/trace/api/bos/BosObjectRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/trace/api/bos/BosObjectType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    sget-object p1, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    sget-object p1, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    iput-object p4, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    return-object v0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setObjectType(Lcom/baidu/trace/api/bos/BosObjectType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BosObjectRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "objectKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", objectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosObjectRequest;->b:Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
