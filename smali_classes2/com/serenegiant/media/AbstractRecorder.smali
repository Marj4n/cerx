.class public abstract Lcom/serenegiant/media/AbstractRecorder;
.super Ljava/lang/Object;
.source "AbstractRecorder.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AbstractRecorder"


# instance fields
.field protected mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

.field protected mEncoderCount:I

.field protected volatile mIsStarted:Z

.field protected final mOutputPath:Ljava/lang/String;

.field protected mStartedCount:I

.field protected mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mOutputPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mStartedCount:I

    iput p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mEncoderCount:I

    .line 44
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mIsStarted:Z

    return-void
.end method


# virtual methods
.method addEncoder(Lcom/serenegiant/media/MediaEncoder;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Lcom/serenegiant/media/MediaEncoder;->isAudio()Z

    move-result v0

    const-string v1, "Video encoder already added."

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-nez v0, :cond_0

    .line 98
    iput-object p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-nez v0, :cond_4

    .line 102
    iput-object p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    add-int/2addr p1, v0

    iput p1, p0, Lcom/serenegiant/media/AbstractRecorder;->mEncoderCount:I

    return-void

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract addTrack(Landroid/media/MediaFormat;)I
.end method

.method public frameAvailableSoon()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->frameAvailableSoon()V

    :cond_0
    return-void
.end method

.method public abstract getHeight()I
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method protected abstract internal_start()V
.end method

.method protected abstract internal_stop()V
.end method

.method public isStarted()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mIsStarted:Z

    return v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->prepare()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->prepare()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->release()V

    .line 78
    iput-object v1, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->release()V

    .line 82
    iput-object v1, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    :cond_1
    return-void
.end method

.method declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    .line 114
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mStartedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mStartedCount:I

    .line 115
    iget v2, p0, Lcom/serenegiant/media/AbstractRecorder;->mEncoderCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/serenegiant/media/AbstractRecorder;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractRecorder;->internal_start()V

    .line 117
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractRecorder;->mIsStarted:Z

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mIsStarted:Z
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

    .line 57
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->start()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->start()V

    :cond_1
    return-void
.end method

.method declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mStartedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mStartedCount:I

    .line 131
    iget v1, p0, Lcom/serenegiant/media/AbstractRecorder;->mEncoderCount:I

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mIsStarted:Z

    .line 133
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractRecorder;->internal_stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
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

    .line 65
    iget-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    .line 69
    iget-object v1, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/serenegiant/media/MediaEncoder;->stop()V

    .line 72
    :cond_1
    iput-object v0, p0, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    return-void
.end method

.method abstract writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
