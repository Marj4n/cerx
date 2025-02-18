.class public Lcom/serenegiant/media/MediaVideoEncoder;
.super Lcom/serenegiant/media/MediaEncoder;
.source "MediaVideoEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/ISurfaceEncoder;


# static fields
.field private static final BPP:F = 0.25f

.field private static final DEBUG:Z = false

.field private static final FRAME_RATE:I = 0x19

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaEncoder"


# instance fields
.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(IILcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p3, p4}, Lcom/serenegiant/media/MediaEncoder;-><init>(ZLcom/serenegiant/media/AbstractRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V

    const/16 p3, 0x500

    .line 44
    iput p3, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    const/16 p3, 0x2d0

    .line 45
    iput p3, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    .line 57
    iput p1, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    .line 58
    iput p2, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 2

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 50
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/serenegiant/media/MediaVideoEncoder;-><init>(IILcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V

    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 135
    iget v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40c80000    # 6.25f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, v0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 136
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaEncoder"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not prepared yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    return v0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mMuxerStarted:Z

    const-string v0, "video/avc"

    .line 67
    invoke-static {v0}, Lcom/serenegiant/media/MediaCodecHelper;->selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MediaEncoder"

    const-string v1, "Unable to find an appropriate codec for video/avc"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    iget v1, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    iget v2, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const v2, 0x7f000789

    const-string v3, "color-format"

    .line 76
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    invoke-direct {p0}, Lcom/serenegiant/media/MediaVideoEncoder;->calcBitRate()I

    move-result v2

    const-string v3, "bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x19

    const-string v3, "frame-rate"

    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0xa

    const-string v3, "i-frame-interval"

    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 84
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 87
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 88
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 89
    iput-boolean v3, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mIsPrepared:Z

    .line 91
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaVideoEncoder;->callOnPrepared()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/MediaEncoder;->release()V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaVideoEncoder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput p1, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoWidth:I

    .line 114
    iput p2, p0, Lcom/serenegiant/media/MediaVideoEncoder;->mVideoHeight:I

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already start capturing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "size(%d,%d)"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
