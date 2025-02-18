.class public Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectMaskedAlphaBlend.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform %s    sTexture2;\nuniform %s    sTexture3;\nvoid main() {\n    highp vec4 tex1 = texture2D(sTexture, vTextureCoord);\n    highp vec4 tex2 = texture2D(sTexture2, vTextureCoord);\n    highp float alpha = texture2D(sTexture3, vTextureCoord).a;\n    gl_FragColor = vec4(mix(tex1.rgb, tex2.rgb, tex2.a * alpha), tex1.a);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaEffectMaskedAlphaBlend"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "sampler2D"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const-string v4, "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform %s    sTexture2;\nuniform %s    sTexture3;\nvoid main() {\n    highp vec4 tex1 = texture2D(sTexture, vTextureCoord);\n    highp vec4 tex2 = texture2D(sTexture2, vTextureCoord);\n    highp float alpha = texture2D(sTexture3, vTextureCoord).a;\n    gl_FragColor = vec4(mix(tex1.rgb, tex2.rgb, tex2.a * alpha), tex1.a);\n}\n"

    .line 47
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v2

    aput-object v1, v0, v5

    aput-object v1, v0, v6

    .line 50
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/serenegiant/mediaeffect/MediaEffectMaskedAlphaBlend;->FRAGMENT_SHADER:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x3

    invoke-static {v1, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->newInstance(IZLjava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method
