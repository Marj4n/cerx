.class public final Lcom/serenegiant/glutils/es1/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLHelper"

.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 458
    sput-object v0, Lcom/serenegiant/glutils/es1/GLHelper;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GLHelper"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static checkGlError(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": glError 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLHelper"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTextureWithTextContent(Ljava/lang/String;)I
    .locals 6

    .line 185
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 188
    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 191
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, 0x42000000    # 32.0f

    .line 192
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v5, 0x1

    .line 193
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v5, 0x42e00000    # 112.0f

    .line 196
    invoke-virtual {v1, p0, v3, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p0, 0xde1

    const v1, 0x84c0

    const/16 v3, 0x2600

    const/16 v4, 0x2601

    const/16 v5, 0x2901

    .line 198
    invoke-static {p0, v1, v3, v4, v5}, Lcom/serenegiant/glutils/es1/GLHelper;->initTex(IIIII)I

    move-result v1

    .line 205
    invoke-static {p0, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v1
.end method

.method public static deleteTex(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 135
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static deleteTex(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 144
    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "out of memory"

    return-object p0

    :pswitch_1
    const-string p0, "stack underflow"

    return-object p0

    :pswitch_2
    const-string p0, "stack overflow"

    return-object p0

    :pswitch_3
    const-string p0, "invalid operation"

    return-object p0

    :pswitch_4
    const-string p0, "invalid value"

    return-object p0

    :pswitch_5
    const-string p0, "invalid enum"

    return-object p0

    :cond_0
    const-string p0, "no error"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gluLookAt(FFFFFFFFF)V
    .locals 13

    .line 292
    sget-object v12, Lcom/serenegiant/glutils/es1/GLHelper;->sScratch:[F

    .line 293
    monitor-enter v12

    const/4 v2, 0x0

    move-object v1, v12

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 294
    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x0

    .line 296
    invoke-static {v12, v0}, Landroid/opengl/GLES10;->glMultMatrixf([FI)V

    .line 297
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluOrtho2D(FFFF)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 310
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(FFFF)V
    .locals 6

    float-to-double v0, p0

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double v0, v0, v2

    .line 329
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float v3, p2, p0

    neg-float v2, v3

    mul-float v0, v2, p1

    mul-float v1, v3, p1

    move v4, p2

    move v5, p3

    .line 333
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 367
    sget-object v7, Lcom/serenegiant/glutils/es1/GLHelper;->sScratch:[F

    .line 368
    monitor-enter v7

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move v6, p4

    .line 372
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v0, 0x10

    .line 374
    aput p0, v7, v0

    const/16 v0, 0x11

    .line 375
    aput p1, v7, v0

    const/16 v0, 0x12

    .line 376
    aput p2, v7, v0

    const/16 v0, 0x13

    const/high16 v1, 0x3f800000    # 1.0f

    .line 377
    aput v1, v7, v0

    const/16 v0, 0x14

    const/4 v2, 0x0

    const/16 v3, 0x10

    move-object p0, v7

    move p1, v0

    move-object p2, v7

    move p3, v2

    move-object p4, v7

    move p5, v3

    .line 379
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/16 v0, 0x17

    .line 381
    aget v0, v7, v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 383
    monitor-exit v7

    return v0

    :cond_0
    div-float v0, v1, v0

    .line 388
    aget v2, p7, p8

    int-to-float v2, v2

    add-int/lit8 v3, p8, 0x2

    aget v3, p7, v3

    int-to-float v3, v3

    const/16 v4, 0x14

    aget v4, v7, v4

    mul-float v4, v4, v0

    add-float/2addr v4, v1

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, p9, p10

    add-int/lit8 v2, p10, 0x1

    add-int/lit8 v3, p8, 0x1

    .line 392
    aget v3, p7, v3

    int-to-float v3, v3

    add-int/lit8 v5, p8, 0x3

    aget v5, p7, v5

    int-to-float v5, v5

    const/16 v6, 0x15

    aget v6, v7, v6

    mul-float v6, v6, v0

    add-float/2addr v6, v1

    mul-float v5, v5, v6

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    aput v3, p9, v2

    add-int/lit8 v2, p10, 0x2

    const/16 v3, 0x16

    .line 395
    aget v3, v7, v3

    mul-float v3, v3, v0

    add-float/2addr v3, v1

    mul-float v3, v3, v4

    aput v3, p9, v2

    .line 396
    monitor-exit v7

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 432
    sget-object v7, Lcom/serenegiant/glutils/es1/GLHelper;->sScratch:[F

    .line 433
    monitor-enter v7

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move v6, p4

    .line 437
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 439
    invoke-static {v7, v0, v7, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    monitor-exit v7

    return v1

    :cond_0
    add-int/lit8 v0, p8, 0x0

    .line 443
    aget v0, p7, v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    add-int/lit8 v3, p8, 0x2

    aget v3, p7, v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    aput v0, v7, v1

    add-int/lit8 v0, p8, 0x1

    .line 446
    aget v0, p7, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    mul-float v0, v0, v2

    const/4 v1, 0x3

    add-int/lit8 v4, p8, 0x3

    aget v4, p7, v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float/2addr v0, v3

    const/4 v4, 0x1

    aput v0, v7, v4

    mul-float v0, p2, v2

    sub-float/2addr v0, v3

    const/4 v2, 0x2

    .line 449
    aput v0, v7, v2

    .line 450
    aput v3, v7, v1

    const/16 v0, 0x10

    const/4 v1, 0x0

    move-object/from16 p0, p9

    move/from16 p1, p10

    move-object p2, v7

    move p3, v0

    move-object p4, v7

    move p5, v1

    .line 452
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 453
    monitor-exit v7

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initTex(II)I
    .locals 2

    const v0, 0x84c0

    const v1, 0x812f

    .line 84
    invoke-static {p0, v0, p1, p1, v1}, Lcom/serenegiant/glutils/es1/GLHelper;->initTex(IIIII)I

    move-result p0

    return p0
.end method

.method public static initTex(IIIII)I
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 99
    invoke-static {p1}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    const/4 p1, 0x0

    .line 100
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 101
    aget v0, v1, p1

    invoke-static {p0, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/16 v0, 0x2802

    .line 102
    invoke-static {p0, v0, p4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v0, 0x2803

    .line 103
    invoke-static {p0, v0, p4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 p4, 0x2801

    .line 104
    invoke-static {p0, p4, p2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 p2, 0x2800

    .line 105
    invoke-static {p0, p2, p3}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 106
    aget p0, v1, p1

    return p0
.end method

.method public static initTex(Ljavax/microedition/khronos/opengles/GL10;II)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x84c0

    .line 119
    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    const/4 v2, 0x0

    .line 120
    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 121
    aget v0, v1, v2

    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 122
    invoke-interface {p0, p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2803

    .line 123
    invoke-interface {p0, p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2801

    .line 124
    invoke-interface {p0, p1, v0, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2800

    .line 125
    invoke-interface {p0, p1, v0, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 126
    aget p0, v1, v2

    return p0
.end method

.method public static loadTextureFromResource(Landroid/content/Context;I)I
    .locals 5

    .line 149
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 152
    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 157
    invoke-virtual {p0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    .line 163
    invoke-static {p0, p1, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 165
    aget p0, p1, v3

    const/16 v1, 0xde1

    invoke-static {v1, p0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/16 p0, 0x2801

    const/16 v2, 0x2600

    .line 168
    invoke-static {v1, p0, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 p0, 0x2800

    const/16 v2, 0x2601

    .line 169
    invoke-static {v1, p0, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 p0, 0x2802

    const/16 v2, 0x2901

    .line 172
    invoke-static {v1, p0, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 p0, 0x2803

    .line 173
    invoke-static {v1, p0, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 176
    invoke-static {v1, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    aget p0, p1, v3

    return p0
.end method

.method public static logVersionInfo()V
    .locals 5

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f00

    invoke-static {v1}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x821b

    const/4 v3, 0x0

    .line 235
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    .line 236
    aget v2, v0, v3

    const v4, 0x821c

    .line 237
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    .line 238
    aget v0, v0, v3

    .line 239
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v3

    if-nez v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
