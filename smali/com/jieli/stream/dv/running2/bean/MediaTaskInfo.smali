.class public Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;
.super Ljava/lang/Object;
.source "MediaTaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

.field private op:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->op:I

    return v0
.end method

.method public setInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    return-object p0
.end method

.method public setOp(I)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;
    .locals 0

    .line 28
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->op:I

    return-object p0
.end method
