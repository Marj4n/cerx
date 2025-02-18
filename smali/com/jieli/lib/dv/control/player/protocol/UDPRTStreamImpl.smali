.class public Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# instance fields
.field private mNativeContext:J

.field private mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    .line 22
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 23
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeInit()Z

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-object p0
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeConfigureRtp([I[ILjava/lang/String;)Z
.end method

.method private native nativeCreateClient(ILjava/lang/String;Z)Z
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
.method public close()Z
    .locals 5

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 109
    monitor-exit p0

    return v0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected configure([I[I)Z
    .locals 1

    const-string v0, "127.0.0.1"

    .line 206
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeConfigureRtp([I[ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected create(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->create(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->create(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;Z)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeCreateClient(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mNativeContext:J

    return-void
.end method

.method public isReceiving()Z
    .locals 1

    .line 215
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeIsReceiving()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$1;-><init>(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;ILjava/lang/String;)V

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

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-eqz v0, :cond_2

    .line 44
    sget v2, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->DEFAULT_CHANNEL:I

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onVideo(II[BJJ)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-eqz v0, :cond_2

    .line 38
    sget v2, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->DEFAULT_CHANNEL:I

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

    .line 139
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;-><init>(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-void
.end method

.method protected release()Z
    .locals 2

    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 59
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mNativeContext:J

    .line 61
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFrameRate(I)Z
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeSetFrameRate(I)Z

    move-result p1

    return p1
.end method

.method protected setMute(Z)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeSetMute(Z)V

    return-void
.end method

.method public setResolution(II)Z
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeSetResolution(II)Z

    move-result p1

    return p1

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params illegal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSampleRate(I)Z
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeSetSampleRate(I)Z

    move-result p1

    return p1
.end method

.method protected setSoTimeout(I)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeSetTimeout(I)Z

    move-result p1

    return p1
.end method

.method public unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->mPlayerListener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    return-void
.end method

.method protected useDeviceTimestamp(Z)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->nativeUseDeviceTimestamp(Z)V

    return-void
.end method
