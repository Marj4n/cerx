.class public Lcom/serenegiant/glutils/es1/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"

# interfaces
.implements Lcom/serenegiant/glutils/ITexture;


# instance fields
.field mImageHeight:I

.field mImageWidth:I

.field mTexHeight:I

.field final mTexMatrix:[F

.field mTexWidth:I

.field mTextureId:I

.field final mTextureTarget:I

.field final mTextureUnit:I


# direct methods
.method public constructor <init>(III)V
    .locals 6

    const/16 v1, 0xde1

    const v2, 0x84c0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/glutils/es1/GLTexture;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 43
    iput-object v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    .line 70
    iput p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    .line 71
    iput p2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureUnit:I

    const/16 p1, 0x20

    const/16 p2, 0x20

    :goto_0
    if-ge p2, p3, :cond_0

    shl-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p4, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 79
    :cond_1
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    if-eq v0, p1, :cond_3

    .line 80
    :cond_2
    iput p2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    .line 81
    iput p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    .line 84
    :cond_3
    iget p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    invoke-static {p1, p5}, Lcom/serenegiant/glutils/es1/GLHelper;->initTex(II)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureId:I

    .line 86
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    iget v4, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 95
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 96
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    int-to-float p3, p3

    iget p5, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    int-to-float p5, p5

    div-float/2addr p3, p5

    aput p3, p1, p2

    const/4 p2, 0x5

    int-to-float p3, p4

    .line 97
    iget p4, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    int-to-float p4, p4

    div-float/2addr p3, p4

    aput p3, p1, p2

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 126
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureUnit:I

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 127
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    iget v1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/serenegiant/glutils/es1/GLTexture;->release()V

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getTexHeight()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    return v0
.end method

.method public getTexMatrix([FI)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getTexMatrix()[F
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    return-object v0
.end method

.method public getTexTarget()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    return v0
.end method

.method public getTexWidth()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    return v0
.end method

.method public getTexture()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureId:I

    return v0
.end method

.method public loadTexture(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mImageWidth:I

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mImageHeight:I

    .line 220
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    iget v1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 226
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexMatrix:[F

    iget v2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, p1, v1

    .line 227
    iget v2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x5

    aput v2, p1, v3

    .line 229
    invoke-virtual {p0}, Lcom/serenegiant/glutils/es1/GLTexture;->bind()V

    .line 230
    iget p1, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    invoke-static {p1, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 231
    invoke-virtual {p0}, Lcom/serenegiant/glutils/es1/GLTexture;->unbind()V

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public loadTexture(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 192
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 194
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 195
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 197
    iget v4, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    if-gt v3, v4, :cond_0

    iget v4, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    if-le v2, v4, :cond_2

    :cond_0
    if-le v2, v3, :cond_1

    int-to-float v1, v3

    .line 199
    iget v2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    .line 201
    iget v2, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTexWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    :goto_0
    double-to-int v1, v1

    .line 206
    :cond_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 207
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 208
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/es1/GLTexture;->loadTexture(Landroid/graphics/Bitmap;)V

    return-void

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "image file path should not be a null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 1

    .line 114
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureId:I

    if-lez v0, :cond_0

    .line 115
    invoke-static {v0}, Lcom/serenegiant/glutils/es1/GLHelper;->deleteTex(I)V

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureId:I

    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 136
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureUnit:I

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 137
    iget v0, p0, Lcom/serenegiant/glutils/es1/GLTexture;->mTextureTarget:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    return-void
.end method
