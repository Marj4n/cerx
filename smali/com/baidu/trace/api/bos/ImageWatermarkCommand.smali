.class public Lcom/baidu/trace/api/bos/ImageWatermarkCommand;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    iput-object p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    iput p3, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    iput p4, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    iput p5, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    iput p6, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    return v0
.end method

.method public getGravityX()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    return v0
.end method

.method public getGravityY()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    return v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    return-void
.end method

.method public setGravityX(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    return-void
.end method

.method public setGravityY(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->a:Ljava/lang/String;

    return-void
.end method

.method public setOpacity(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWatermarkCommand [objectKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
