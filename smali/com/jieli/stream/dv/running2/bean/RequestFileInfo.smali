.class public Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;
.super Ljava/lang/Object;
.source "RequestFileInfo.java"


# instance fields
.field private fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

.field private isContent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jieli/stream/dv/running2/bean/FileInfo;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 14
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->isContent:Z

    return-void
.end method


# virtual methods
.method public getFileInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->isContent:Z

    return v0
.end method

.method public setContent(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->isContent:Z

    return-void
.end method

.method public setFileInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    return-void
.end method
