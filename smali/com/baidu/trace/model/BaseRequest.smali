.class public Lcom/baidu/trace/model/BaseRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field public serviceId:J

.field public tag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/model/BaseRequest;->a:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/model/BaseRequest;->a:Z

    iput p1, p0, Lcom/baidu/trace/model/BaseRequest;->tag:I

    iput-wide p2, p0, Lcom/baidu/trace/model/BaseRequest;->serviceId:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/model/BaseRequest;->a:Z

    return-void
.end method

.method public getServiceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/BaseRequest;->serviceId:J

    return-wide v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/BaseRequest;->tag:I

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/model/BaseRequest;->a:Z

    return v0
.end method

.method public setServiceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/BaseRequest;->serviceId:J

    return-void
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/BaseRequest;->tag:I

    return-void
.end method
