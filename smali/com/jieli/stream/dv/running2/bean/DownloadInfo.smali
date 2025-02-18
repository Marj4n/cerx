.class public Lcom/jieli/stream/dv/running2/bean/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private duration:I

.field private offset:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->duration:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->offset:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->duration:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->offset:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DownloadInfo;->path:Ljava/lang/String;

    return-void
.end method
