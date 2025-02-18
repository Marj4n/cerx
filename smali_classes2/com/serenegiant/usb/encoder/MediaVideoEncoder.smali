.class public Lcom/serenegiant/usb/encoder/MediaVideoEncoder;
.super Lcom/serenegiant/usb/encoder/MediaEncoder;
.source "MediaVideoEncoder.java"

# interfaces
.implements Lcom/serenegiant/usb/encoder/IVideoEncoder;


# static fields
.field private static final BPP:F = 0.5f

.field private static final DEBUG:Z = true

.field private static final FRAME_RATE:I = 0xf

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaVideoEncoder"

.field protected static recognizedFormats:[I


# instance fields
.field private final mHeight:I

.field private mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f000789

    aput v2, v0, v1

    .line 212
    sput-object v0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->recognizedFormats:[I

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;IILcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p4}, Lcom/serenegiant/usb/encoder/MediaEncoder;-><init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V

    const-string p1, "MediaVideoEncoder"

    const-string p4, "MediaVideoEncoder: "

    .line 61
    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/serenegiant/glutils/RenderHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/glutils/RenderHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    .line 63
    iput p2, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mWidth:I

    .line 64
    iput p3, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mHeight:I

    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 143
    iget v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40f00000    # 7.5f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, v0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 144
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaVideoEncoder"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static final isRecognizedVideoFormat(I)Z
    .locals 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecognizedVideoFormat:colorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaVideoEncoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->recognizedFormats:[I

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

    .line 224
    sget-object v3, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->recognizedFormats:[I

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

    const-string v0, "MediaVideoEncoder"

    const-string v1, "selectColorFormat: "

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 188
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 189
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 194
    :goto_0
    iget-object v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 195
    iget-object v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v4, v4, v3

    .line 196
    invoke-static {v4}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->isRecognizedVideoFormat(I)Z

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

    .line 203
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

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 192
    throw p0
.end method

.method protected static final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    const-string v0, "MediaVideoEncoder"

    const-string v1, "selectVideoCodec:"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 159
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 165
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 166
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 167
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
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

    .line 169
    invoke-static {v4, p0}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public frameAvailableSoon()Z
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/serenegiant/glutils/RenderHandler;->draw([F)V

    :cond_0
    return v0
.end method

.method public frameAvailableSoon([F)Z
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    invoke-virtual {v1, p1}, Lcom/serenegiant/glutils/RenderHandler;->draw([F)V

    :cond_0
    return v0
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MediaVideoEncoder"

    const-string v1, "prepare: "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 91
    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mMuxerStarted:Z

    const-string v1, "video/avc"

    .line 94
    invoke-static {v1}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "Unable to find an appropriate codec for video/avc"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v2, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mWidth:I

    iget v3, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const v3, 0x7f000789

    const-string v4, "color-format"

    .line 102
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 103
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->calcBitRate()I

    move-result v3

    const-string v4, "bitrate"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v3, 0xf

    const-string v4, "frame-rate"

    .line 104
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 109
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 112
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 113
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    const-string v1, "prepare finishing"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v1, :cond_1

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v1, p0}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "prepare:"

    .line 119
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    const-string v0, "MediaVideoEncoder"

    const-string v1, "release:"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 133
    iput-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/serenegiant/glutils/RenderHandler;->release()V

    .line 137
    iput-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    .line 139
    :cond_1
    invoke-super {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->release()V

    return-void
.end method

.method public setEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/serenegiant/glutils/RenderHandler;

    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/serenegiant/glutils/RenderHandler;->setEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;ILjava/lang/Object;Z)V

    return-void
.end method
