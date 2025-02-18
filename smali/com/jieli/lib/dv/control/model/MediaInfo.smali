.class public Lcom/jieli/lib/dv/control/model/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 11
    iput v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->d:I

    const/16 v0, 0x1f40

    .line 12
    iput v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->e:I

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    .line 65
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/model/MediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->f:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->d:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->c:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->e:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->b:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->f:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->d:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->c:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->e:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frameRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/model/MediaInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
