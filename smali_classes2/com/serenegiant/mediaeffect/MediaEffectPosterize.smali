.class public Lcom/serenegiant/mediaeffect/MediaEffectPosterize;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectPosterize.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uColorAdjust;\nvoid main() {\n    vec4 tex = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = floor((tex * uColorAdjust) + vec4(0.5)) / uColorAdjust;\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaEffectBrightness"


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

    const-string v2, "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uColorAdjust;\nvoid main() {\n    vec4 tex = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = floor((tex * uColorAdjust) + vec4(0.5)) / uColorAdjust;\n}\n"

    .line 41
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v4

    .line 43
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 46
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 50
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;

    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;->FRAGMENT_SHADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;->setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectPosterize;

    return-void
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectPosterize;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectPosterize;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;

    invoke-virtual {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->setColorAdjust(F)V

    return-object p0
.end method
