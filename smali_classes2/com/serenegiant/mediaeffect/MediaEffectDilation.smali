.class public Lcom/serenegiant/mediaeffect/MediaEffectDilation;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectDilation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FRAGMENT_SHADER_1:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0] );\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4] ));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_2:Ljava/lang/String; = "precision lowp float;\n\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_3:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_4:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[25]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[26]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[27]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[28]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[29]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[30]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[31]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[32]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[33]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[34]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[35]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[36]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[37]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[38]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[39]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[40]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

.field private static final TAG:Ljava/lang/String; = "MediaEffectDilation"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 273
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;

    invoke-static {p1}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->getFragmentShader(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    const/16 p1, 0x100

    .line 274
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->setTexSize(II)V

    return-void
.end method

.method private static getFragmentShader(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[25]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[26]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[27]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[28]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[29]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[30]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[31]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[32]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[33]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[34]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[35]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[36]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[37]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[38]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[39]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[40]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_0
    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_1
    const-string p0, "precision lowp float;\n\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_2
    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0] );\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4] ));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectDilation;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffectDilation;
    .locals 0

    .line 279
    invoke-super {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->setTexSize(II)V

    return-object p0
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectDilation;

    move-result-object p1

    return-object p1
.end method

.method public setTexSize(II)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDilation;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->setTexSize(II)V

    return-void
.end method
