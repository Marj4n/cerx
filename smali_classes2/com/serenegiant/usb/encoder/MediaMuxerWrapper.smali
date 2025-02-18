.class public Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DIR_NAME:Ljava/lang/String; = "USBCameraTest"

.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"

.field private static final mDateTimeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

.field private mEncoderCount:I

.field private mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mOutputPath:Ljava/lang/String;

.field private mStatredCount:I

.field private mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->getCaptureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mOutputPath:Ljava/lang/String;

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mOutputPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 44
    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 45
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void

    .line 41
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This app has no permission of writing external storage"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final getCaptureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "USBCameraTest"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaMuxerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 177
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->getDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getDateTimeString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 188
    sget-object v1, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addEncoder(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    .locals 3

    .line 86
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    const-string v1, "Video encoder already added."

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-nez v0, :cond_2

    .line 93
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    goto :goto_0

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_3
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-nez v0, :cond_4

    .line 97
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    goto :goto_0

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_5
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-nez v0, :cond_8

    .line 101
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    add-int/2addr p1, v0

    iput p1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    .line 100
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported encoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    const-string v1, "MediaMuxerWrapper"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack:trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",trackIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return v0

    .line 147
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->prepare()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->prepare()V

    :cond_1
    return-void
.end method

.method declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    const-string v1, "start:"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 114
    iget v2, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 116
    iput-boolean v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer started:"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->startRecording()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->startRecording()V

    :cond_1
    return-void
.end method

.method declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:mStatredCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 129
    iget v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mEncoderCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MediaMuxerWrapper"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mIsStarted:Z

    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer stopped:"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecording()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->stopRecording()V

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    .line 70
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Lcom/serenegiant/usb/encoder/MediaEncoder;->stopRecording()V

    .line 72
    :cond_1
    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    return-void
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
