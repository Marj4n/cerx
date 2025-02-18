.class public Lcom/serenegiant/mediaeffect/MediaEffectErosion;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectErosion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediaeffect/MediaEffectErosion$MediaEffectErosionDrawer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FRAGMENT_SHADER_1:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0] );\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4] ));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_2:Ljava/lang/String; = "precision lowp float;\n\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_3:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_4:Ljava/lang/String; = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[25]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[26]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[27]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[28]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[29]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[30]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[31]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[32]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[33]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[34]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[35]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[36]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[37]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[38]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[39]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[40]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

.field private static final TAG:Ljava/lang/String; = "MediaEffectErosion"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 273
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectErosion$MediaEffectErosionDrawer;

    invoke-static {p1}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->getFragmentShader(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectErosion$MediaEffectErosionDrawer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    const/16 p1, 0x100

    .line 274
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->setTexSize(II)V

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

    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[25]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[26]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[27]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[28]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[29]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[30]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[31]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[32]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[33]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[34]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[35]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[36]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[37]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[38]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[39]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[40]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_0
    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_1
    const-string p0, "precision lowp float;\n\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

    return-object p0

    :cond_2
    const-string p0, "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 minValue = texture2D(sTexture, vTextureCoord + uTexOffset[0] );\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[1] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[2] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[3] ));\nminValue = min(minValue, texture2D(sTexture, vTextureCoord + uTexOffset[4] ));\n\ngl_FragColor = vec4(minValue.rgb, 1.0);\n}\n"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectErosion;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffectErosion;
    .locals 0

    .line 279
    invoke-super {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->setTexSize(II)V

    return-object p0
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectErosion;

    move-result-object p1

    return-object p1
.end method

.method public setTexSize(II)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectErosion;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->setTexSize(II)V

    return-void
.end method
