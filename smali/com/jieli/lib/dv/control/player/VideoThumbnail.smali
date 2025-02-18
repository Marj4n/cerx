.class public Lcom/jieli/lib/dv/control/player/VideoThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

.field private mNativeContext:J

.field private mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

.field private mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 16
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 17
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 19
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 20
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeInit()Z

    return-void
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeCreateClient(ILjava/lang/String;)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeIsReceiving()Z
.end method

.method private native nativeRelease()V
.end method

.method private onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .line 47
    monitor-enter p0

    const/4 v0, 0x0

    .line 48
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 49
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    .line 38
    new-instance v0, Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/PictureInfo;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeCreateClient(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 70
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 71
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 72
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mNativeContext:J

    return-void
.end method

.method public isReceiving()Z
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeIsReceiving()Z

    move-result v0

    return v0
.end method

.method protected onFrameReceived(I[B)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 109
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1, p2, v0}, Lcom/jieli/lib/dv/control/player/OnFrameListener;->onFrame([BLcom/jieli/lib/dv/control/model/PictureInfo;)V

    :cond_0
    return-void
.end method

.method protected onMediaMetaUpdate(IIIIILjava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/PictureInfo;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setWidth(I)V

    .line 123
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setHeight(I)V

    .line 124
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {p1, p6}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setPath(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {p1, p3}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setFrameRate(I)V

    .line 126
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {p1, p4}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setSampleRate(I)V

    .line 127
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {p1, p5}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setDuration(I)V

    return-void
.end method

.method protected onThumbnailEnd()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setLast(Z)V

    :cond_0
    return-void
.end method

.method protected onTimeUpdate(IIIIII)V
    .locals 8

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    add-int/lit16 v1, p1, 0x7df

    add-int/lit8 v2, p2, -0x1

    move-object v0, v7

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 140
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 141
    iget-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setTime(J)V

    :cond_0
    return-void
.end method

.method public release()Z
    .locals 2

    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 60
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 61
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mNativeContext:J

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setOnCompletedListener(Lcom/jieli/lib/dv/control/player/OnCompletedListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    return-void
.end method

.method public setOnFrameListener(Lcom/jieli/lib/dv/control/player/OnFrameListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    return-void
.end method
