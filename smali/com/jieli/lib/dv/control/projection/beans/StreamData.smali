.class public Lcom/jieli/lib/dv/control/projection/beans/StreamData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateFlag()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->g:I

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->e:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->f:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->h:[B

    return-object v0
.end method

.method public getPayloadLen()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->c:I

    return v0
.end method

.method public getSave()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->b:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->d:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->a:I

    return v0
.end method

.method public setDateFlag(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->g:I

    return-void
.end method

.method public setFrameSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->e:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->f:I

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->h:[B

    return-void
.end method

.method public setPayloadLen(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->c:I

    return-void
.end method

.method public setSave(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->b:I

    return-void
.end method

.method public setSeq(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->d:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"type\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n\"save\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n\"payloadLen\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n\"frameSize\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n\"offset\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n\"dateFlag\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->h:[B

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->h:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \n\"payload\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
