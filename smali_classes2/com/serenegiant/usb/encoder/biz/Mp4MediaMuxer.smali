.class public Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;
.super Ljava/lang/Object;
.source "Mp4MediaMuxer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE:Z = false


# instance fields
.field private durationMillis:J

.field private index:I

.field private isVoiceClose:Z

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioTrackIndex:I

.field private mBeginMillis:J

.field private mFilePath:Ljava/lang/String;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    .line 26
    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    .line 35
    iput-boolean p4, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->isVoiceClose:Z

    .line 36
    iput-wide p2, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->durationMillis:J

    const-string p4, ".mp4"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 44
    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x12

    if-lt p3, p4, :cond_1

    .line 45
    new-instance p3, Landroid/media/MediaMuxer;

    invoke-direct {p3, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p3

    .line 50
    :cond_1
    :goto_1
    check-cast p2, Landroid/media/MediaMuxer;

    iput-object p2, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 50
    :goto_3
    check-cast p2, Landroid/media/MediaMuxer;

    iput-object p2, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 51
    throw p1
.end method


# virtual methods
.method public declared-synchronized addTrack(Landroid/media/MediaFormat;Z)V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->isVoiceClose:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already add all tracks"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_4

    .line 60
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    if-eqz p2, :cond_3

    .line 64
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 65
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    .line 68
    iget-boolean p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->isVoiceClose:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    if-eq p1, v1, :cond_4

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mBeginMillis:J

    goto :goto_1

    .line 75
    :cond_3
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    .line 76
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    .line 77
    iget p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    if-eq p1, v1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mBeginMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pumpStream(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 5

    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->isVoiceClose:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_1
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/16 v2, 0x12

    if-eqz v0, :cond_3

    goto :goto_2

    .line 93
    :cond_3
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_7

    if-eqz p3, :cond_5

    .line 94
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "muxer hasn\'t started"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_5
    :goto_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_7

    .line 103
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    goto :goto_1

    :cond_6
    iget p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    :goto_1
    invoke-virtual {v0, p3, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 109
    :cond_7
    :goto_2
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 114
    iget-wide p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->durationMillis:J

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-eqz p3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mBeginMillis:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->durationMillis:J

    cmp-long p3, p1, v3

    if-ltz p3, :cond_8

    .line 115
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_8

    .line 118
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V

    .line 119
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 121
    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I

    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    new-instance p1, Landroid/media/MediaMuxer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".mp4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 124
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V

    .line 125
    iget-object p1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p3}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 127
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 6

    monitor-enter p0

    .line 134
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 142
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 147
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mBeginMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 150
    :cond_0
    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mVideoTrackIndex:I

    iput v1, p0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->mAudioTrackIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
