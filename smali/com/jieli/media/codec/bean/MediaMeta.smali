.class public Lcom/jieli/media/codec/bean/MediaMeta;
.super Ljava/lang/Object;
.source "MediaMeta.java"


# instance fields
.field private duration:I

.field private height:I

.field private path:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/jieli/media/codec/bean/MediaMeta;->duration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/jieli/media/codec/bean/MediaMeta;->height:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jieli/media/codec/bean/MediaMeta;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/jieli/media/codec/bean/MediaMeta;->width:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->duration:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->height:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->path:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/media/codec/bean/MediaMeta;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
