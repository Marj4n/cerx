.class public Lcom/serenegiant/glutils/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Texture2dProgram"


# instance fields
.field private mColorAdjust:F

.field private final mFlags:[I

.field protected mHasKernel2:Z

.field private final mKernel:[F

.field private final mLastTouchPosition:[F

.field private mProgramHandle:I

.field private final mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field private final mSummedTouchPosition:[F

.field private final mSync:Ljava/lang/Object;

.field private mTexHeight:F

.field private mTexOffset:[F

.field private mTexWidth:F

.field private mTextureTarget:I

.field private final maPositionLoc:I

.field private final maTextureCoordLoc:I

.field private muColorAdjustLoc:I

.field private muFlagsLoc:I

.field private muKernelLoc:I

.field private final muMVPMatrixLoc:I

.field private final muTexMatrixLoc:I

.field private muTexOffsetLoc:I

.field private muTouchPositionLoc:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    const/16 v0, 0x12

    new-array v0, v0, [F

    .line 82
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 84
    iput-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    new-array v0, v0, [F

    .line 86
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 89
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    .line 109
    iput-object p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 112
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$1;->$SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xde1

    const v2, 0x8d65

    const-string v3, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unhandled type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target should be GL_TEXTURE_2D or GL_TEXTURE_EXTERNAL_OES"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    :goto_0
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 207
    invoke-static {p3, p4}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 194
    :pswitch_1
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 195
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 178
    :pswitch_2
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    vec2 s = sign(normCoord + uPosition);\n    normCoord = abs(normCoord);\n    normCoord = 0.5 * normCoord + 0.5 * smoothstep(0.25, 0.5, normCoord) * normCoord;\n    normCoord = s * normCoord;\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 179
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 174
    :pswitch_3
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    normCoord.x = normCoord.x * sign(normCoord.x + uPosition.x);\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 175
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 170
    :pswitch_4
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = 2.0 * r - r * smoothstep(0.0, 0.7, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 171
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 166
    :pswitch_5
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * r / sqrt(2.0);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 167
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 162
    :pswitch_6
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * smoothstep(-0.1, 0.5, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 163
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 158
    :pswitch_7
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    if (r > 0.5) r = 0.5;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 159
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 154
    :pswitch_8
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    phi = phi + (1.0 - smoothstep(-0.5, 0.5, r)) * 4.0;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 155
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 150
    :pswitch_9
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 151
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_SQUEEZE:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 146
    :pswitch_a
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 147
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_CHROMA_KEY:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 142
    :pswitch_b
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 143
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_NIGHT:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 138
    :pswitch_c
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 139
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_BW:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 134
    :pswitch_d
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 135
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 130
    :pswitch_e
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 131
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 114
    :pswitch_f
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 115
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    .line 212
    :goto_1
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_2

    const-string p2, "aPosition"

    .line 218
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    .line 219
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 220
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "aTextureCoord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    .line 221
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 222
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uMVPMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muMVPMatrixLoc:I

    .line 223
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 224
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uTexMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexMatrixLoc:I

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/glutils/Texture2dProgram;->initLocation([F[F)V

    return-void

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to create program"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTextureObject()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 258
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 260
    aget v0, v1, v2

    .line 261
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 264
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 266
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 268
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 270
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    .line 272
    invoke-static {v1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public draw([FILjava/nio/FloatBuffer;IIII[FILjava/nio/FloatBuffer;II)V
    .locals 11

    move-object v1, p0

    const-string v0, "draw start"

    .line 392
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 395
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 396
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 399
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 400
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p11

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture"

    .line 401
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 403
    iget-object v2, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 405
    :try_start_0
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static {v0, v3, v4, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 406
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 409
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexMatrixLoc:I

    if-ltz v0, :cond_0

    .line 410
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexMatrixLoc:I

    move-object/from16 v5, p8

    move/from16 v6, p9

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 411
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray"

    .line 416
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 417
    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move/from16 v6, p6

    move/from16 v9, p7

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 419
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 422
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray"

    .line 423
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 424
    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move/from16 v9, p12

    move-object/from16 v10, p10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 426
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 429
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    const/16 v5, 0x9

    if-ltz v0, :cond_2

    .line 430
    iget-boolean v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mHasKernel2:Z

    if-nez v0, :cond_1

    .line 431
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    iget-object v6, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {v0, v5, v6, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_0

    .line 433
    :cond_1
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    const/16 v6, 0x12

    iget-object v7, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {v0, v6, v7, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    :goto_0
    const-string v0, "set kernel"

    .line 435
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 438
    :cond_2
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    if-ltz v0, :cond_3

    iget-object v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTexOffset:[F

    if-eqz v0, :cond_3

    .line 439
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    iget-object v6, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTexOffset:[F

    invoke-static {v0, v5, v6, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 442
    :cond_3
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    if-ltz v0, :cond_4

    .line 443
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 446
    :cond_4
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    if-ltz v0, :cond_5

    .line 447
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    iget-object v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    invoke-static {v0, v3, v5, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 450
    :cond_5
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    if-ltz v0, :cond_6

    .line 451
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    const/4 v3, 0x4

    iget-object v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    invoke-static {v0, v3, v5, v4}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 453
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p4

    move/from16 v2, p5

    .line 455
    invoke-virtual {p0, p4, v2}, Lcom/serenegiant/glutils/Texture2dProgram;->internal_draw(II)V

    .line 458
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 459
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 460
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 461
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 453
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getProgramHandle()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    return v0
.end method

.method public getProgramType()Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 284
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 287
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    aget v2, v1, v4

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    iget v7, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    aput v2, v1, v4

    .line 290
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    aget v2, v1, v3

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    aget v7, v7, v3

    sub-float/2addr v5, v7

    mul-float v5, v5, v6

    iget v6, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    neg-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    aput v2, v1, v3

    .line 292
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 293
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v3

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 298
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v3

    .line 300
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected initLocation([F[F)V
    .locals 3

    .line 465
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uKernel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 468
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    .line 469
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    goto :goto_0

    .line 472
    :cond_0
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string v2, "uTexOffset"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    if-gez v0, :cond_1

    .line 474
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    :cond_1
    if-nez p1, :cond_2

    .line 481
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_NULL:[F

    :cond_2
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/glutils/Texture2dProgram;->setKernel([FF)V

    const/16 p1, 0x100

    .line 484
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/glutils/Texture2dProgram;->setTexSize(II)V

    :goto_0
    if-eqz p2, :cond_3

    .line 487
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/Texture2dProgram;->setKernel2([F)V

    .line 490
    :cond_3
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uColorAdjust"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    if-gez p1, :cond_4

    .line 492
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    .line 497
    :cond_4
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    if-gez p1, :cond_5

    .line 500
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    .line 505
    :cond_5
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uFlags"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    if-gez p1, :cond_6

    .line 507
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    :cond_6
    return-void
.end method

.method protected internal_draw(II)V
    .locals 1

    const/4 v0, 0x5

    .line 514
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 515
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 235
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 236
    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    return-void
.end method

.method public setColorAdjust(F)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    .line 331
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFlag(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    aput p2, v1, p1

    .line 366
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setFlags([I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 354
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    iget-object v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setKernel([FF)V
    .locals 3

    .line 311
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    return-void

    .line 312
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setKernel2([F)V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eqz p1, :cond_0

    .line 321
    :try_start_0
    array-length v3, p1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mHasKernel2:Z

    if-eqz v3, :cond_1

    .line 323
    iget-object v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {p1, v1, v3, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTexSize(II)V
    .locals 6

    int-to-float p2, p2

    .line 338
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    int-to-float p1, p1

    .line 339
    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    div-float/2addr v0, p2

    .line 344
    iget-object p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter p2

    const/16 v1, 0x12

    :try_start_0
    new-array v1, v1, [F

    const/4 v2, 0x0

    neg-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    neg-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v5, v1, v2

    const/16 v2, 0x8

    aput v5, v1, v2

    const/16 v2, 0x9

    aput v5, v1, v2

    const/16 v2, 0xa

    aput p1, v1, v2

    const/16 v2, 0xb

    aput v5, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    const/16 v2, 0xe

    aput v5, v1, v2

    const/16 v2, 0xf

    aput v0, v1, v2

    const/16 v2, 0x10

    aput p1, v1, v2

    const/16 p1, 0x11

    aput v0, v1, p1

    .line 345
    iput-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexOffset:[F

    .line 350
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
