.class public Lcom/serenegiant/mediaeffect/MediaEffectKernel;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectKernel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaEffectKernel"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    sget-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {v0, v2, v3, v1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->setParameter([FF)Lcom/serenegiant/mediaeffect/MediaEffectKernel;

    return-void
.end method

.method public constructor <init>([FF)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->setParameter([FF)Lcom/serenegiant/mediaeffect/MediaEffectKernel;

    return-void
.end method


# virtual methods
.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectKernel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectKernel;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffectKernel;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->setTexSize(II)V

    return-object p0
.end method

.method public setColorAdjust(F)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    invoke-virtual {v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setColorAdjust(F)V

    return-void
.end method

.method public setKernel([FF)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setKernel([FF)V

    return-void
.end method

.method public setParameter([FF)Lcom/serenegiant/mediaeffect/MediaEffectKernel;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->setKernel([FF)V

    return-object p0
.end method

.method public setTexSize(II)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->setTexSize(II)V

    return-void
.end method
