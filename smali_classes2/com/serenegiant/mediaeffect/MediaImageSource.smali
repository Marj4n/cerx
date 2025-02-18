.class public Lcom/serenegiant/mediaeffect/MediaImageSource;
.super Lcom/serenegiant/mediaeffect/MediaSource;
.source "MediaImageSource.java"


# instance fields
.field private isReset:Z

.field private mImageOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/mediaeffect/MediaSource;-><init>(II)V

    .line 34
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mWidth:I

    iget v2, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mImageOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 35
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaImageSource;->setSource(Landroid/graphics/Bitmap;)Lcom/serenegiant/mediaeffect/ISource;

    return-void
.end method


# virtual methods
.method public apply(Lcom/serenegiant/mediaeffect/IEffect;)Lcom/serenegiant/mediaeffect/ISource;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_2

    .line 55
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->isReset:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 56
    iput-boolean v2, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->isReset:Z

    .line 57
    iput-boolean v1, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->needSwap:Z

    goto :goto_0

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->needSwap:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 61
    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    iput-object v3, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 62
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 63
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSrcTexIds:[I

    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSourceScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v3}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v3

    aput v3, v0, v2

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->needSwap:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->needSwap:Z

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSrcTexIds:[I

    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 68
    invoke-virtual {v1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexWidth()I

    move-result v1

    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexHeight()I

    move-result v2

    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mOutputScreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 69
    invoke-virtual {v3}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v3

    .line 67
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/serenegiant/mediaeffect/IEffect;->apply([IIII)V

    :cond_2
    return-object p0
.end method

.method public reset()Lcom/serenegiant/mediaeffect/ISource;
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/serenegiant/mediaeffect/MediaSource;->reset()Lcom/serenegiant/mediaeffect/ISource;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->isReset:Z

    .line 48
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mSrcTexIds:[I

    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mImageOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object p0
.end method

.method public setSource(Landroid/graphics/Bitmap;)Lcom/serenegiant/mediaeffect/ISource;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaImageSource;->mImageOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/TextureOffscreen;->loadBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaImageSource;->reset()Lcom/serenegiant/mediaeffect/ISource;

    return-object p0
.end method
