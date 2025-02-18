.class public abstract Lcom/serenegiant/usb/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;
    }
.end annotation


# static fields
.field public static final AUDIO_SAMPLING_RATES:[I

.field private static final DEBUG:Z = true

.field protected static final MSG_FRAME_AVAILABLE:I = 0x1

.field protected static final MSG_STOP_RECORDING:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MediaEncoder"

.field protected static final TIMEOUT_USEC:I = 0x2710

.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private isExit:Z

.field private lastPush:J

.field mBuffer:Ljava/nio/ByteBuffer;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected final mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field private mRequestDrain:I

.field protected volatile mRequestStop:Z

.field protected final mSync:Ljava/lang/Object;

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private millisPerframe:J

.field private prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->AUDIO_SAMPLING_RATES:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    const/16 v0, 0x2800

    .line 393
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 560
    iput-wide v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->prevOutputPTSUs:J

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 101
    invoke-virtual {p1, p0}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->addEncoder(Lcom/serenegiant/usb/encoder/MediaEncoder;)V

    .line 102
    iput-object p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    .line 103
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 105
    :try_start_0
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 107
    new-instance p2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :catch_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MediaMuxerWrapper is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MediaEncoderListener is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addADTStoPacket([BI)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 539
    aput-byte v0, p1, v1

    const/4 v0, 0x1

    const/16 v2, -0xf

    .line 540
    aput-byte v2, p1, v0

    .line 541
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->getSamplingRateIndex()I

    move-result v0

    const/4 v2, 0x2

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    shr-int/lit8 v0, p2, 0xb

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 542
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 543
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 544
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 545
    aput-byte v0, p1, p2

    return-void
.end method

.method private getSamplingRateIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 550
    :goto_0
    sget-object v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->AUDIO_SAMPLING_RATES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 551
    aget v1, v1, v0

    const v2, 0xac44

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected drain()V
    .locals 20

    move-object/from16 v1, p0

    .line 400
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 404
    iget-object v2, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;

    if-nez v2, :cond_1

    const-string v0, "MediaEncoder"

    const-string v2, "muxer is unexpectedly null"

    .line 406
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    new-array v4, v3, [B

    const v5, 0x4b000

    new-array v5, v5, [B

    :goto_0
    const/4 v6, 0x0

    .line 412
    :cond_2
    :goto_1
    iget-boolean v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v7, :cond_19

    .line 413
    iget-object v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 417
    iget-boolean v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    goto/16 :goto_a

    :cond_3
    const/4 v8, -0x3

    if-ne v7, v8, :cond_4

    .line 422
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v8, -0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_7

    .line 424
    iget-boolean v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMuxerStarted:Z

    if-nez v7, :cond_6

    .line 427
    iget-object v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 428
    invoke-virtual {v2, v7}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mTrackIndex:I

    .line 429
    iput-boolean v9, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 430
    invoke-virtual {v2}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->start()Z

    move-result v7

    if-nez v7, :cond_2

    .line 431
    monitor-enter v2

    .line 432
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_5

    const-wide/16 v7, 0x64

    .line 434
    :try_start_1
    invoke-virtual {v2, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 438
    :catch_0
    :cond_5
    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 425
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "format changed twice"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-gez v7, :cond_8

    const-string v8, "MediaEncoder"

    .line 441
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drain:unexpected result from encoder#dequeueOutputBuffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    :cond_8
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_9

    .line 445
    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_3

    .line 447
    :cond_9
    aget-object v8, v0, v7

    .line 449
    :goto_3
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v11, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v8, :cond_18

    .line 458
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_a

    const-string v10, "MediaEncoder"

    const-string v11, "drain:BUFFER_FLAG_CODEC_CONFIG"

    .line 459
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 464
    :cond_a
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_b

    .line 465
    iput-boolean v3, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    iput-boolean v3, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMuxerStarted:Z

    goto/16 :goto_a

    .line 469
    :cond_b
    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v10, :cond_17

    .line 471
    iget-boolean v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v6, :cond_16

    .line 475
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v10

    iput-wide v10, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 476
    iget v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mTrackIndex:I

    iget-object v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v6, v8, v10}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 477
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v10, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->prevOutputPTSUs:J

    .line 481
    iget v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mTrackIndex:I

    const-wide/16 v10, 0x3e8

    if-nez v6, :cond_14

    .line 482
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 483
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v12, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v12

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 485
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e

    .line 486
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_d

    .line 488
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 489
    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 491
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    :cond_d
    new-array v6, v3, [B

    goto :goto_5

    :cond_e
    move-object v6, v4

    const/4 v4, 0x0

    .line 497
    :goto_5
    iget-object v12, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_f

    goto :goto_6

    :cond_f
    const/4 v9, 0x0

    :goto_6
    or-int/2addr v4, v9

    .line 498
    array-length v9, v6

    iget-object v12, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v12

    .line 499
    array-length v12, v5

    if-le v9, v12, :cond_10

    .line 500
    new-array v5, v9, [B

    :cond_10
    if-eqz v4, :cond_12

    .line 503
    array-length v4, v6

    invoke-static {v6, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    array-length v4, v6

    iget-object v9, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v5, v4, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 505
    iget-object v12, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v12, :cond_11

    const/4 v14, 0x0

    .line 506
    array-length v4, v6

    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int v15, v4, v8

    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v16, v8, v10

    const/16 v18, 0x1

    move-object v13, v5

    invoke-interface/range {v12 .. v18}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onEncodeResult([BIIJI)V

    .line 510
    :cond_11
    array-length v4, v6

    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v8

    invoke-static {v5, v3, v4}, Lcom/jiangdg/usbcamera/utils/FileUtils;->putFileStream([BII)V

    goto :goto_7

    .line 512
    :cond_12
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v5, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 513
    iget-object v12, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v12, :cond_13

    const/4 v14, 0x0

    .line 514
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v16, v8, v10

    const/16 v18, 0x1

    move-object v13, v5

    invoke-interface/range {v12 .. v18}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onEncodeResult([BIIJI)V

    .line 517
    :cond_13
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v5, v3, v4}, Lcom/jiangdg/usbcamera/utils/FileUtils;->putFileStream([BII)V

    :goto_7
    move-object v4, v6

    goto :goto_8

    :cond_14
    if-ne v6, v9, :cond_15

    .line 520
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 521
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v9, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x7

    invoke-virtual {v8, v6, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 523
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v12

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 524
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v12

    invoke-direct {v1, v6, v8}, Lcom/serenegiant/usb/encoder/MediaEncoder;->addADTStoPacket([BI)V

    .line 525
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 526
    iget-object v13, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v13, :cond_15

    .line 527
    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    const/4 v15, 0x0

    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v16, v6, 0x7

    iget-object v6, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v17, v8, v10

    const/16 v19, 0x0

    invoke-interface/range {v13 .. v19}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onEncodeResult([BIIJI)V

    :cond_15
    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    .line 472
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "drain:muxer hasn\'t started"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_17
    :goto_9
    iget-object v8, v1, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v7, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1

    .line 454
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;I)V
    .locals 9

    .line 310
    iget-boolean p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-nez p2, :cond_0

    return-void

    .line 312
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->lastPush:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->lastPush:J

    .line 315
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->lastPush:J

    sub-long/2addr v0, v4

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    .line 317
    iget-wide v4, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->millisPerframe:J

    sub-long/2addr v4, v0

    cmp-long p2, v4, v2

    if-lez p2, :cond_2

    const-wide/16 v0, 0x2

    .line 319
    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 321
    :cond_2
    iget-object p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, -0x1

    .line 324
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 326
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 331
    iget-object p2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_1

    .line 333
    :cond_3
    aget-object p2, p2, v3

    .line 335
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    new-array v0, v5, [B

    .line 336
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 338
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 339
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 341
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long v6, p1, v0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 343
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->lastPush:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 357
    iget-boolean v3, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 359
    iget-object v4, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 360
    :cond_1
    :goto_0
    iget-boolean v5, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v5, :cond_5

    if-ge v3, v2, :cond_5

    .line 361
    iget-object v5, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_1

    .line 363
    aget-object v5, v4, v9

    .line 364
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 365
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int v7, v3, v6

    if-ge v7, v2, :cond_2

    goto :goto_1

    :cond_2
    sub-int v6, v2, v3

    :goto_1
    move v11, v6

    if-lez v11, :cond_3

    if-eqz v1, :cond_3

    add-int v6, v3, v11

    .line 368
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 370
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    add-int/2addr v3, v11

    if-gtz v2, :cond_4

    const/4 v1, 0x1

    .line 376
    iput-boolean v1, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsEOS:Z

    const-string v1, "MediaEncoder"

    const-string v2, "send BUFFER_FLAG_END_OF_STREAM"

    .line 377
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v8, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x4

    move-wide/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 382
    :cond_4
    iget-object v8, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-wide/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method protected encode([BIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 275
    iget-boolean v3, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 277
    iget-object v4, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 278
    :cond_1
    :goto_0
    iget-boolean v5, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v5, :cond_5

    if-ge v3, v2, :cond_5

    .line 279
    iget-object v5, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_1

    .line 281
    aget-object v5, v4, v9

    .line 282
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 283
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int v7, v3, v6

    if-ge v7, v2, :cond_2

    goto :goto_1

    :cond_2
    sub-int v6, v2, v3

    :goto_1
    move v11, v6

    if-lez v11, :cond_3

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v5, v1, v3, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    add-int/2addr v3, v11

    if-gtz v2, :cond_4

    const/4 v1, 0x1

    .line 292
    iput-boolean v1, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsEOS:Z

    const-string v1, "MediaEncoder"

    const-string v2, "send BUFFER_FLAG_END_OF_STREAM"

    .line 293
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v8, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x4

    move-wide/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 298
    :cond_4
    iget-object v8, v0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-wide/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    .line 131
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 128
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getPTSUs()J
    .locals 5

    .line 563
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 564
    iget-wide v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->prevOutputPTSUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected release()V
    .locals 4

    const-string v0, "MediaEncoder"

    const-string v1, "release:"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v1, p0}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed onStopped"

    .line 234
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    .line 236
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    .line 237
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 239
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 240
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 241
    iput-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "failed releasing MediaCodec"

    .line 243
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;

    if-eqz v1, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {v1}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v3, "failed stopping muxer"

    .line 252
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_1
    :goto_2
    iput-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public run()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 143
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    .line 144
    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    .line 145
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/test222.h264"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiangdg/usbcamera/utils/FileUtils;->createfile(Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_1
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    .line 157
    iget v3, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 159
    iget v5, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestDrain:I

    .line 160
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->drain()V

    .line 164
    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->signalEndOfInputStream()V

    .line 166
    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->drain()V

    .line 168
    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->release()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->drain()V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_2
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 178
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :goto_2
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_4
    iput-boolean v4, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    .line 185
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    .line 186
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    invoke-static {}, Lcom/jiangdg/usbcamera/utils/FileUtils;->releaseFile()V

    return-void

    :catchall_1
    move-exception v0

    .line 186
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 180
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catchall_2
    move-exception v0

    .line 160
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 146
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method protected signalEndOfInputStream()V
    .locals 4

    const-string v0, "MediaEncoder"

    const-string v1, "sending EOS to encoder"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 264
    check-cast v0, [B

    invoke-virtual {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/serenegiant/usb/encoder/MediaEncoder;->encode([BIJ)V

    return-void
.end method

.method startRecording()V
    .locals 2

    const-string v0, "MediaEncoder"

    const-string v1, "startRecording"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 200
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    .line 202
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->isExit:Z

    .line 203
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopRecording()V
    .locals 2

    const-string v0, "MediaEncoder"

    const-string v1, "stopRecording"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mRequestStop:Z

    .line 217
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->isExit:Z

    .line 218
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v0

    return-void

    .line 214
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
