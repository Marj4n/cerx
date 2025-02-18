.class public abstract Lcom/serenegiant/media/AbstractEncoder;
.super Ljava/lang/Object;
.source "AbstractEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/Encoder;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field protected final MIME_TYPE:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDrainTask:Ljava/lang/Runnable;

.field protected volatile mIsCapturing:Z

.field protected volatile mIsEOS:Z

.field private final mListener:Lcom/serenegiant/media/EncoderListener;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field private mRecorder:Lcom/serenegiant/media/IRecorder;

.field protected volatile mRecorderStarted:Z

.field private volatile mRequestDrain:I

.field protected volatile mRequestStop:Z

.field protected final mSync:Ljava/lang/Object;

.field protected mTrackIndex:I

.field private prevInputPTSUs:J

.field private prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/serenegiant/media/AbstractEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/AbstractEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/serenegiant/media/AbstractEncoder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AbstractEncoder$1;-><init>(Lcom/serenegiant/media/AbstractEncoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mDrainTask:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 563
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    .line 569
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 93
    iput-object p1, p0, Lcom/serenegiant/media/AbstractEncoder;->MIME_TYPE:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 95
    iput-object p3, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    .line 96
    invoke-interface {p2, p0}, Lcom/serenegiant/media/IRecorder;->addEncoder(Lcom/serenegiant/media/Encoder;)V

    .line 98
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "IMuxer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EncodeListener is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/media/AbstractEncoder;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/media/AbstractEncoder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return p1
.end method

.method static synthetic access$010(Lcom/serenegiant/media/AbstractEncoder;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return v0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/AbstractEncoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/serenegiant/media/AbstractEncoder;->drain()V

    return-void
.end method

.method private final drain()V
    .locals 13

    .line 410
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 419
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 425
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_d

    .line 426
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 429
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    goto/16 :goto_3

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 436
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_6

    .line 443
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-nez v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 449
    invoke-virtual {p0, v1, v4}, Lcom/serenegiant/media/AbstractEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 444
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gez v4, :cond_7

    goto :goto_0

    .line 455
    :cond_7
    aget-object v5, v0, v4

    if-eqz v5, :cond_c

    .line 460
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 463
    iget-boolean v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-nez v6, :cond_8

    .line 465
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v8, v6, [B

    .line 466
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 467
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v7, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v8, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 468
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    sget-object v6, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    sget-object v7, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    array-length v7, v7

    invoke-static {v8, v2, v6, v7}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v10

    add-int/lit8 v6, v10, 0x2

    .line 470
    sget-object v7, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    sget-object v9, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    array-length v9, v9

    invoke-static {v8, v6, v7, v9}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v11

    add-int/lit8 v6, v11, 0x2

    .line 471
    sget-object v7, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    sget-object v9, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    array-length v9, v9

    invoke-static {v8, v6, v7, v9}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v12

    .line 473
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/serenegiant/media/AbstractEncoder;->createOutputFormat([BIIII)Landroid/media/MediaFormat;

    move-result-object v6

    .line 474
    invoke-virtual {p0, v1, v6}, Lcom/serenegiant/media/AbstractEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 477
    :cond_8
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 480
    :cond_9
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_b

    .line 483
    iget-boolean v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-eqz v3, :cond_a

    .line 490
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v6, v7}, Lcom/serenegiant/media/AbstractEncoder;->getNextOutputPTSUs(J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 491
    iget v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3, v5, v6}, Lcom/serenegiant/media/IRecorder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Lcom/serenegiant/media/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 498
    :catch_0
    invoke-interface {v1}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    goto :goto_1

    .line 495
    :catch_1
    invoke-interface {v1}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 486
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_b
    :goto_2
    iget-object v5, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 503
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 510
    invoke-virtual {p0, v1}, Lcom/serenegiant/media/AbstractEncoder;->stopRecorder(Lcom/serenegiant/media/IRecorder;)V

    goto :goto_3

    .line 458
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method protected callOnError(Ljava/lang/Exception;)V
    .locals 1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p1}, Lcom/serenegiant/media/EncoderListener;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    sget-object v0, Lcom/serenegiant/media/AbstractEncoder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected abstract createOutputFormat([BIIII)Landroid/media/MediaFormat;
.end method

.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 367
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 370
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 373
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_6

    .line 374
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    .line 376
    aget-object v0, v0, v5

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    .line 379
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 380
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 381
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 382
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    if-gtz p2, :cond_4

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    .line 389
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 392
    :cond_4
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->frameAvailableSoon()V

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    .line 368
    :cond_7
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 370
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 126
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frameAvailableSoon()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    .line 206
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v0

    return-void

    .line 203
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureFormat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getInputPTSUs()J
    .locals 5

    .line 577
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 583
    iget-wide v2, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x25ab

    add-long/2addr v0, v2

    .line 586
    :cond_0
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    return-wide v0
.end method

.method protected getNextOutputPTSUs(J)J
    .locals 3

    .line 599
    iget-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x25ab

    add-long/2addr p1, v0

    .line 602
    :cond_0
    iput-wide p1, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    return-wide p1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/serenegiant/media/IRecorder;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRecorder()Lcom/serenegiant/media/IRecorder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    return-object v0
.end method

.method protected abstract internalPrepare()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isCapturing()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 356
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->internalPrepare()Z

    move-result v0

    .line 133
    instance-of v1, p0, Lcom/serenegiant/media/ISurfaceEncoder;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/serenegiant/media/ISurfaceEncoder;

    .line 134
    invoke-interface {v1}, Lcom/serenegiant/media/ISurfaceEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->getCaptureFormat()I

    move-result v3

    invoke-interface {v2, p0, v1, v3, v0}, Lcom/serenegiant/media/EncoderListener;->onStartEncode(Lcom/serenegiant/media/Encoder;Landroid/view/Surface;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcom/serenegiant/media/AbstractEncoder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mDrainTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :catch_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 297
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onStopEncode(Lcom/serenegiant/media/Encoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    .line 305
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 308
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 309
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 310
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 315
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-eqz v1, :cond_2

    .line 316
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    .line 317
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_2

    .line 320
    :try_start_2
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder;->stop(Lcom/serenegiant/media/Encoder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    :catch_2
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onDestroy(Lcom/serenegiant/media/Encoder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 332
    :catch_3
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 333
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 4

    .line 345
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->getInputPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/serenegiant/media/AbstractEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 172
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 173
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 174
    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z
    .locals 4

    .line 526
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 528
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0xa

    .line 533
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 539
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 540
    invoke-interface {p1, p0, p2}, Lcom/serenegiant/media/IRecorder;->addTrack(Lcom/serenegiant/media/Encoder;Landroid/media/MediaFormat;)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mTrackIndex:I

    if-ltz p2, :cond_2

    const/4 p2, 0x1

    .line 542
    iput-boolean p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    .line 543
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->start(Lcom/serenegiant/media/Encoder;)Z

    move-result p2

    goto :goto_2

    .line 550
    :cond_2
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->removeEncoder(Lcom/serenegiant/media/Encoder;)V

    .line 553
    :cond_3
    :goto_2
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->isStarted()Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    .line 185
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 188
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 189
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopRecorder(Lcom/serenegiant/media/IRecorder;)V
    .locals 0

    const/4 p1, 0x0

    .line 557
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    return-void
.end method
