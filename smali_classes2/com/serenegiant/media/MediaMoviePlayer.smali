.class public Lcom/serenegiant/media/MediaMoviePlayer;
.super Ljava/lang/Object;
.source "MediaMoviePlayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final REQ_NON:I = 0x0

.field private static final REQ_PAUSE:I = 0x5

.field private static final REQ_PREPARE:I = 0x1

.field private static final REQ_QUIT:I = 0x9

.field private static final REQ_RESUME:I = 0x6

.field private static final REQ_SEEK:I = 0x3

.field private static final REQ_START:I = 0x2

.field private static final REQ_STOP:I = 0x4

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_STOP:I = 0x0

.field private static final TAG_STATIC:Ljava/lang/String; = "MediaMoviePlayer:"

.field private static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioChannels:I

.field private final mAudioEnabled:Z

.field private mAudioInputBufSize:I

.field private mAudioInputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioInputDone:Z

.field private mAudioMediaCodec:Landroid/media/MediaCodec;

.field protected mAudioMediaExtractor:Landroid/media/MediaExtractor;

.field private mAudioOutTempBuf:[B

.field private mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioOutputDone:Z

.field private mAudioSampleRate:I

.field private mAudioStartTime:J

.field private final mAudioSync:Ljava/lang/Object;

.field private final mAudioTask:Ljava/lang/Runnable;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private volatile mAudioTrackIndex:I

.field private mBitrate:I

.field private final mCallback:Lcom/serenegiant/media/IFrameCallback;

.field private mDuration:J

.field private mFrameRate:F

.field private mHasAudio:Z

.field private volatile mIsRunning:Z

.field protected mMetadata:Landroid/media/MediaMetadataRetriever;

.field private final mMoviePlayerTask:Ljava/lang/Runnable;

.field private final mOutputSurface:Landroid/view/Surface;

.field private mRequest:I

.field private mRequestTime:J

.field private mRotation:I

.field private mSource:Ljava/lang/Object;

.field private mState:I

.field private final mSync:Ljava/lang/Object;

.field private mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoHeight:I

.field private mVideoInputBuffers:[Ljava/nio/ByteBuffer;

.field private mVideoInputDone:Z

.field private mVideoMediaCodec:Landroid/media/MediaCodec;

.field protected mVideoMediaExtractor:Landroid/media/MediaExtractor;

.field private mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mVideoOutputDone:Z

.field private mVideoStartTime:J

.field private final mVideoSync:Ljava/lang/Object;

.field private final mVideoTask:Ljava/lang/Runnable;

.field private volatile mVideoTrackIndex:I

.field private mVideoWidth:I

.field private previousAudioPresentationTimeUs:J

.field private previousVideoPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lcom/serenegiant/media/IFrameCallback;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaMoviePlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoSync:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 269
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousVideoPresentationTimeUs:J

    .line 279
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSync:Ljava/lang/Object;

    .line 286
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousAudioPresentationTimeUs:J

    .line 302
    new-instance v0, Lcom/serenegiant/media/MediaMoviePlayer$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaMoviePlayer$1;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMoviePlayerTask:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/serenegiant/media/MediaMoviePlayer$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaMoviePlayer$2;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    .line 383
    new-instance v0, Lcom/serenegiant/media/MediaMoviePlayer$3;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaMoviePlayer$3;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 64
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mOutputSurface:Landroid/view/Surface;

    .line 65
    iput-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    .line 66
    iput-boolean p3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioEnabled:Z

    .line 67
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMoviePlayerTask:Ljava/lang/Runnable;

    iget-object p3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 68
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 70
    :try_start_0
    iget-boolean p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 74
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "outputSurface and callback should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    return-void
.end method

.method static synthetic access$102(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleInputVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/serenegiant/media/MediaMoviePlayer;)Lcom/serenegiant/media/IFrameCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/serenegiant/media/MediaMoviePlayer;Lcom/serenegiant/media/IFrameCallback;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleOutputVideo(Lcom/serenegiant/media/IFrameCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleInputAudio()V

    return-void
.end method

.method static synthetic access$1900(Lcom/serenegiant/media/MediaMoviePlayer;Lcom/serenegiant/media/IFrameCallback;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleOutputAudio(Lcom/serenegiant/media/IFrameCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/media/MediaMoviePlayer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/serenegiant/media/MediaMoviePlayer;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/serenegiant/media/MediaMoviePlayer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    return p0
.end method

.method static synthetic access$302(Lcom/serenegiant/media/MediaMoviePlayer;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    return p1
.end method

.method static synthetic access$402(Lcom/serenegiant/media/MediaMoviePlayer;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processStop(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPrepared(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPlaying(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPaused(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final handleInputAudio()V
    .locals 10

    .line 936
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 941
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 945
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 948
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 955
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 956
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 957
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleInputVideo()V
    .locals 10

    .line 859
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 864
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 871
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 878
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 879
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 880
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleLoop(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 1

    .line 820
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 825
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    if-eqz p1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    :cond_0
    return-void

    .line 825
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final handleOutputAudio(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 8

    .line 963
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    if-nez v0, :cond_6

    .line 964
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 968
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 971
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_5

    .line 977
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_4

    .line 978
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v1, v0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_write_audio(Ljava/nio/ByteBuffer;IIJ)Z

    .line 980
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {p1, v1, v2}, Lcom/serenegiant/media/IFrameCallback;->onFrameAvailable(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 981
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSync:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioStartTime:J

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->adjustPresentationTime(Ljava/lang/Object;JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioStartTime:J

    .line 983
    :cond_4
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 984
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 987
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    .line 988
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 989
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 974
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from audio decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method private final handleOutputVideo(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 10

    .line 888
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    if-nez v0, :cond_7

    .line 889
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 893
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 896
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_6

    .line 903
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_5

    .line 904
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v1, v0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v4, p0

    .line 905
    invoke-virtual/range {v4 .. v9}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_write_video(Ljava/nio/ByteBuffer;IIJ)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 908
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {p1, v4, v5}, Lcom/serenegiant/media/IFrameCallback;->onFrameAvailable(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 909
    iget-object v5, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoSync:Ljava/lang/Object;

    iget-wide v6, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoStartTime:J

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/serenegiant/media/MediaMoviePlayer;->adjustPresentationTime(Ljava/lang/Object;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoStartTime:J

    .line 912
    :cond_5
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 913
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_0
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    .line 917
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 918
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 899
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from video decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method private final handlePause()V
    .locals 0

    return-void
.end method

.method private final handlePrepare(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    if-nez v1, :cond_7

    .line 558
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    .line 559
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 560
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 561
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 562
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 567
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 569
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 570
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 574
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->updateMovieInfo()V

    .line 576
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_prepare_video(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 578
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioEnabled:Z

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_prepare_audio(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    .line 580
    :cond_2
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mHasAudio:Z

    .line 581
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v0, :cond_4

    goto :goto_2

    .line 582
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No video and audio track found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_1
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 586
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-interface {p1}, Lcom/serenegiant/media/IFrameCallback;->onPrepared()V

    return-void

    :catchall_0
    move-exception p1

    .line 586
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 572
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown source type:source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 558
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private final handleResume()V
    .locals 0

    return-void
.end method

.method private final handleSeek(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 806
    :cond_0
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 808
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 810
    :cond_1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v0, :cond_2

    .line 811
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 812
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    const-wide/16 p1, -0x1

    .line 814
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    return-void
.end method

.method private final handleStart()V
    .locals 6

    .line 711
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x2

    .line 714
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 715
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 717
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    :cond_0
    const-wide/16 v0, -0x1

    .line 719
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousAudioPresentationTimeUs:J

    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousVideoPresentationTimeUs:J

    .line 720
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 722
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    iget v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    invoke-virtual {p0, v0, v4}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_start_video(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    .line 726
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 727
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    .line 728
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 730
    :cond_1
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 731
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    const-string v5, "VideoTask"

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 733
    :goto_0
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 734
    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v2, :cond_4

    .line 735
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    invoke-virtual {p0, v2, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_start_audio(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 737
    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    .line 738
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 739
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    .line 740
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 742
    :cond_3
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 743
    new-instance v3, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    const-string v2, "AudioTask"

    invoke-direct {v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 745
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    if-eqz v3, :cond_6

    .line 746
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_6
    return-void

    .line 713
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 715
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final handleStop()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    monitor-enter v0

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_stop_video()V

    const/4 v1, -0x1

    .line 1045
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 1046
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1047
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    monitor-enter v2

    .line 1048
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_stop_audio()V

    .line 1049
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    .line 1050
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1051
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1053
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1054
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 1057
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1058
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1059
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1063
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    .line 1066
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1067
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    .line 1069
    :cond_3
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1070
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    .line 1071
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    .line 1072
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_4

    .line 1073
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1074
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 1076
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1077
    :try_start_2
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    const/4 v1, 0x0

    .line 1078
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 1079
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1080
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-interface {v0}, Lcom/serenegiant/media/IFrameCallback;->onFinished()V

    return-void

    :catchall_0
    move-exception v1

    .line 1079
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 1050
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 1046
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private final processPaused(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 536
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleResume()V

    goto :goto_0

    .line 524
    :cond_2
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    .line 521
    :cond_3
    iget-wide v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    .line 539
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 540
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr v0, v1

    .line 541
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 519
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final processPlaying(I)Z
    .locals 2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 500
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleLoop(Lcom/serenegiant/media/IFrameCallback;)V

    goto :goto_0

    .line 494
    :pswitch_0
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handlePause()V

    goto :goto_0

    .line 491
    :pswitch_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    .line 488
    :pswitch_2
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 486
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 503
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr p1, v1

    .line 505
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final processPrepared(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 465
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 467
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 455
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 451
    :cond_3
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStart()V

    :goto_0
    const/4 p1, 0x1

    .line 470
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr p1, v1

    .line 472
    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private final processStop(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 433
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handlePrepare(Ljava/lang/Object;)V

    .line 436
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 437
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr v0, v1

    .line 438
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method protected static final selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 4

    .line 1115
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1119
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 1120
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
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
.method protected adjustPresentationTime(Ljava/lang/Object;JJ)J
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    .line 1024
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p2

    sub-long v4, p4, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 1026
    monitor-enter p1

    .line 1028
    :try_start_0
    div-long v6, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {p1, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 1031
    :catch_0
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1033
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 1032
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit p1

    goto :goto_4

    .line 1033
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    :goto_4
    return-wide p2

    .line 1037
    :cond_3
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method public final getBitRate()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    return v0
.end method

.method public final getDurationUs()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    return-wide v0
.end method

.method public final getFramerate()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mFrameRate:F

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    return v0
.end method

.method public final getRotation()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    return v0
.end method

.method public final hasAudio()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mHasAudio:Z

    return v0
.end method

.method protected internal_prepare_audio(Ljava/lang/Object;)I
    .locals 13

    .line 634
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 636
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 637
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_0
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 639
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 648
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    const-string v0, "audio/"

    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaMoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 650
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 651
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "channel-count"

    .line 652
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    const-string v0, "sample-rate"

    .line 653
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    .line 654
    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/16 v2, 0xc

    :goto_1
    const/4 v6, 0x2

    invoke-static {v0, v2, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const-string v2, "max-input-size"

    .line 657
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-lez v0, :cond_3

    mul-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    move v0, p1

    .line 658
    :goto_2
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    if-le v0, p1, :cond_4

    .line 659
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 660
    :cond_4
    iget p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    mul-int/lit8 p1, p1, 0x2

    .line 661
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 664
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v7, 0x3

    iget v8, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    if-ne v0, v4, :cond_5

    const/4 v9, 0x4

    goto :goto_3

    :cond_5
    const/16 v9, 0xc

    :goto_3
    const/4 v10, 0x2

    iget v11, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    const/4 v12, 0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 673
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    const-string v2, "failed to start audio track playing"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    const/4 p1, 0x0

    .line 675
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_4

    .line 646
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown source type:source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_7
    :goto_4
    return v1
.end method

.method protected internal_prepare_video(Ljava/lang/Object;)I
    .locals 4

    .line 597
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 599
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 600
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_0
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    .line 602
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 611
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    const-string v0, "video/"

    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaMoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 613
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 614
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "width"

    .line 615
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    const-string v0, "height"

    .line 616
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    const-string v0, "durationUs"

    .line 617
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    goto :goto_1

    .line 609
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown source type:source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return v1
.end method

.method protected internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z
    .locals 9

    .line 842
    :cond_0
    iget-boolean p6, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz p6, :cond_3

    const-wide/16 v0, 0x2710

    .line 843
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 p6, -0x1

    if-ne v3, p6, :cond_1

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_0

    .line 847
    aget-object p3, p3, v3

    const/4 p6, 0x0

    invoke-virtual {p2, p3, p6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v6, p4

    .line 849
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 851
    :cond_2
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->advance()Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected internal_start_audio(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 781
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "mime"

    .line 782
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 784
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 785
    :try_start_1
    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 786
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 789
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 790
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-gtz p1, :cond_0

    .line 792
    iget p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 794
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 796
    :goto_0
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected internal_start_video(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 758
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "mime"

    .line 759
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 761
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 762
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mOutputSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 763
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 766
    :goto_0
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v0
.end method

.method protected internal_stop_audio()V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1093
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 1095
    :cond_1
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    return-void
.end method

.method protected internal_stop_video()V
    .locals 0

    return-void
.end method

.method protected internal_write_audio(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    .line 1004
    iget-object p4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    array-length p4, p4

    if-ge p4, p3, :cond_0

    .line 1005
    new-array p4, p3, [B

    iput-object p4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    .line 1007
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1008
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1009
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1010
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    .line 1011
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    invoke-virtual {p1, p2, p4, p3}, Landroid/media/AudioTrack;->write([BII)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected internal_write_video(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final pause()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x5

    .line 197
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 198
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final play()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 154
    :cond_0
    iput v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 155
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final prepare(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 141
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 142
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 128
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 129
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final release()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->stop()V

    .line 220
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x9

    .line 221
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 222
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final resume()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x6

    .line 209
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 210
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final seek(J)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 167
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 168
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    .line 169
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stop()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 180
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 181
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
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

.method protected updateMovieInfo()V
    .locals 4

    const/4 v0, 0x0

    .line 684
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    const-wide/16 v0, 0x0

    .line 685
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    const/4 v0, 0x0

    .line 686
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mFrameRate:F

    .line 687
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 701
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 705
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    :cond_4
    return-void
.end method
