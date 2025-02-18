.class public final Lcom/serenegiant/glutils/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
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

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    .line 410
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

    .line 292
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 295
    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 298
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, 0x42000000    # 32.0f

    .line 299
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v5, 0x1

    .line 300
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 301
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v5, 0x42e00000    # 112.0f

    .line 303
    invoke-virtual {v1, p0, v3, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p0, 0xde1

    const v1, 0x84c0

    const/16 v3, 0x2600

    const/16 v4, 0x2601

    const/16 v5, 0x2901

    .line 305
    invoke-static {p0, v1, v3, v4, v5}, Lcom/serenegiant/glutils/GLHelper;->initTex(IIIII)I

    move-result v1

    .line 313
    invoke-static {p0, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v1
.end method

.method public static deleteTex(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 228
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static deleteTex([I)V
    .locals 2

    .line 236
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static initTex(II)I
    .locals 2

    const v0, 0x84c0

    const v1, 0x812f

    .line 69
    invoke-static {p0, v0, p1, p1, v1}, Lcom/serenegiant/glutils/GLHelper;->initTex(IIIII)I

    move-result p0

    return p0
.end method

.method public static initTex(IIIII)I
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 87
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 p1, 0x0

    .line 88
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 89
    aget v0, v1, p1

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    .line 90
    invoke-static {p0, v0, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 91
    invoke-static {p0, v0, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p4, 0x2801

    .line 92
    invoke-static {p0, p4, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 93
    invoke-static {p0, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 94
    aget p0, v1, p1

    return p0
.end method

.method public static initTexes(III)[I
    .locals 1

    .line 107
    new-array p0, p0, [I

    const v0, 0x812f

    invoke-static {p0, p1, p2, p2, v0}, Lcom/serenegiant/glutils/GLHelper;->initTexes([IIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static initTexes(IIIII)[I
    .locals 0

    .line 137
    new-array p0, p0, [I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/serenegiant/glutils/GLHelper;->initTexes([IIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static initTexes(IIIIII)[I
    .locals 6

    .line 178
    new-array v0, p0, [I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/serenegiant/glutils/GLHelper;->initTexes([IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static initTexes([III)[I
    .locals 1

    const v0, 0x812f

    .line 121
    invoke-static {p0, p1, p2, p2, v0}, Lcom/serenegiant/glutils/GLHelper;->initTexes([IIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static initTexes([IIII)[I
    .locals 6

    const v5, 0x812f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/serenegiant/glutils/GLHelper;->initTexes([IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static initTexes([IIIII)[I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8872

    const/4 v2, 0x0

    .line 153
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL_MAX_TEXTURE_IMAGE_UNITS="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GLHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    array-length v1, p0

    aget v3, v0, v2

    if-le v1, v3, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 158
    sget-object v1, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    aget v1, v1, v2

    invoke-static {p1, v1, p2, p3, p4}, Lcom/serenegiant/glutils/GLHelper;->initTex(IIIII)I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static initTexes([IIIIII)[I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8872

    const/4 v2, 0x0

    .line 212
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 213
    array-length v1, p0

    aget v3, v0, v2

    if-le v1, v3, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 216
    invoke-static {p1, p2, p3, p4, p5}, Lcom/serenegiant/glutils/GLHelper;->initTex(IIIII)I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 387
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 389
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 390
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 392
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 393
    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static loadShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/serenegiant/utils/AssetsHelper;->loadString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/serenegiant/utils/AssetsHelper;->loadString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-static {p2, p0}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 350
    invoke-static {v0, p0}, Lcom/serenegiant/glutils/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 355
    invoke-static {v1, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 360
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 361
    invoke-static {v2}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    const-string v2, "GLHelper"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 363
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    .line 366
    invoke-static {p0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 367
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 368
    invoke-static {p0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 369
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v3, 0x8b82

    .line 371
    invoke-static {v1, v3, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 372
    aget p1, p1, v0

    if-eq p1, p0, :cond_3

    const-string p0, "Could not link program: "

    .line 373
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v0

    :cond_3
    return v1
.end method

.method public static loadTextureFromResource(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, p1, v0}, Lcom/serenegiant/glutils/GLHelper;->loadTextureFromResource(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static loadTextureFromResource(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)I
    .locals 5

    .line 247
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 250
    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 255
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid5()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 260
    :goto_0
    invoke-virtual {p0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    .line 266
    invoke-static {p0, p1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 268
    aget p0, p1, v3

    const/16 p2, 0xde1

    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    .line 271
    invoke-static {p2, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 273
    invoke-static {p2, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const v1, 0x46240400    # 10497.0f

    .line 277
    invoke-static {p2, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    .line 279
    invoke-static {p2, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 283
    invoke-static {p2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    aget p0, p1, v3

    return p0
.end method

.method public static logVersionInfo()V
    .locals 5

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f00

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x821b

    const/4 v3, 0x0

    .line 425
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    .line 426
    aget v2, v0, v3

    const v4, 0x821c

    .line 427
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    .line 428
    aget v0, v0, v3

    .line 429
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v3

    if-nez v3, :cond_0

    .line 430
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
