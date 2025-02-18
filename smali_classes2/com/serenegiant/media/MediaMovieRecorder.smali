.class public Lcom/serenegiant/media/MediaMovieRecorder;
.super Lcom/serenegiant/media/AbstractRecorder;
.source "MediaMovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaMovieRecorder"


# instance fields
.field private final hasAudioEncoder:Z

.field private final mMediaCodecCallback:Lcom/serenegiant/media/IMediaCodecCallback;

.field private final mMuxer:Lcom/serenegiant/media/IMuxer;

.field private mRecorderCallback:Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/media/MediaMovieRecorder;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/serenegiant/media/AbstractRecorder;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/serenegiant/media/MediaMovieRecorder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaMovieRecorder$1;-><init>(Lcom/serenegiant/media/MediaMovieRecorder;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMediaCodecCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz p3, :cond_0

    .line 58
    new-instance p3, Lcom/serenegiant/media/VideoMuxer;

    invoke-direct {p3, p1}, Lcom/serenegiant/media/VideoMuxer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/serenegiant/media/MediaMuxerWrapper;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lcom/serenegiant/media/MediaMuxerWrapper;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object p3, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    .line 61
    new-instance p1, Lcom/serenegiant/media/MediaVideoEncoder;

    iget-object p3, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMediaCodecCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    invoke-direct {p1, p0, p3}, Lcom/serenegiant/media/MediaVideoEncoder;-><init>(Lcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V

    if-eqz p2, :cond_1

    .line 63
    new-instance p1, Lcom/serenegiant/media/MediaAudioEncoder;

    iget-object p3, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMediaCodecCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    invoke-direct {p1, p0, p3}, Lcom/serenegiant/media/MediaAudioEncoder;-><init>(Lcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V

    .line 65
    :cond_1
    iput-boolean p2, p0, Lcom/serenegiant/media/MediaMovieRecorder;->hasAudioEncoder:Z

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaMovieRecorder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->hasAudioEncoder:Z

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mRecorderCallback:Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    return-object p0
.end method


# virtual methods
.method addTrack(Landroid/media/MediaFormat;)I
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0, p1}, Lcom/serenegiant/media/IMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallback()Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mRecorderCallback:Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    check-cast v0, Lcom/serenegiant/media/MediaVideoEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaVideoEncoder;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    check-cast v0, Lcom/serenegiant/media/MediaVideoEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaVideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    check-cast v0, Lcom/serenegiant/media/MediaVideoEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaVideoEncoder;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internal_start()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0}, Lcom/serenegiant/media/IMuxer;->start()V

    return-void
.end method

.method protected internal_stop()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0}, Lcom/serenegiant/media/IMuxer;->stop()V

    .line 105
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0}, Lcom/serenegiant/media/IMuxer;->release()V

    return-void
.end method

.method public setCallback(Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mRecorderCallback:Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    check-cast v0, Lcom/serenegiant/media/MediaVideoEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/media/MediaVideoEncoder;->setVideoSize(II)V

    return-void
.end method

.method writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder;->mMuxer:Lcom/serenegiant/media/IMuxer;

    invoke-interface {v0, p1, p2, p3}, Lcom/serenegiant/media/IMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method
