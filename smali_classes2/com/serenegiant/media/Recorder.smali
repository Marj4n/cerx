.class public abstract Lcom/serenegiant/media/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Lcom/serenegiant/media/IRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/Recorder$EosHandler;
    }
.end annotation


# static fields
.field public static final CHECK_INTERVAL:J = 0xafc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAudioEncoder:Lcom/serenegiant/media/Encoder;

.field private volatile mAudioStarted:Z

.field private final mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

.field private volatile mEncoderCount:I

.field private mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

.field protected mMuxer:Lcom/serenegiant/media/IMuxer;

.field private volatile mReleased:Z

.field protected mStartTime:J

.field private volatile mStartedCount:I

.field private mState:I

.field protected mVideoEncoder:Lcom/serenegiant/media/Encoder;

.field private volatile mVideoStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/serenegiant/media/Recorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder$RecorderCallback;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

    .line 68
    monitor-enter p0

    const/4 p1, 0x0

    .line 69
    :try_start_0
    iput p1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected static createMuxer(I)Lcom/serenegiant/media/IMuxer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget-boolean v0, Lcom/serenegiant/media/VideoConfig;->sUseMediaMuxer:Z

    if-eqz v0, :cond_1

    .line 628
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 630
    new-instance v0, Lcom/serenegiant/media/MediaMuxerWrapper;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/media/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;I)V

    goto :goto_0

    .line 633
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "createMuxer from fd does not support now"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :cond_1
    new-instance v0, Lcom/serenegiant/media/VideoMuxer;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/VideoMuxer;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method protected static createMuxer(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Lcom/serenegiant/media/IMuxer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    sget-boolean v0, Lcom/serenegiant/media/VideoConfig;->sUseMediaMuxer:Z

    const-string v1, "rw"

    if-eqz v0, :cond_2

    .line 647
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Lcom/serenegiant/media/MediaMuxerWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 649
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/serenegiant/media/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;I)V

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 653
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    new-instance v3, Lcom/serenegiant/media/MediaMuxerWrapper;

    invoke-direct {v3, v0, v2}, Lcom/serenegiant/media/MediaMuxerWrapper;-><init>(Ljava/lang/String;I)V

    move-object v0, v3

    goto :goto_0

    .line 659
    :cond_1
    sget-object v0, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v2, "cant\'t write to the file, try to use VideoMuxer instead"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 664
    new-instance v0, Lcom/serenegiant/media/VideoMuxer;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 665
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/serenegiant/media/VideoMuxer;-><init>(I)V

    :cond_3
    return-object v0
.end method

.method protected static createMuxer(Ljava/lang/String;)Lcom/serenegiant/media/IMuxer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    sget-boolean v0, Lcom/serenegiant/media/VideoConfig;->sUseMediaMuxer:Z

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Lcom/serenegiant/media/MediaMuxerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/media/MediaMuxerWrapper;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 619
    :cond_0
    new-instance v0, Lcom/serenegiant/media/VideoMuxer;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/VideoMuxer;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addEncoder(Lcom/serenegiant/media/Encoder;)V
    .locals 3

    monitor-enter p0

    .line 257
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_7

    .line 261
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    .line 264
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    instance-of v0, p1, Lcom/serenegiant/media/IAudioEncoder;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-nez v0, :cond_0

    .line 268
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    goto :goto_0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio encoder already added."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/serenegiant/media/IVideoEncoder;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-nez v0, :cond_2

    .line 273
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    goto :goto_1

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Video encoder already added."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    add-int/2addr p1, v1

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mEncoderCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    monitor-exit p0

    return-void

    .line 262
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "addEncoder already prepared/started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 264
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTrack(Lcom/serenegiant/media/Encoder;Landroid/media/MediaFormat;)I
    .locals 2

    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_1

    .line 386
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0, p2}, Lcom/serenegiant/media/IMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    goto :goto_0

    .line 387
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muxer not ready:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 384
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "already released"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 391
    :try_start_1
    sget-object v0, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v1, "addTrack:"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    .line 393
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/Recorder;->removeEncoder(Lcom/serenegiant/media/Encoder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    .line 396
    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected callOnError(Ljava/lang/Exception;)V
    .locals 2

    .line 452
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    invoke-interface {v0, p1}, Lcom/serenegiant/media/IRecorder$RecorderCallback;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    sget-object v0, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v1, "onError:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnPrepared()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

    if-eqz v0, :cond_0

    .line 424
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder$RecorderCallback;->onPrepared(Lcom/serenegiant/media/IRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    sget-object v1, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v2, "onPrepared:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStarted()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder$RecorderCallback;->onStarted(Lcom/serenegiant/media/IRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 436
    sget-object v1, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v2, "onStarted:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStopped()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mCallback:Lcom/serenegiant/media/IRecorder$RecorderCallback;

    if-eqz v0, :cond_0

    .line 444
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder$RecorderCallback;->onStopped(Lcom/serenegiant/media/IRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcom/serenegiant/media/Recorder;->TAG:Ljava/lang/String;

    const-string v2, "onStopped:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract check()Z
.end method

.method public frameAvailableSoon()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->frameAvailableSoon()V

    :cond_0
    return-void
.end method

.method public getAudioEncoder()Lcom/serenegiant/media/Encoder;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    instance-of v1, v0, Lcom/serenegiant/media/ISurfaceEncoder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/serenegiant/media/ISurfaceEncoder;

    .line 173
    invoke-interface {v0}, Lcom/serenegiant/media/ISurfaceEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMuxer()Lcom/serenegiant/media/IMuxer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoEncoder()Lcom/serenegiant/media/Encoder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    return-object v0
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    monitor-enter p0

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReleased()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    return v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStopped()Z
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStopping()Z
    .locals 2

    monitor-enter p0

    .line 199
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 3

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_3

    .line 103
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->prepare()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :cond_1
    monitor-enter p0

    const/4 v0, 0x2

    .line 117
    :try_start_2
    iput v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 118
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-virtual {p0}, Lcom/serenegiant/media/Recorder;->callOnPrepared()V

    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder;->callOnError(Ljava/lang/Exception;)V

    return-void

    .line 104
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/media/Recorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 106
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public release()V
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    .line 232
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->release()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->release()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v0}, Lcom/serenegiant/media/IMuxer;->release()V

    :cond_2
    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    .line 243
    iput-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    .line 244
    iput-object v0, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    return-void
.end method

.method public declared-synchronized removeEncoder(Lcom/serenegiant/media/Encoder;)V
    .locals 3

    monitor-enter p0

    .line 286
    :try_start_0
    instance-of v0, p1, Lcom/serenegiant/media/IVideoEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 287
    iput-object v1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    .line 288
    iput-boolean v2, p0, Lcom/serenegiant/media/Recorder;->mVideoStarted:Z

    .line 290
    :cond_0
    instance-of p1, p1, Lcom/serenegiant/media/AudioEncoder;

    if-eqz p1, :cond_1

    .line 291
    iput-object v1, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    .line 292
    iput-boolean v2, p0, Lcom/serenegiant/media/Recorder;->mAudioStarted:Z

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr p1, v2

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mEncoderCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMuxer(Lcom/serenegiant/media/IMuxer;)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mEncoderCount:I

    .line 81
    monitor-enter p0

    const/4 p1, 0x1

    .line 82
    :try_start_0
    iput p1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 83
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized start(Lcom/serenegiant/media/Encoder;)Z
    .locals 6

    monitor-enter p0

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_9

    .line 309
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 312
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 313
    iput-boolean v2, p0, Lcom/serenegiant/media/Recorder;->mVideoStarted:Z

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 315
    iput-boolean v2, p0, Lcom/serenegiant/media/Recorder;->mAudioStarted:Z

    .line 317
    :cond_1
    :goto_0
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    .line 318
    :goto_1
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v0, 0x0

    const/4 v3, 0x4

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/serenegiant/media/Recorder;->mEncoderCount:I

    if-lez p1, :cond_6

    .line 319
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/serenegiant/media/Recorder;->mVideoStarted:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/serenegiant/media/Recorder;->mAudioStarted:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    .line 323
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {p1}, Lcom/serenegiant/media/IMuxer;->start()V

    .line 324
    iput v3, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 326
    invoke-virtual {p0}, Lcom/serenegiant/media/Recorder;->callOnStarted()V

    .line 328
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    if-eqz p1, :cond_6

    .line 329
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    sget-wide v4, Lcom/serenegiant/media/VideoConfig;->maxDuration:J

    invoke-virtual {p1, v4, v5}, Lcom/serenegiant/media/Recorder$EosHandler;->setDuration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    const-wide/16 v4, 0x64

    .line 333
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 339
    :catch_0
    :cond_6
    :goto_4
    :try_start_2
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    monitor-exit p0

    return v2

    .line 310
    :cond_8
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer has not prepared:state="

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_4

    .line 129
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 132
    iput v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/media/Recorder;->mStartTime:J

    .line 136
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->start()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->start()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    if-nez v0, :cond_2

    .line 141
    invoke-static {p0}, Lcom/serenegiant/media/Recorder$EosHandler;->createHandler(Lcom/serenegiant/media/Recorder;)Lcom/serenegiant/media/Recorder$EosHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    invoke-virtual {v0}, Lcom/serenegiant/media/Recorder$EosHandler;->startCheckFreeSpace()V

    return-void

    .line 130
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start:not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 133
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop(Lcom/serenegiant/media/Encoder;)V
    .locals 3

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 349
    iget-boolean p1, p0, Lcom/serenegiant/media/Recorder;->mVideoStarted:Z

    if-eqz p1, :cond_1

    .line 350
    iput-boolean v1, p0, Lcom/serenegiant/media/Recorder;->mVideoStarted:Z

    .line 351
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    iget-boolean p1, p0, Lcom/serenegiant/media/Recorder;->mAudioStarted:Z

    if-eqz p1, :cond_1

    .line 355
    iput-boolean v1, p0, Lcom/serenegiant/media/Recorder;->mAudioStarted:Z

    .line 356
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    .line 359
    :cond_1
    :goto_0
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mEncoderCount:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    if-gtz p1, :cond_3

    .line 360
    iget p1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 362
    iget-object p1, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {p1}, Lcom/serenegiant/media/IMuxer;->stop()V

    .line 364
    :cond_2
    iput v2, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    .line 366
    iput-object p1, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopRecording()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/serenegiant/media/Recorder$EosHandler;->terminate()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/serenegiant/media/Recorder;->mEosHandler:Lcom/serenegiant/media/Recorder$EosHandler;

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iput v1, p0, Lcom/serenegiant/media/Recorder;->mState:I

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mAudioEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->stop()V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mVideoEncoder:Lcom/serenegiant/media/Encoder;

    if-eqz v0, :cond_3

    .line 164
    invoke-interface {v0}, Lcom/serenegiant/media/Encoder;->stop()V

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/serenegiant/media/Recorder;->callOnStopped()V

    return-void

    .line 157
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 159
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 410
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/media/Recorder;->mReleased:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/serenegiant/media/Recorder;->mStartedCount:I

    if-lez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/serenegiant/media/Recorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0, p1, p2, p3}, Lcom/serenegiant/media/IMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/Recorder;->callOnError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
