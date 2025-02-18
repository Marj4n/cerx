.class public Lcom/jieli/stream/dv/running2/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field private static instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;


# instance fields
.field private audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

.field private bufferSize:I

.field private mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 20
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->createAudioPlayer()V

    return-void
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/audio/AudioPlayer;
    .locals 2

    .line 24
    sget-object v0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    return-object v0
.end method


# virtual methods
.method public createAudioPlayer()V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioSampleRate()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 41
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getOutputChannel()I

    move-result v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioFormat()I

    move-result v2

    .line 40
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->bufferSize:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 44
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 45
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioSampleRate()I

    move-result v4

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getOutputChannel()I

    move-result v5

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->audioConfig:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 46
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioFormat()I

    move-result v6

    iget v7, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->bufferSize:I

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->bufferSize:I

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 119
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public pausePlay()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->bufferSize:I

    return-void
.end method

.method public startPlay([B)V
    .locals 3

    if-eqz p1, :cond_3

    .line 63
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->createAudioPlayer()V

    .line 67
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 68
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 100
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 101
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 104
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 106
    :cond_1
    sput-object v1, Lcom/jieli/stream/dv/running2/audio/AudioPlayer;->instance:Lcom/jieli/stream/dv/running2/audio/AudioPlayer;

    return-void
.end method
