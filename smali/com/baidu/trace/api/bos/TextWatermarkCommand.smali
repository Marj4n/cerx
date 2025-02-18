.class public Lcom/baidu/trace/api/bos/TextWatermarkCommand;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/trace/api/bos/FontFamily;

.field private i:Lcom/baidu/trace/api/bos/FontStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    const-string v0, "000000"

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/api/bos/FontFamily;->SimSun:Lcom/baidu/trace/api/bos/FontFamily;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    sget-object v0, Lcom/baidu/trace/api/bos/FontStyle;->normal:Lcom/baidu/trace/api/bos/FontStyle;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Lcom/baidu/trace/api/bos/FontFamily;Lcom/baidu/trace/api/bos/FontStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    const-string v0, "000000"

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/api/bos/FontFamily;->SimSun:Lcom/baidu/trace/api/bos/FontFamily;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    sget-object v0, Lcom/baidu/trace/api/bos/FontStyle;->normal:Lcom/baidu/trace/api/bos/FontStyle;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    iput p3, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    iput p4, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    iput p5, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    iput p6, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    iput-object p7, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    iput-object p9, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    return v0
.end method

.method public getFontColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFamily()Lcom/baidu/trace/api/bos/FontFamily;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    return v0
.end method

.method public getFontStyle()Lcom/baidu/trace/api/bos/FontStyle;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    return v0
.end method

.method public getGravityX()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    return v0
.end method

.method public getGravityY()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAngle(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    return-void
.end method

.method public setFontFamily(Lcom/baidu/trace/api/bos/FontFamily;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    return-void
.end method

.method public setFontStyle(Lcom/baidu/trace/api/bos/FontStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    return-void
.end method

.method public setGravityX(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    return-void
.end method

.method public setGravityY(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextWatermarkCommand [text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->h:Lcom/baidu/trace/api/bos/FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->i:Lcom/baidu/trace/api/bos/FontStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
