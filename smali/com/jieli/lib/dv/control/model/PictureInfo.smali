.class public Lcom/jieli/lib/dv/control/model/PictureInfo;
.super Lcom/jieli/lib/dv/control/model/MediaInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->b:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->a:J

    return-wide v0
.end method

.method public isLast()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->b:Z

    return v0
.end method

.method public setLast(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->b:Z

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/lib/dv/control/model/PictureInfo;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
