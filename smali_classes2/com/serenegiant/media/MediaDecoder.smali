.class public abstract Lcom/serenegiant/media/MediaDecoder;
.super Ljava/lang/Object;
.source "MediaDecoder.java"

# interfaces
.implements Lcom/serenegiant/media/IMediaCodec;


# static fields
.field private static final DEBUG:Z = false

.field protected static final STATE_INITIALIZED:I = 0x1

.field protected static final STATE_PAUSED:I = 0x4

.field protected static final STATE_PLAYING:I = 0x3

.field protected static final STATE_PREPARED:I = 0x2

.field protected static final STATE_UNINITIALIZED:I = 0x0

.field protected static final STATE_WAIT:I = 0x5

.field private static final TAG_STATIC:Ljava/lang/String;

.field private static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mBitRate:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

.field private mDuration:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mInputDone:Z

.field private volatile mIsRunning:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mOutputDone:Z

.field private final mPlaybackTask:Ljava/lang/Runnable;

.field private mRequestTime:J

.field private mStartTime:J

.field protected mState:I

.field private final mSync:Ljava/lang/Object;

.field private mTrackIndex:I

.field private presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/MediaDecoder;->TAG_STATIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 405
    new-instance v0, Lcom/serenegiant/media/MediaDecoder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaDecoder$1;-><init>(Lcom/serenegiant/media/MediaDecoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mPlaybackTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    return p0
.end method

.method static synthetic access$102(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$202(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/serenegiant/media/MediaDecoder;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/serenegiant/media/MediaDecoder;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/media/MediaDecoder;->handleSeek(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/serenegiant/media/MediaDecoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/serenegiant/media/MediaDecoder;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/serenegiant/media/MediaDecoder;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/serenegiant/media/MediaDecoder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_stop()V

    return-void
.end method

.method private final handleSeek(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 397
    iget-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    const-wide/16 p1, -0x1

    .line 399
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-void
.end method

.method private internal_release()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 370
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 374
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 378
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    :cond_2
    const/4 v0, -0x1

    .line 380
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    const-wide/16 v0, 0x0

    .line 381
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    return-void
.end method

.method private final internal_stop()V
    .locals 2

    .line 330
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    :cond_1
    const/4 v0, 0x2

    .line 337
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    :goto_0
    return-void
.end method

.method protected static final selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 4

    .line 662
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 666
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 667
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected adjustPresentationTime(JJ)J
    .locals 10

    .line 612
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMr1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/media/MediaDecoder;->adjustPresentationTimeAPI17(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    .line 616
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p1

    sub-long v4, p3, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 618
    iget-object v6, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 620
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    div-long v8, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {v7, v8, v9, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 624
    :catch_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    if-nez v4, :cond_1

    .line 625
    monitor-exit v6

    goto :goto_3

    .line 626
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 626
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_3
    return-wide p1

    .line 630
    :cond_3
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method protected adjustPresentationTimeAPI17(JJ)J
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    .line 637
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p1

    sub-long v4, p3, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 639
    iget-object v6, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 641
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    div-long v8, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {v7, v8, v9, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 645
    :catch_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    if-nez v4, :cond_0

    .line 646
    monitor-exit v6

    goto :goto_3

    .line 647
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 647
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_3
    return-wide p1

    .line 651
    :cond_2
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method protected callErrorHandler(Ljava/lang/Exception;)Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0, p0, p1}, Lcom/serenegiant/media/IMediaCodecCallback;->onError(Lcom/serenegiant/media/IMediaCodec;Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected callOnPrepared()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onPrepared(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 562
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnPrepared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnRelease()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 590
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onRelease(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 592
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnRelease"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStart()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 570
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onStart(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 572
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStart"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStop()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 580
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onStop(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 582
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    if-ltz p2, :cond_0

    const-string p2, "mime"

    .line 268
    invoke-virtual {p3, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    .line 270
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->getOutputSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 271
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public getBitRate()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    return v0
.end method

.method public getCallback()Lcom/serenegiant/media/IMediaCodecCallback;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    return-wide v0
.end method

.method protected abstract getOutputSurface()Landroid/view/Surface;
.end method

.method protected handleInput(J)J
    .locals 10

    .line 487
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 489
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-lez v6, :cond_0

    .line 492
    iget-object v3, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    const-wide/16 p1, -0x1

    :cond_1
    return-wide p1
.end method

.method protected abstract handleOutput(Ljava/nio/ByteBuffer;IIJ)Z
.end method

.method protected abstract handlePrepare(Landroid/media/MediaExtractor;)I
.end method

.method protected internal_HandleInput()V
    .locals 11

    .line 463
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 464
    iget-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    .line 468
    :cond_0
    iget-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 469
    invoke-virtual {p0, v2, v3}, Lcom/serenegiant/media/MediaDecoder;->handleInput(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    .line 477
    iget-object v4, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 480
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    :cond_2
    return-void
.end method

.method protected internal_handleOutput()V
    .locals 10

    .line 504
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_2
    if-gez v0, :cond_4

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 517
    :cond_3
    throw v1

    :cond_4
    const/4 v1, 0x0

    .line 520
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v3, 0x1

    if-lez v2, :cond_6

    .line 521
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v1, v0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/serenegiant/media/MediaDecoder;->handleOutput(Ljava/nio/ByteBuffer;IIJ)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 524
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 525
    invoke-interface {v2, p0, v4, v5}, Lcom/serenegiant/media/IMediaCodecCallback;->onFrameAvailable(Lcom/serenegiant/media/IMediaCodec;J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 527
    :cond_5
    iget-wide v4, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/serenegiant/media/MediaDecoder;->adjustPresentationTime(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    .line 531
    :cond_6
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 532
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 534
    iput-boolean v3, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public isPrepared()Z
    .locals 2

    .line 251
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 256
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 3

    .line 343
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 351
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    throw v0

    .line 347
    :cond_1
    iput v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataSource not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 215
    :cond_0
    throw v0

    .line 218
    :cond_1
    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 221
    :cond_2
    throw v0

    .line 226
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->handlePrepare(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    if-ltz v0, :cond_4

    .line 228
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 229
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "durationUs"

    .line 230
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    .line 231
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/serenegiant/media/MediaDecoder;->createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 233
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "track not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 236
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_5

    .line 237
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    const/4 v1, 0x0

    .line 238
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 240
    :cond_5
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 243
    :goto_0
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 244
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 245
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->callOnPrepared()V

    :cond_6
    return-void

    .line 241
    :cond_7
    throw v0
.end method

.method public release()V
    .locals 1

    .line 359
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->stop()V

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 362
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->callOnRelease()V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    return-void
.end method

.method public restart()V
    .locals 3

    .line 279
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 282
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/4 v1, 0x3

    .line 283
    iput v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 284
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 285
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 0

    .line 386
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-void
.end method

.method public setCallback(Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 196
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 198
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 199
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 200
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 202
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 206
    :cond_0
    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 181
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 183
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 184
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 185
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 186
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 189
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 190
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 145
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 146
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 147
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 148
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 149
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x1

    .line 150
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 153
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 154
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 163
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 165
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 166
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 167
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 168
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 172
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 111
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 112
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 114
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 115
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 116
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 120
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 129
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 132
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 133
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 134
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 138
    :cond_0
    throw p1
.end method

.method public start()V
    .locals 3

    .line 293
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 299
    :goto_0
    iput v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    .line 305
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    .line 306
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 307
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 308
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 309
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mPlaybackTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 317
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    .line 318
    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 319
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
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

.method protected updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    const/4 v0, 0x0

    .line 598
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    const/16 v0, 0x14

    .line 599
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    :cond_0
    return-void
.end method
