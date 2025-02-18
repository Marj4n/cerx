.class public Lcom/serenegiant/mediaeffect/MediaEffectCanny;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectCanny.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nconst float lowerThreshold = 0.4;\nconst float upperThreshold = 0.8;\nvoid main() {\n    vec4 magdir = texture2D(sTexture, vTextureCoord);\n    vec2 offset = ((magdir.gb * 2.0) - 1.0) * uTexOffset[8];\n    float first = texture2D(sTexture, vTextureCoord + offset).r;\n    float second = texture2D(sTexture, vTextureCoord - offset).r;\n    float multiplier = step(first, magdir.r);\n    multiplier = multiplier * step(second, magdir.r);\n    float threshold = smoothstep(lowerThreshold, upperThreshold, magdir.r);\n    multiplier = multiplier * threshold;\n    gl_FragColor = vec4(multiplier, multiplier, multiplier, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaEffectCanny"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sampler2D"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nconst float lowerThreshold = 0.4;\nconst float upperThreshold = 0.8;\nvoid main() {\n    vec4 magdir = texture2D(sTexture, vTextureCoord);\n    vec2 offset = ((magdir.gb * 2.0) - 1.0) * uTexOffset[8];\n    float first = texture2D(sTexture, vTextureCoord + offset).r;\n    float second = texture2D(sTexture, vTextureCoord - offset).r;\n    float multiplier = step(first, magdir.r);\n    multiplier = multiplier * step(second, magdir.r);\n    float threshold = smoothstep(lowerThreshold, upperThreshold, magdir.r);\n    multiplier = multiplier * threshold;\n    gl_FragColor = vec4(multiplier, multiplier, multiplier, 1.0);\n}\n"

    .line 115
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectCanny;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v4

    .line 117
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectCanny;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 120
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectCanny;->FRAGMENT_SHADER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/serenegiant/mediaeffect/MediaEffectCanny;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectCanny;->setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectCanny;

    return-void
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectCanny;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectCanny;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    invoke-virtual {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setColorAdjust(F)V

    return-object p0
.end method
