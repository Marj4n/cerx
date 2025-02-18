.class public final Lcom/jieli/lib/dv/control/player/PlaybackStream;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/player/PlaybackStream$Mode;,
        Lcom/jieli/lib/dv/control/player/PlaybackStream$BufferingState;
    }
.end annotation


# static fields
.field private static DEFAULT_CHANNEL:I

.field static final tag:Ljava/lang/String;


# instance fields
.field private mCurrentFrames:I

.field private mCurrentMode:I

.field private final mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDownloadDuration:F

.field private mFileStartTime:J

.field private mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

.field private mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

.field private mNativeContext:J

.field private mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

.field private mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

.field private mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

.field private mPlaybackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/lib/dv/control/player/OnPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->DEFAULT_CHANNEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    .line 68
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 69
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeInit()Z

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    .line 71
    new-instance v0, Lcom/jieli/lib/dv/control/gps/GpsParser;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    return p0
.end method

.method static synthetic access$202(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    return p0
.end method

.method static synthetic access$400(F)F
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->round(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnBufferingListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    return-object p0
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeConfigureRtp([I[ILjava/lang/String;)Z
.end method

.method private native nativeCreateClient(ILjava/lang/String;I)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeIsBuffering()Z
.end method

.method private native nativeIsPausing()Z
.end method

.method private native nativeIsPlaying()Z
.end method

.method private native nativePause()Z
.end method

.method private native nativePlay()Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetMode(I)Z
.end method

.method private native nativeSetMute(Z)V
.end method

.method private native nativeSetQueueSize(I)V
.end method

.method private native nativeSetSoTimeout(I)Z
.end method

.method private native nativeToggleBuffer(I)Z
.end method

.method private static round(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    .line 318
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private setQueueSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 620
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetQueueSize(I)V

    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue size error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()Z
    .locals 5

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 120
    monitor-exit p0

    return v0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configure(II)Z
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    .line 610
    invoke-virtual {p0, v1, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->configure([I[I)Z

    move-result p1

    return p1

    .line 609
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public configure([I[I)Z
    .locals 1

    const-string v0, "127.0.0.1"

    .line 597
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeConfigureRtp([I[ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected create(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;I)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->create()Z

    .line 108
    :cond_0
    iput p3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeCreateClient(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 96
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public destroy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->release()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 293
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 294
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    return-void
.end method

.method public getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamMode()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 539
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsBuffering()Z

    move-result v0

    return v0
.end method

.method protected isReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreamPausing()Z
    .locals 1

    .line 519
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsPausing()Z

    move-result v0

    return v0
.end method

.method public isStreamReceiving()Z
    .locals 1

    .line 511
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsPlaying()Z

    move-result v0

    return v0
.end method

.method protected onBuffering(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;

    invoke-direct {v0, p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 142
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 155
    new-instance v2, Lcom/jieli/lib/dv/control/player/PlaybackStream$2;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/jieli/lib/dv/control/player/PlaybackStream$2;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;Lcom/jieli/lib/dv/control/player/IPlayerListener;ILjava/lang/String;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 143
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected onFileEnd()V
    .locals 1

    const/4 v0, 0x6

    .line 476
    invoke-virtual {p0, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->onStateChanged(I)V

    return-void
.end method

.method protected onFrameReceived(I[BJJ)V
    .locals 12

    move-object v0, p0

    move v9, p1

    move-object v10, p2

    .line 239
    iget-object v1, v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-nez v1, :cond_0

    return-void

    .line 242
    :cond_0
    iget v2, v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v4, 0x3

    if-ne v4, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-eq v9, v2, :cond_4

    if-eq v9, v3, :cond_3

    if-eq v9, v4, :cond_3

    const/16 v1, 0x8

    if-eq v9, v1, :cond_2

    goto :goto_3

    .line 259
    :cond_2
    iget-object v1, v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v1, :cond_6

    .line 260
    invoke-virtual {v1, p2}, Lcom/jieli/lib/dv/control/gps/GpsParser;->parse([B)Z

    goto :goto_3

    .line 254
    :cond_3
    iget-object v1, v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 255
    sget v3, Lcom/jieli/lib/dv/control/player/PlaybackStream;->DEFAULT_CHANNEL:I

    move v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onVideo(II[BJJ)V

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 249
    sget v3, Lcom/jieli/lib/dv/control/player/PlaybackStream;->DEFAULT_CHANNEL:I

    move v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onAudio(II[BJJ)V

    goto :goto_1

    .line 243
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v1, p1, p2}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onReceived(I[B)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onMediaMetaUpdate(IIIIILjava/lang/String;)V
    .locals 1

    .line 434
    new-instance v0, Lcom/jieli/lib/dv/control/model/MediaInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/MediaInfo;-><init>()V

    .line 435
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setWidth(I)V

    .line 436
    invoke-virtual {v0, p2}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setHeight(I)V

    .line 437
    invoke-virtual {v0, p6}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setPath(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p3}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setFrameRate(I)V

    .line 439
    invoke-virtual {v0, p4}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setSampleRate(I)V

    .line 440
    invoke-virtual {v0, p5}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setDuration(I)V

    .line 441
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    .line 443
    iget p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 p2, 0x2

    if-eq p2, p1, :cond_2

    const/4 p2, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 455
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    .line 456
    invoke-interface {p2, v0}, Lcom/jieli/lib/dv/control/player/OnPlaybackListener;->onUpdate(Lcom/jieli/lib/dv/control/model/MediaInfo;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz p1, :cond_3

    .line 460
    invoke-interface {p1}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onStart()V

    goto :goto_2

    .line 444
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz p1, :cond_3

    .line 445
    new-instance p1, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;

    invoke-direct {p1, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onPlayFileEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 484
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    .line 485
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 191
    new-instance v2, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;Lcom/jieli/lib/dv/control/player/IPlayerListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    .line 178
    new-instance p1, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;

    invoke-direct {p1, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onTimeUpdate(IIIIII)V
    .locals 8

    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    add-int/lit16 v1, p1, 0x7df

    add-int/lit8 v2, p2, -0x1

    move-object v0, v7

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 332
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 333
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 334
    iget p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    const-wide/16 p2, 0x3e8

    if-nez p1, :cond_1

    .line 361
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    div-long/2addr p4, p2

    iput-wide p4, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    .line 363
    :cond_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz p1, :cond_3

    .line 364
    iget p4, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    .line 366
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    div-long/2addr p4, p2

    iget-wide p2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x1

    add-long/2addr p4, p2

    long-to-int p2, p4

    invoke-interface {p1, p2}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onProgress(I)V

    goto :goto_1

    .line 335
    :cond_2
    :goto_0
    iget p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-lez p1, :cond_4

    .line 338
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz p1, :cond_3

    .line 339
    iget p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    .line 340
    new-instance p1, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;

    invoke-direct {p1, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void

    .line 336
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Download duration "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pauseStream()Z
    .locals 1

    .line 503
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativePause()Z

    move-result v0

    return v0
.end method

.method public playStream()Z
    .locals 1

    .line 495
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativePlay()Z

    move-result v0

    return v0
.end method

.method public registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public release()Z
    .locals 2

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 276
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    .line 278
    :cond_0
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    .line 279
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    .line 282
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->close()Z

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 286
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    const/4 v0, 0x1

    .line 287
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 288
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadDuration(I)V
    .locals 3

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 388
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    return-void

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setFrameRate(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setMute(Z)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetMute(Z)V

    return-void
.end method

.method public setOnBufferingListener(Lcom/jieli/lib/dv/control/player/OnBufferingListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    return-void
.end method

.method public setOnDownloadListener(Lcom/jieli/lib/dv/control/player/OnDownloadListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-void
.end method

.method public setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/gps/GpsParser;->setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V

    :cond_0
    return-void
.end method

.method public setOnProgressListener(Lcom/jieli/lib/dv/control/player/OnProgressListener;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    return-void
.end method

.method protected setResolution(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setSampleRate(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSoTimeout(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 568
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetSoTimeout(I)Z

    move-result p1

    return p1

    .line 567
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout can\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setStreamMode(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    .line 549
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetMode(I)Z

    move-result p1

    return p1
.end method

.method public toggleBuffering(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 529
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeToggleBuffer(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    .line 531
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeToggleBuffer(I)Z

    move-result p1

    return p1
.end method

.method public unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method
