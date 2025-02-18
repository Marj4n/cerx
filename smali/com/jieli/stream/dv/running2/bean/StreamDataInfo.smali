.class public Lcom/jieli/stream/dv/running2/bean/StreamDataInfo;
.super Ljava/lang/Object;
.source "StreamDataInfo.java"


# instance fields
.field private data:[B

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/StreamDataInfo;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/StreamDataInfo;->type:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/StreamDataInfo;->data:[B

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/StreamDataInfo;->type:I

    return-void
.end method
