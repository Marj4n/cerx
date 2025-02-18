.class public Lcom/serenegiant/mediaeffect/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Lcom/serenegiant/mediaeffect/ISource;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field protected mHeight:I

.field protected mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

.field protected mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

.field protected mSrcTexIds:[I

.field protected mWidth:I

.field protected needSwap:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 34
    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    .line 42
    invoke-virtual {p0, v0, v0}, Lcom/serenegiant/mediaeffect/MediaSource;->resize(II)Lcom/serenegiant/mediaeffect/ISource;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 34
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaSource;->resize(II)Lcom/serenegiant/mediaeffect/ISource;

    return-void
.end method


# virtual methods
.method public apply(Lcom/serenegiant/mediaeffect/IEffect;)Lcom/serenegiant/mediaeffect/ISource;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_1

    .line 85
    iget-boolean v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 88
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 89
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v1

    aput v1, v0, v2

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    .line 95
    invoke-interface {p1, p0}, Lcom/serenegiant/mediaeffect/IEffect;->apply(Lcom/serenegiant/mediaeffect/ISource;)V

    :cond_1
    return-object p0
.end method

.method public bind()Lcom/serenegiant/mediaeffect/MediaSource;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mHeight:I

    return v0
.end method

.method public getOutputTexId()I
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :goto_0
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    return v0
.end method

.method public getOutputTexture()Lcom/serenegiant/glutils/TextureOffscreen;
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :goto_0
    return-object v0
.end method

.method public getSourceTexId()[I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    return-object v0
.end method

.method public getTexMatrix()[F
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :goto_0
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    .line 136
    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    .line 140
    iput-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :cond_1
    return-void
.end method

.method public reset()Lcom/serenegiant/mediaeffect/ISource;
    .locals 3

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    .line 52
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v2

    aput v2, v1, v0

    return-object p0
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/ISource;
    .locals 3

    .line 59
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mHeight:I

    if-eq v0, p2, :cond_3

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    .line 62
    iput-object v2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    .line 66
    iput-object v2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 71
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 72
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 73
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mWidth:I

    .line 74
    iput p2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mHeight:I

    .line 75
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSrcTexIds:[I

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result p2

    aput p2, p1, v1

    .line 78
    :cond_3
    iput-boolean v1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->needSwap:Z

    return-object p0
.end method

.method public setSource(Lcom/serenegiant/glutils/GLDrawer2D;I[F)Lcom/serenegiant/mediaeffect/MediaSource;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p1, p2, p3, v0}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "MediaSource"

    .line 169
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaSource;->reset()Lcom/serenegiant/mediaeffect/ISource;

    return-object p0

    .line 171
    :goto_2
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public unbind()Lcom/serenegiant/mediaeffect/MediaSource;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    .line 151
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaSource;->reset()Lcom/serenegiant/mediaeffect/ISource;

    return-object p0
.end method
