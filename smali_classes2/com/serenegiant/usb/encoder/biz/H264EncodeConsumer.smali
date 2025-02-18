.class public Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;
.super Ljava/lang/Thread;
.source "H264EncodeConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;
    }
.end annotation


# static fields
.field private static final BPP:F = 0.5f

.field private static final DEBUG:Z = false

.field private static final FRAME_INTERVAL:I = 0x1

.field private static final FRAME_RATE:I = 0xf

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "H264EncodeConsumer"

.field private static final TIMES_OUT:I = 0x2710

.field private static path:Ljava/lang/String;

.field protected static recognizedFormats:[I


# instance fields
.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private isAddKeyFrame:Z

.field private isEncoderStart:Z

.field private isExit:Z

.field lastPush:J

.field private listener:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;

.field private mColorFormat:I

.field private mFormat:Landroid/media/MediaFormat;

.field private mHeight:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMuxerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field final millisPerframe:I

.field private newFormat:Landroid/media/MediaFormat;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/test2.h264"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->path:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 360
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->recognizedFormats:[I

    return-void

    :array_0
    .array-data 4
        0x15
        0x7fa30c00
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isExit:Z

    .line 36
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    const/16 v1, 0x32

    .line 41
    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->millisPerframe:I

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->lastPush:J

    .line 48
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isAddKeyFrame:Z

    .line 60
    iput p1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    .line 61
    iput p2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 289
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40f00000    # 7.5f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, v0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 290
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264EncodeConsumer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private feedMediaCodecData([B)V
    .locals 9

    .line 106
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    .line 121
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 122
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 124
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_2
    return-void
.end method

.method private static final isRecognizedViewoFormat(I)Z
    .locals 4

    .line 370
    sget-object v0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->recognizedFormats:[I

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

    .line 372
    sget-object v3, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->recognizedFormats:[I

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

.method private nv12ToI420([BII)[B
    .locals 5

    mul-int p2, p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 398
    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 401
    invoke-static {p3, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 402
    div-int/lit8 v2, p2, 0x4

    invoke-static {p3, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int v4, p2, v2

    .line 403
    invoke-static {p3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 406
    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 407
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 408
    aget-byte v0, p1, p2

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 409
    aget-byte v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method private nv12ToNV21([BII)[B
    .locals 2

    mul-int p2, p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 448
    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 452
    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 455
    aget-byte v1, p1, v0

    aput-byte v1, p3, p2

    .line 456
    aget-byte v1, p1, p2

    aput-byte v1, p3, v0

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method private nv12ToNv21([BII)[B
    .locals 5

    mul-int p2, p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 415
    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 418
    invoke-static {p3, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 419
    div-int/lit8 v2, p2, 0x4

    invoke-static {p3, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int v4, p2, v2

    .line 420
    invoke-static {p3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 423
    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 424
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 425
    aget-byte v0, p1, p2

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 426
    aget-byte v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method private nv21ToI420([BII)[B
    .locals 5

    mul-int p2, p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 381
    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 384
    invoke-static {p3, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 385
    div-int/lit8 v2, p2, 0x4

    invoke-static {p3, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int v4, p2, v2

    .line 386
    invoke-static {p3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 388
    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 389
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 390
    aget-byte v0, p1, p2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 391
    aget-byte v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method private nv21ToNV12([BII)[B
    .locals 2

    mul-int p2, p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 433
    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 437
    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 440
    aget-byte v1, p1, v0

    aput-byte v1, p3, v0

    .line 441
    aget-byte v0, p1, p2

    aput-byte v0, p3, p2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method protected static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x5

    .line 335
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 336
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 341
    :goto_0
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 342
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v2

    .line 343
    invoke-static {v3}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isRecognizedViewoFormat(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t find a good color format for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "H264EncodeConsumer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 339
    throw p0
.end method

.method private startMediaCodec()V
    .locals 4

    const-string v0, "video/avc"

    .line 240
    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "H264EncodeConsumer"

    const-string v1, "Unable to find an appropriate codec for video/avc"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_0
    iget v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 247
    iget v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mColorFormat:I

    const-string v3, "color-format"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 248
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->calcBitRate()I

    move-result v2

    const-string v3, "bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x1e

    const-string v3, "frame-rate"

    .line 249
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    const/4 v3, 0x1

    .line 250
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 253
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 258
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 261
    iput-boolean v3, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 263
    iput-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->inputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 266
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 269
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "request-sync"

    .line 270
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 272
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private stopMediaCodec()V
    .locals 2

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    .line 278
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 280
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const-string v0, "H264EncodeConsumer"

    const-string v1, "\u5173\u95ed\u89c6\u9891\u7f16\u7801\u5668"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isExit:Z

    return-void
.end method

.method public run()V
    .locals 14

    .line 135
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->startMediaCodec()V

    :cond_0
    const-wide/16 v0, 0xc8

    .line 141
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 147
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isExit:Z

    if-nez v0, :cond_13

    .line 148
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 151
    iget v3, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    mul-int v3, v3, v4

    new-array v3, v3, [B

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 158
    iget-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    :cond_4
    const/4 v5, -0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_6

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    .line 162
    iget-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_5

    .line 163
    iget-object v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v4, :cond_5

    .line 165
    iget-object v5, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5, v6}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V

    .line 168
    :cond_5
    monitor-exit p0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-gez v4, :cond_7

    goto/16 :goto_6

    .line 173
    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_8

    .line 174
    iget-object v5, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_1

    .line 176
    :cond_8
    iget-object v5, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v4

    .line 178
    :goto_1
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b

    .line 183
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_a

    .line 185
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    .line 186
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v5, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_6

    :cond_a
    new-array v7, v1, [B

    goto :goto_3

    :cond_b
    move-object v7, v2

    const/4 v2, 0x0

    .line 194
    :goto_3
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_4
    or-int/2addr v2, v8

    .line 195
    array-length v8, v7

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    .line 196
    array-length v9, v3

    if-le v8, v9, :cond_d

    .line 197
    new-array v3, v8, [B

    :cond_d
    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_10

    .line 200
    array-length v2, v7

    invoke-static {v7, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    array-length v2, v7

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v3, v2, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 202
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;

    if-eqz v2, :cond_e

    const/4 v10, 0x0

    .line 203
    array-length v11, v7

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v12

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v12, v8

    move-object v8, v2

    move-object v9, v3

    invoke-interface/range {v8 .. v13}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;->onEncodeResult([BIIJ)V

    .line 207
    :cond_e
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_12

    .line 208
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v2, :cond_f

    .line 210
    invoke-virtual {v2, v5, v0, v6}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->pumpStream(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 212
    :cond_f
    iput-boolean v6, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isAddKeyFrame:Z

    goto :goto_5

    .line 218
    :cond_10
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;

    if-eqz v2, :cond_11

    const/4 v10, 0x0

    .line 220
    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v12, v8

    move-object v8, v2

    move-object v9, v3

    invoke-interface/range {v8 .. v13}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;->onEncodeResult([BIIJ)V

    .line 223
    :cond_11
    iget-boolean v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isAddKeyFrame:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_12

    .line 224
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v2, :cond_12

    .line 226
    invoke-virtual {v2, v5, v0, v6}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->pumpStream(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 232
    :cond_12
    :goto_5
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object v2, v7

    .line 234
    :goto_6
    iget-boolean v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isExit:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 236
    :cond_13
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->stopMediaCodec()V

    return-void
.end method

.method protected final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 304
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 306
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 312
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 313
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 314
    aget-object v6, v4, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    invoke-static {v3, p1}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 317
    iput v6, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mColorFormat:I

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnH264EncodeResultListener(Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;

    return-void
.end method

.method public setRawYuv([BII)V
    .locals 6

    .line 76
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->isEncoderStart:Z

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    if-ne v0, p2, :cond_5

    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    if-eq v0, p3, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    :try_start_0
    iget-wide p2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->lastPush:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->lastPush:J

    .line 87
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->lastPush:J

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x2

    cmp-long v4, p2, v0

    if-ltz v4, :cond_3

    const-wide/16 v4, 0x32

    sub-long p2, v4, p2

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    .line 91
    div-long v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 95
    :cond_3
    iget v4, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    iget v5, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    invoke-direct {p0, p1, v4, v5}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->nv12ToNV21([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->feedMediaCodecData([B)V

    cmp-long p1, p2, v0

    if-lez p1, :cond_4

    .line 98
    div-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->lastPush:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    .line 79
    :cond_5
    :goto_1
    iput p2, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mWidth:I

    .line 80
    iput p3, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mHeight:I

    return-void
.end method

.method public declared-synchronized setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
