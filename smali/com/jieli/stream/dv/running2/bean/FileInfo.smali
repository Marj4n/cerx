.class public Lcom/jieli/stream/dv/running2/bean/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private cameraType:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private duration:I

.field private endTime:Ljava/util/Calendar;

.field private fileEndTime:Ljava/lang/String;

.field private height:I

.field private isSelected:Z

.field private isVideo:Z

.field private name:Ljava/lang/String;

.field private offset:I

.field private path:Ljava/lang/String;

.field private rate:I

.field private size:J

.field private source:I

.field private startTime:Ljava/util/Calendar;

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->name:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->path:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->createTime:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected:Z

    const-string v0, "0"

    .line 25
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->cameraType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->startTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 185
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->endTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 187
    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public getCameraType()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->cameraType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->duration:I

    return v0
.end method

.method public getEndTime()Ljava/util/Calendar;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->endTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFileEndTime()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->offset:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->rate:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->size:J

    return-wide v0
.end method

.method public getSource()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->source:I

    return v0
.end method

.method public getStartTime()Ljava/util/Calendar;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->startTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->width:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo:Z

    return v0
.end method

.method public setCameraType(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->cameraType:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->duration:I

    return-void
.end method

.method public setEndTime(Ljava/util/Calendar;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->endTime:Ljava/util/Calendar;

    return-void
.end method

.method public setFileEndTime(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->height:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->offset:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setRate(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->rate:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->size:J

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->source:I

    return-void
.end method

.method public setStartTime(Ljava/util/Calendar;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->startTime:Ljava/util/Calendar;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->type:I

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file end time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->fileEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->cameraType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->startTime:Ljava/util/Calendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/bean/FileInfo;->endTime:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
