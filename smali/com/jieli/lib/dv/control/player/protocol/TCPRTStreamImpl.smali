.class public final Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# instance fields
.field private mNativeContext:J

.field private mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->tag:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 23
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeInit()Z

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-object p0
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeConfigureRtp([I[ILjava/lang/String;)Z
.end method

.method private native nativeCreateClient(Ljava/lang/String;I)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeIsReceiving()Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetFrameRate(I)Z
.end method

.method private native nativeSetMute(Z)V
.end method

.method private native nativeSetResolution(II)Z
.end method

.method private native nativeSetSampleRate(I)Z
.end method

.method private native nativeSetTimeout(I)Z
.end method

.method private native nativeUseDeviceTimestamp(Z)V
.end method


# virtual methods
.method protected close()Z
    .locals 5

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 45
    monitor-exit p0

    return v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected configure([I[I)Z
    .locals 1

    const-string v0, "127.0.0.1"

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeConfigureRtp([I[ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public create(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->create(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->create(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected create(ILjava/lang/String;Z)Z
    .locals 0

    .line 38
    invoke-direct {p0, p2, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeCreateClient(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mNativeContext:J

    return-void
.end method

.method protected isReceiving()Z
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeIsReceiving()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;-><init>(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFrameReceived(I[BJJ)V
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-eqz v0, :cond_2

    .line 118
    sget v2, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->DEFAULT_CHANNEL:I

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onVideo(II[BJJ)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-eqz v0, :cond_2

    .line 112
    sget v2, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->DEFAULT_CHANNEL:I

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onAudio(II[BJJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStateChanged(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;-><init>(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-void
.end method

.method protected release()Z
    .locals 2

    .line 131
    monitor-enter p0

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 133
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mNativeContext:J

    const/4 v0, 0x1

    .line 135
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFrameRate(I)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeSetFrameRate(I)Z

    move-result p1

    return p1
.end method

.method protected setMute(Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeSetMute(Z)V

    return-void
.end method

.method protected setResolution(II)Z
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeSetResolution(II)Z

    move-result p1

    return p1
.end method

.method protected setSampleRate(I)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeSetSampleRate(I)Z

    move-result p1

    return p1
.end method

.method protected setSoTimeout(I)Z
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeSetTimeout(I)Z

    move-result p1

    return p1
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-void
.end method

.method protected useDeviceTimestamp(Z)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->nativeUseDeviceTimestamp(Z)V

    return-void
.end method
