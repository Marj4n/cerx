.class public Lcom/jieli/stream/dv/running2/bean/TaskReply;
.super Ljava/lang/Object;
.source "TaskReply.java"


# instance fields
.field private code:I

.field private data:[B

.field private msg:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->code:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->data:[B

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->result:I

    return v0
.end method

.method public setCode(I)Lcom/jieli/stream/dv/running2/bean/TaskReply;
    .locals 0

    .line 30
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->code:I

    return-object p0
.end method

.method public setData([B)Lcom/jieli/stream/dv/running2/bean/TaskReply;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->data:[B

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/TaskReply;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(I)Lcom/jieli/stream/dv/running2/bean/TaskReply;
    .locals 0

    .line 21
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->result:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"code\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"msg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->msg:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->msg:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\n\"data\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->data:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/TaskReply;->data:[B

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
