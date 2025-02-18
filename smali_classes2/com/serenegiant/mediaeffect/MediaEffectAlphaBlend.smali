.class public Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectAlphaBlend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform %s    sTexture2;\nuniform float uMixRate;\nvoid main() {\n    highp vec4 tex1 = texture2D(sTexture, vTextureCoord);\n    highp vec4 tex2 = texture2D(sTexture2, vTextureCoord);\n    gl_FragColor = vec4(mix(tex1.rgb, tex2.rgb, tex2.a * uMixRate), tex1.a);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaEffectAlphaBlend"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "sampler2D"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform %s    sTexture2;\nuniform float uMixRate;\nvoid main() {\n    highp vec4 tex1 = texture2D(sTexture, vTextureCoord);\n    highp vec4 tex2 = texture2D(sTexture2, vTextureCoord);\n    gl_FragColor = vec4(mix(tex1.rgb, tex2.rgb, tex2.a * uMixRate), tex1.a);\n}\n"

    .line 49
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v2

    aput-object v1, v0, v5

    .line 51
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 108
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 116
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;

    invoke-direct {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->FRAGMENT_SHADER:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->setEnable(Z)Lcom/serenegiant/mediaeffect/IEffect;

    .line 127
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;

    invoke-virtual {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->setMixRate(F)V

    return-object p0
.end method
