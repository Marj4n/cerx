.class public final Lcom/serenegiant/media/VideoEncoder;
.super Lcom/serenegiant/media/AbstractVideoEncoder;
.source "VideoEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isLoaded:Z


# instance fields
.field private BUF_SIZE:I

.field private final mAlign16:Z

.field private mColorFormat:I

.field private mEncodeBytes:[B

.field protected mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/serenegiant/media/VideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/VideoEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/serenegiant/media/VideoEncoder;->isLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "c++_shared"

    .line 38
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jpeg-turbo2000"

    .line 39
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "png16"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "common"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mediaencoder"

    .line 42
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/serenegiant/media/VideoEncoder;->isLoaded:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/Recorder;Lcom/serenegiant/media/EncoderListener;Z)V
    .locals 2

    const-string v0, "video/avc"

    .line 56
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractVideoEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    .line 193
    iget p1, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    iget p2, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    int-to-float p2, p2

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    .line 194
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/serenegiant/media/VideoEncoder;->mEncodeBytes:[B

    .line 58
    iput-boolean p3, p0, Lcom/serenegiant/media/VideoEncoder;->mAlign16:Z

    .line 61
    invoke-direct {p0}, Lcom/serenegiant/media/VideoEncoder;->nativeCreate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    return-void
.end method

.method private final native nativeCreate()J
.end method

.method private final native nativeDestroy(J)V
.end method

.method private static final native nativePrepare(JIII)I
.end method

.method private static final native nativeResize(JIII)I
.end method

.method private static final native nativeStop(J)I
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/serenegiant/media/VideoEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/VideoEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/VideoEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lcom/serenegiant/media/VideoEncoder;->getInputPTSUs()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/serenegiant/media/VideoEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/VideoEncoder;->callOnError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 202
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCaptureFormat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected internalPrepare()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/serenegiant/media/VideoEncoder;->mRecorderStarted:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/serenegiant/media/VideoEncoder;->mIsCapturing:Z

    .line 69
    iput-boolean v0, p0, Lcom/serenegiant/media/VideoEncoder;->mIsEOS:Z

    const-string v2, "video/avc"

    .line 71
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    sget-object v0, Lcom/serenegiant/media/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find an appropriate codec for video/avc"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 80
    :cond_0
    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_1

    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    if-lt v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 86
    :cond_2
    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    invoke-static {v2, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 88
    invoke-static {v3, v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/serenegiant/media/VideoEncoder;->mColorFormat:I

    const-string v6, "color-format"

    .line 91
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 92
    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mBitRate:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mBitRate:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    iget v6, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    .line 93
    invoke-static {v5, v6}, Lcom/serenegiant/media/VideoConfig;->getBitrate(II)I

    move-result v5

    :goto_0
    const-string v6, "bitrate"

    .line 92
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mFramerate:I

    if-lez v5, :cond_4

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mFramerate:I

    goto :goto_1

    .line 95
    :cond_4
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v5

    :goto_1
    const-string v6, "frame-rate"

    .line 94
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mIFrameIntervals:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mIFrameIntervals:I

    goto :goto_2

    .line 97
    :cond_5
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getIFrame()I

    move-result v5

    :goto_2
    const-string v6, "i-frame-interval"

    .line 96
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    sget-object v5, Lcom/serenegiant/media/VideoEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/serenegiant/media/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 104
    iget-object v5, p0, Lcom/serenegiant/media/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v6, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 105
    iget-object v4, p0, Lcom/serenegiant/media/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 108
    iget-boolean v4, p0, Lcom/serenegiant/media/VideoEncoder;->mAlign16:Z

    if-eqz v4, :cond_7

    .line 109
    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    div-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    if-eq v4, v5, :cond_6

    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    .line 110
    :cond_6
    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    div-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    .line 112
    :cond_7
    iget-wide v4, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    iget v1, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I

    iget v6, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    .line 113
    invoke-static {v3, v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v2

    .line 112
    invoke-static {v4, v5, v1, v6, v2}, Lcom/serenegiant/media/VideoEncoder;->nativePrepare(JIII)I

    return v0
.end method

.method public release()V
    .locals 5

    .line 143
    invoke-virtual {p0}, Lcom/serenegiant/media/VideoEncoder;->stop()V

    .line 144
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeDestroy(J)V

    .line 146
    iput-wide v2, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractVideoEncoder;->release()V

    return-void
.end method

.method protected declared-synchronized startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "width"

    .line 162
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 164
    :catch_0
    :try_start_1
    iget v0, p0, Lcom/serenegiant/media/VideoEncoder;->mWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v1, "height"

    .line 167
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 169
    :catch_1
    :try_start_3
    iget v1, p0, Lcom/serenegiant/media/VideoEncoder;->mHeight:I

    .line 171
    :goto_1
    iget-wide v2, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mColorFormat:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/serenegiant/media/VideoEncoder;->nativeResize(JIII)I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    .line 172
    div-int/lit8 v0, v0, 0x4

    .line 173
    iget v1, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    if-eq v0, v1, :cond_0

    .line 174
    iput v0, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    .line 175
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/serenegiant/media/VideoEncoder;->mEncodeBytes:[B

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/serenegiant/media/AbstractVideoEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 5

    .line 131
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 132
    invoke-static {v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeStop(J)I

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractVideoEncoder;->stop()V

    return-void
.end method

.method protected stopRecorder(Lcom/serenegiant/media/IRecorder;)V
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcom/serenegiant/media/VideoEncoder;->mRecorderStarted:Z

    if-eqz v0, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeStop(J)I

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/serenegiant/media/AbstractVideoEncoder;->stopRecorder(Lcom/serenegiant/media/IRecorder;)V

    return-void
.end method
