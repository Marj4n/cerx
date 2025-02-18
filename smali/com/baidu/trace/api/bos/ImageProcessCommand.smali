.class public Lcom/baidu/trace/api/bos/ImageProcessCommand;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/baidu/trace/api/bos/ImageFormat;

.field private f:I

.field private g:Lcom/baidu/trace/api/bos/ImageDisplay;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    sget-object v1, Lcom/baidu/trace/api/bos/ImageFormat;->jpg:Lcom/baidu/trace/api/bos/ImageFormat;

    iput-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    sget-object v1, Lcom/baidu/trace/api/bos/ImageDisplay;->baseline:Lcom/baidu/trace/api/bos/ImageDisplay;

    iput-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    iput-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    iput-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    return-void
.end method

.method public constructor <init>(IIIILcom/baidu/trace/api/bos/ImageFormat;ILcom/baidu/trace/api/bos/ImageDisplay;ZZIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    sget-object v1, Lcom/baidu/trace/api/bos/ImageFormat;->jpg:Lcom/baidu/trace/api/bos/ImageFormat;

    iput-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    sget-object v1, Lcom/baidu/trace/api/bos/ImageDisplay;->baseline:Lcom/baidu/trace/api/bos/ImageDisplay;

    iput-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    iput-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    iput-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    iput p2, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->b:I

    iput p3, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->c:I

    iput p4, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->d:I

    iput-object p5, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    iput p6, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    iput-object p7, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    iput-boolean p8, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    iput-boolean p9, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    iput p10, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    iput p11, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    iput p12, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->l:I

    iput p13, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->m:I

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    return v0
.end method

.method public getCropHeight()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->m:I

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->l:I

    return v0
.end method

.method public getDisplay()Lcom/baidu/trace/api/bos/ImageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    return-object v0
.end method

.method public getFormat()Lcom/baidu/trace/api/bos/ImageFormat;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->c:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->b:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->d:I

    return v0
.end method

.method public getScale()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    return v0
.end method

.method public isCrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    return v0
.end method

.method public isLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    return v0
.end method

.method public setAngle(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    return-void
.end method

.method public setCrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    return-void
.end method

.method public setCropHeight(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->m:I

    return-void
.end method

.method public setCropWidth(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->l:I

    return-void
.end method

.method public setDisplay(Lcom/baidu/trace/api/bos/ImageDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    return-void
.end method

.method public setFormat(Lcom/baidu/trace/api/bos/ImageFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    return-void
.end method

.method public setLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->c:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->b:I

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->d:I

    return-void
.end method

.method public setScale(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageProcessCommand [scale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->e:Lcom/baidu/trace/api/bos/ImageFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->g:Lcom/baidu/trace/api/bos/ImageDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageProcessCommand;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
