.class public Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;
.super Ljava/lang/Object;
.source "ThumbnailRequestQueue.java"


# static fields
.field private static final MAX_SIZE:I = 0xa


# instance fields
.field private requestFileInfoQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public getFileInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    .line 57
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->isContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->getFileInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    return-object v0
.end method

.method public poll()Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    return-object v0
.end method

.method public put(Lcom/jieli/stream/dv/running2/bean/FileInfo;Z)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    new-instance v1, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    invoke-direct {v1, p1, p2}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;-><init>(Lcom/jieli/stream/dv/running2/bean/FileInfo;Z)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->requestFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
