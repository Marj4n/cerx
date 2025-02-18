.class public Lcom/jieli/lib/dv/control/model/CtpInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->b:[B

    return-object v0
.end method

.method public getTopic()[B
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->a:[B

    return-object v0
.end method

.method public setPayload([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->b:[B

    return-void
.end method

.method public setTopic([B)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->a:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/model/CtpInfo;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
