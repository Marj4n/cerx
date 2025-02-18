.class public Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
.super Ljava/lang/Object;
.source "MediaEffectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;
    }
.end annotation


# static fields
.field private static final FLOAT_SZ:I = 0x4

.field private static final TEXCOORD:[F

.field private static final VERTEX_NUM:I = 0x4

.field private static final VERTEX_SZ:I = 0x8

.field private static final VERTICES:[F


# instance fields
.field protected hProgram:I

.field protected mEnabled:Z

.field protected final mMvpMatrix:[F

.field protected final mSync:Ljava/lang/Object;

.field protected final mTexTarget:I

.field protected final muMVPMatrixLoc:I

.field protected final muTexLoc:[I

.field protected final muTexMatrixLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 38
    fill-array-data v1, :array_0

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->VERTICES:[F

    new-array v0, v0, [F

    .line 39
    fill-array-data v0, :array_1

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->TEXCOORD:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .line 140
    sget-object v0, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    .line 144
    sget-object v0, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 152
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/lang/String;)V
    .locals 1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 162
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mEnabled:Z

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 136
    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    if-eqz p2, :cond_0

    const p2, 0x8d65

    goto :goto_0

    :cond_0
    const/16 p2, 0xde1

    .line 174
    :goto_0
    iput p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mTexTarget:I

    const/16 p2, 0x20

    .line 175
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 176
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 177
    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->VERTICES:[F

    invoke-virtual {v7, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 178
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 179
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 180
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    .line 181
    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->TEXCOORD:[F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 182
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    if-lez p1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 185
    :goto_1
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    .line 186
    invoke-static {p3, p4}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    .line 187
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 188
    iget p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    const-string p4, "aPosition"

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    .line 189
    iget p4, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {p4, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p4

    .line 190
    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muMVPMatrixLoc:I

    .line 191
    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    const-string v2, "uTexMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexMatrixLoc:I

    .line 192
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    iget v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    const-string v3, "sTexture"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v1, 0x1

    :goto_2
    if-ge v1, p1, :cond_2

    .line 194
    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    iget v4, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v0, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    .line 195
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    const-string v9, "sTexture%d"

    invoke-static {v5, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    move v1, v8

    goto :goto_2

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 200
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muMVPMatrixLoc:I

    if-ltz p1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    invoke-static {p1, v0, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 203
    :cond_3
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexMatrixLoc:I

    if-ltz p1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    invoke-static {p1, v0, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_4
    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    move v2, p3

    .line 208
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 210
    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    move v1, p4

    move-object v6, p2

    .line 212
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 214
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 148
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 156
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 168
    invoke-direct {p0, p2, p1, v0, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance()Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 4

    .line 46
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    sget-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {v0, v2, v3, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(I)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 4

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v2, :cond_0

    .line 51
    new-instance p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    sget-object v2, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_0
    new-instance v2, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    sget-object v3, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 3

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v2, :cond_0

    .line 63
    new-instance p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    invoke-direct {p0, v1, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 65
    :cond_0
    new-instance v2, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static newInstance(IZLjava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 2

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    .line 77
    new-instance p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    invoke-direct {p0, p1, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 79
    :cond_0
    new-instance v1, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static newInstance(IZLjava/lang/String;Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 1

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 93
    new-instance p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 95
    :cond_0
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 3

    .line 58
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    const/4 v1, 0x0

    const-string v2, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {v0, v1, v2, p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 2

    .line 70
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {v0, p0, v1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(ZLjava/lang/String;Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
    .locals 1

    .line 86
    new-instance p1, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p1, p0, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public apply([I[FI)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 272
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->preDraw([I[FI)V

    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->draw([I[FI)V

    .line 274
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->postDraw()V

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bindTexture([I)V
    .locals 4

    .line 298
    array-length v0, p1

    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    array-length v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 301
    aget v2, p1, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 302
    sget-object v2, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 303
    iget v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mTexTarget:I

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 304
    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    aget v2, v2, v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected draw([I[FI)V
    .locals 0

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 320
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getMvpMatrix([FI)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getMvpMatrix()[F
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    return-object v0
.end method

.method protected getProgram()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    return v0
.end method

.method protected postDraw()V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->unbindTexture()V

    const/4 v0, 0x0

    .line 329
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected preDraw([I[FI)V
    .locals 3

    .line 288
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    if-eqz p2, :cond_0

    .line 289
    invoke-static {v0, v1, v2, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 291
    :cond_0
    iget p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muMVPMatrixLoc:I

    if-ltz p2, :cond_1

    .line 292
    iget-object p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    invoke-static {p2, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 294
    :cond_1
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->bindTexture([I)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 219
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    if-ltz v0, :cond_0

    .line 220
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 222
    iput v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->hProgram:I

    return-void
.end method

.method public setMvpMatrix([FI)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mMvpMatrix:[F

    array-length v3, v3

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTexSize(II)V
    .locals 0

    return-void
.end method

.method protected unbindTexture()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->muTexLoc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 334
    sget-object v2, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 335
    iget v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mTexTarget:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
