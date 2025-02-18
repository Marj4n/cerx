.class public Lcom/serenegiant/media/MediaVideoDecoder;
.super Lcom/serenegiant/media/MediaDecoder;
.source "MediaVideoDecoder.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private mRotation:I

.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "push-blank-buffers-on-shutdown"

    .line 77
    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/media/MediaDecoder;->createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object p1

    return-object p1
.end method

.method protected getOutputSurface()Landroid/view/Surface;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "need to call setSurface before prepare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaVideoDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    throw v0

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mRotation:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoWidth:I

    return v0
.end method

.method protected handleOutput(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected handlePrepare(Landroid/media/MediaExtractor;)I
    .locals 2

    const-string v0, "video/"

    .line 58
    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaVideoDecoder;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v1, "width"

    .line 61
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoWidth:I

    const-string v1, "height"

    .line 62
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoHeight:I

    :cond_0
    return v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mRotation:I

    iput v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoHeight:I

    iput v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoWidth:I

    const/16 v0, 0x12

    .line 111
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoWidth:I

    :cond_0
    const/16 v0, 0x13

    .line 115
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mVideoHeight:I

    :cond_1
    const/16 v0, 0x18

    .line 119
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/MediaVideoDecoder;->mRotation:I

    :cond_2
    return-void
.end method
