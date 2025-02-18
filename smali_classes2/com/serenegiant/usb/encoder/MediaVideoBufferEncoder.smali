.class public Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;
.super Lcom/serenegiant/usb/encoder/MediaEncoder;
.source "MediaVideoBufferEncoder.java"

# interfaces
.implements Lcom/serenegiant/usb/encoder/IVideoEncoder;


# static fields
.field private static final BPP:F = 0.5f

.field private static final DEBUG:Z = true

.field private static final FRAME_RATE:I = 0xf

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaVideoBufferEncoder"

.field protected static recognizedFormats:[I


# instance fields
.field protected mColorFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 165
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->recognizedFormats:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x7fa30c00
    .end array-data
.end method

.method public constructor <init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;IILcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p4}, Lcom/serenegiant/usb/encoder/MediaEncoder;-><init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V

    const-string p1, "MediaVideoBufferEncoder"

    const-string p4, "MediaVideoEncoder: "

    .line 50
    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput p2, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mWidth:I

    .line 52
    iput p3, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mHeight:I

    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 103
    iget v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40f00000    # 7.5f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, v0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 104
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaVideoBufferEncoder"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static final isRecognizedViewoFormat(I)Z
    .locals 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecognizedViewoFormat:colorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaVideoBufferEncoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->recognizedFormats:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 177
    sget-object v3, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->recognizedFormats:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method protected static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6

    const-string v0, "MediaVideoBufferEncoder"

    const-string v1, "selectColorFormat: "

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 144
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 149
    :goto_0
    iget-object v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 150
    iget-object v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v4, v4, v3

    .line 151
    invoke-static {v4}, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->isRecognizedViewoFormat(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find a good color format for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 147
    throw p0
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->encode(Ljava/nio/ByteBuffer;I)V

    return-void

    .line 57
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MediaVideoBufferEncoder"

    const-string v1, "prepare: "

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mMuxerStarted:Z

    const-string v2, "video/avc"

    .line 69
    invoke-virtual {p0, v2}, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "Unable to find an appropriate codec for video/avc"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected codec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v3, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 77
    iget v4, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mColorFormat:I

    const-string v5, "color-format"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->calcBitRate()I

    move-result v4

    const-string v5, "bitrate"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v4, 0xf

    const-string v5, "frame-rate"

    .line 79
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v4, 0xa

    const-string v5, "i-frame-interval"

    .line 80
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 84
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "request-sync"

    .line 88
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    .line 90
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    const-string v1, "prepare finishing"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v1, :cond_2

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v1, p0}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "prepare:"

    .line 97
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    const-string v0, "MediaVideoBufferEncoder"

    const-string v1, "selectVideoCodec:"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 116
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 123
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 124
    aget-object v7, v5, v6

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v4, p1}, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 128
    iput v7, p0, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;->mColorFormat:I

    return-object v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
