.class public abstract Lcom/serenegiant/media/AbstractFakeEncoder;
.super Ljava/lang/Object;
.source "AbstractFakeEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/Encoder;


# static fields
.field public static final BUFFER_FLAG_KEY_FRAME:I

.field private static final DEFAULT_FRAME_SZ:I = 0x400

.field private static final DEFAULT_MAX_POOL_SZ:I = 0x8

.field private static final DEFAULT_MAX_QUEUE_SZ:I = 0x6

.field private static final MAX_WAIT_FRAME_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FRAME_SZ:I

.field private final MAX_POOL_SZ:I

.field private final MIME_TYPE:Ljava/lang/String;

.field private cnt:I

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDrainTask:Ljava/lang/Runnable;

.field private mDrainThread:Ljava/lang/Thread;

.field private final mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCapturing:Z

.field private mIsEOS:Z

.field private final mListener:Lcom/serenegiant/media/EncoderListener;

.field private final mPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorder:Lcom/serenegiant/media/IRecorder;

.field private volatile mRecorderStarted:Z

.field private volatile mRequestStop:Z

.field private final mSync:Ljava/lang/Object;

.field private mTrackIndex:I

.field private volatile mWaitingKeyFrame:Z

.field private prevInputPTSUs:J

.field private prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v0, 0x1

    sput v0, Lcom/serenegiant/media/AbstractFakeEncoder;->BUFFER_FLAG_KEY_FRAME:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 7

    const/16 v4, 0x400

    const/16 v5, 0x8

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    .line 129
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    .line 505
    new-instance v0, Lcom/serenegiant/media/AbstractFakeEncoder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AbstractFakeEncoder$1;-><init>(Lcom/serenegiant/media/AbstractFakeEncoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainTask:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 681
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevInputPTSUs:J

    .line 700
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevOutputPTSUs:J

    .line 172
    iput-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->MIME_TYPE:Ljava/lang/String;

    .line 173
    iput p4, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->FRAME_SZ:I

    .line 174
    iput p5, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->MAX_POOL_SZ:I

    .line 175
    iput-object p2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 176
    iput-object p3, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    .line 177
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1, p6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 179
    invoke-interface {p2, p0}, Lcom/serenegiant/media/IRecorder;->addEncoder(Lcom/serenegiant/media/Encoder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/AbstractFakeEncoder;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/serenegiant/media/AbstractFakeEncoder;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    return p1
.end method

.method static synthetic access$200(Lcom/serenegiant/media/AbstractFakeEncoder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/serenegiant/media/AbstractFakeEncoder;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/serenegiant/media/AbstractFakeEncoder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private internalRelease()V
    .locals 4

    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsEOS:Z

    .line 648
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 649
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onStopEncode(Lcom/serenegiant/media/Encoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 653
    sget-object v2, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    const-string v3, "failed onStopped"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    if-eqz v0, :cond_1

    .line 657
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    .line 658
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_1

    .line 661
    :try_start_1
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder;->stop(Lcom/serenegiant/media/Encoder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 663
    sget-object v1, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    const-string v2, "failed stopping muxer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onDestroy(Lcom/serenegiant/media/Encoder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 670
    sget-object v1, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    const-string v2, "destroy:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 673
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->clearFrames()V

    return-void
.end method


# virtual methods
.method protected callOnError(Ljava/lang/Exception;)V
    .locals 1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p1}, Lcom/serenegiant/media/EncoderListener;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    sget-object v0, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected callOnStartEncode(Landroid/view/Surface;IZ)V
    .locals 1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/serenegiant/media/EncoderListener;->onStartEncode(Lcom/serenegiant/media/Encoder;Landroid/view/Surface;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    sget-object p2, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected clearFrames()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    return-void

    :catchall_0
    move-exception v1

    .line 418
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract createOutputFormat(Ljava/lang/String;[BIIII)Landroid/media/MediaFormat;
.end method

.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 252
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can not call encode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 265
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "can not call encode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->release()V

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frameAvailableSoon()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 364
    monitor-exit v0

    return-void

    .line 361
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 364
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getInputPTSUs()J
    .locals 5

    .line 688
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 690
    iget-wide v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevInputPTSUs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x25ab

    add-long/2addr v0, v2

    .line 693
    :cond_0
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevInputPTSUs:J

    return-wide v0
.end method

.method protected getNextOutputPTSUs(J)J
    .locals 3

    .line 708
    iget-wide v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevOutputPTSUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x25ab

    add-long/2addr p1, v0

    .line 711
    :cond_0
    iput-wide p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->prevOutputPTSUs:J

    return-wide p1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

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

    .line 194
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    return-object v0
.end method

.method protected handleFrame(Lcom/serenegiant/media/MediaData;)V
    .locals 11

    .line 540
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-nez v0, :cond_0

    .line 543
    sget-object p1, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    const-string v0, "muxer is unexpectedly null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iget v3, p1, Lcom/serenegiant/media/MediaData;->size:I

    iget-wide v4, p1, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    iget v6, p1, Lcom/serenegiant/media/MediaData;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 547
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    sget v2, Lcom/serenegiant/media/AbstractFakeEncoder;->BUFFER_FLAG_KEY_FRAME:I

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 550
    :goto_0
    iget-boolean v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v2, [B

    .line 556
    iget-object v2, p1, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 557
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 558
    iget-object v4, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v6, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 559
    invoke-static {v6, v3}, Lcom/serenegiant/utils/BufferHelper;->findAnnexB([BI)I

    move-result v8

    add-int/lit8 v2, v8, 0x2

    .line 560
    invoke-static {v6, v2}, Lcom/serenegiant/utils/BufferHelper;->findAnnexB([BI)I

    move-result v9

    add-int/lit8 v2, v9, 0x2

    .line 561
    invoke-static {v6, v2}, Lcom/serenegiant/utils/BufferHelper;->findAnnexB([BI)I

    move-result v10

    .line 564
    :try_start_0
    iget-object v5, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->MIME_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/serenegiant/media/AbstractFakeEncoder;->createOutputFormat(Ljava/lang/String;[BIIII)Landroid/media/MediaFormat;

    move-result-object v2

    .line 566
    invoke-virtual {p0, v0, v2}, Lcom/serenegiant/media/AbstractFakeEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 567
    sget-object p1, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    const-string v0, "handleFrame:failed to start recorder"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 575
    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 579
    :cond_4
    iget-boolean v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mWaitingKeyFrame:Z

    if-nez v1, :cond_6

    .line 582
    :cond_5
    iput-boolean v3, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mWaitingKeyFrame:Z

    .line 584
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/serenegiant/media/AbstractFakeEncoder;->getNextOutputPTSUs(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 585
    iget v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mTrackIndex:I

    iget-object p1, p1, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1, p1, v2}, Lcom/serenegiant/media/IRecorder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Lcom/serenegiant/media/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 591
    :catch_1
    invoke-interface {v0}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    goto :goto_1

    .line 588
    :catch_2
    invoke-interface {v0}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    .line 594
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_7

    .line 596
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->stopRecorder(Lcom/serenegiant/media/IRecorder;)V

    :cond_7
    return-void
.end method

.method protected initPool()V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 403
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 405
    :goto_0
    iget v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->MAX_POOL_SZ:I

    if-ge v1, v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    new-instance v3, Lcom/serenegiant/media/MediaData;

    iget v4, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->FRAME_SZ:I

    invoke-direct {v3, v4}, Lcom/serenegiant/media/MediaData;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCapturing()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    return v0
.end method

.method public isRecorderStarted()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    return v0
.end method

.method protected obtain(I)Lcom/serenegiant/media/MediaData;
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    .line 439
    new-instance p1, Lcom/serenegiant/media/MediaData;

    iget v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->FRAME_SZ:I

    invoke-direct {p1, v1}, Lcom/serenegiant/media/MediaData;-><init>(I)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/media/MediaData;

    .line 442
    invoke-virtual {v1, p1}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    move-object p1, v1

    .line 444
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected offer(Lcom/serenegiant/media/MediaData;)Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/MediaData;

    .line 457
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->recycle(Lcom/serenegiant/media/MediaData;)V

    :cond_0
    move v0, p1

    :cond_1
    return v0
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    .line 303
    iput v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 304
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    const/4 v2, 0x1

    .line 305
    iput-boolean v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mWaitingKeyFrame:Z

    iput-boolean v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    .line 306
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0, v2, v0, v1}, Lcom/serenegiant/media/AbstractFakeEncoder;->callOnStartEncode(Landroid/view/Surface;IZ)V

    return-void
.end method

.method public queueFrame(Ljava/nio/ByteBuffer;IIJI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    invoke-virtual {p0, p3}, Lcom/serenegiant/media/AbstractFakeEncoder;->obtain(I)Lcom/serenegiant/media/MediaData;

    move-result-object v7

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 287
    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/media/MediaData;->set(Ljava/nio/ByteBuffer;IIJI)V

    .line 288
    invoke-virtual {p0, v7}, Lcom/serenegiant/media/AbstractFakeEncoder;->offer(Lcom/serenegiant/media/MediaData;)Z

    move-result p1

    return p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected recycle(Lcom/serenegiant/media/MediaData;)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->MAX_POOL_SZ:I

    if-ge v1, v2, :cond_0

    .line 494
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_0
    iget p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->cnt:I

    .line 499
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 221
    :try_start_1
    sget-object v1, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainThread:Ljava/lang/Thread;

    .line 224
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->internalRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public signalEndOfInputStream()V
    .locals 8

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->obtain(I)Lcom/serenegiant/media/MediaData;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->getInputPTSUs()J

    move-result-wide v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x4

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/serenegiant/media/MediaData;->set(Ljava/nio/ByteBuffer;IIJI)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->offer(Lcom/serenegiant/media/MediaData;)Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->initPool()V

    .line 320
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mDrainThread:Ljava/lang/Thread;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z
    .locals 2

    .line 619
    invoke-interface {p1, p0, p2}, Lcom/serenegiant/media/IRecorder;->addTrack(Lcom/serenegiant/media/Encoder;Landroid/media/MediaFormat;)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mTrackIndex:I

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    .line 621
    iput-boolean p2, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorderStarted:Z

    .line 622
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->start(Lcom/serenegiant/media/Encoder;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 625
    sget-object p2, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to start muxer mTrackIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_0
    sget-object p2, Lcom/serenegiant/media/AbstractFakeEncoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to addTrack: mTrackIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->removeEncoder(Lcom/serenegiant/media/Encoder;)V

    .line 631
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->isStarted()Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    .line 340
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 343
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRequestStop:Z

    .line 344
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->signalEndOfInputStream()V

    .line 345
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 346
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

    .line 640
    iget-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz p1, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/serenegiant/media/AbstractFakeEncoder;->internalRelease()V

    :cond_0
    return-void
.end method

.method protected waitFrame(J)Lcom/serenegiant/media/MediaData;
    .locals 2

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/media/MediaData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
