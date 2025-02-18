.class public Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.super Ljava/lang/Object;
.source "MediaEffectGLESBase.java"

# interfaces
.implements Lcom/serenegiant/mediaeffect/IEffect;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaEffectGLESBase"


# instance fields
.field protected final mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

.field protected volatile mEnabled:Z

.field protected mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 46
    invoke-static {p1, v0, v1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->newInstance(IZLjava/lang/String;Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 57
    invoke-static {p1, p2, v0, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->newInstance(IZLjava/lang/String;Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->newInstance(IZLjava/lang/String;Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    .line 77
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/serenegiant/mediaeffect/ISource;)V
    .locals 4

    .line 194
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getOutputTexture()Lcom/serenegiant/glutils/TextureOffscreen;

    move-result-object v0

    .line 196
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getSourceTexId()[I

    move-result-object p1

    .line 197
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public apply([IIII)V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {v0, p2, p3, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 162
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 163
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getHeight()I

    move-result v0

    if-eq p3, v0, :cond_3

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0, p4, p2, p3}, Lcom/serenegiant/glutils/TextureOffscreen;->assignTexture(III)V

    .line 166
    :cond_3
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 168
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    iget-object p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p3}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object p3

    invoke-virtual {p2, p1, p3, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public apply([ILcom/serenegiant/glutils/TextureOffscreen;)V
    .locals 3

    .line 178
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public enabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    return v0
.end method

.method public getMvpMatrix([FI)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getMvpMatrix([FI)V

    return-void
.end method

.method public getMvpMatrix()[F
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getMvpMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method protected getProgram()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getProgram()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->release()V

    .line 85
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :cond_0
    return-void
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->setTexSize(II)V

    :cond_0
    return-object p0
.end method

.method public setEnable(Z)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    return-object p0
.end method

.method public setMvpMatrix([FI)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->setMvpMatrix([FI)V

    return-object p0
.end method
