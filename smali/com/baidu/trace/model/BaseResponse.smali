.class public Lcom/baidu/trace/model/BaseResponse;
.super Ljava/lang/Object;


# instance fields
.field public message:Ljava/lang/String;

.field public status:I

.field public tag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/trace/model/BaseResponse;->tag:I

    iput p2, p0, Lcom/baidu/trace/model/BaseResponse;->status:I

    iput-object p3, p0, Lcom/baidu/trace/model/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/trace/model/BaseResponse;->status:I

    iput-object p2, p0, Lcom/baidu/trace/model/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/BaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/BaseResponse;->status:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/BaseResponse;->tag:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/BaseResponse;->status:I

    return-void
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/BaseResponse;->tag:I

    return-void
.end method
