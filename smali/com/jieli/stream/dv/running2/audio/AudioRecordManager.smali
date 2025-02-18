.class public Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;
    }
.end annotation


# static fields
.field public static final ERR_AUDIO_IS_RECORDING:I = -0x1

.field public static final ERR_SD_CARD_NOT_EXIST:I = -0x2

.field public static final START_RECORD_OK:I = 0x1

.field private static instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferSizeInBytes:I

.field private config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

.field private isRecord:Z

.field private listener:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;

.field private tag:Ljava/lang/String;

.field private voiceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->bufferSizeInBytes:I

    .line 18
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->voiceLevel:I

    .line 37
    new-instance v0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 38
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->createAudioRecord()V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->readData()V

    return-void
.end method

.method private createAudioRecord()V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioSampleRate()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 60
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getChannelConfig()I

    move-result v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioFormat()I

    move-result v2

    .line 59
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->bufferSizeInBytes:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 64
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioInputWay()I

    move-result v3

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioSampleRate()I

    move-result v4

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    .line 65
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getChannelConfig()I

    move-result v5

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->config:Lcom/jieli/stream/dv/running2/audio/AudioConfig;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getAudioFormat()I

    move-result v6

    iget v7, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->bufferSizeInBytes:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-object v0
.end method

.method private readData()V
    .locals 9

    .line 127
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->bufferSizeInBytes:I

    new-array v1, v0, [B

    .line 129
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    iget v3, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->bufferSizeInBytes:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v3, v2, :cond_0

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 134
    aget-byte v3, v1, v4

    mul-int v3, v3, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    long-to-double v3, v5

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double v2, v2, v5

    double-to-int v2, v2

    iput v2, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->voiceLevel:I

    .line 139
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->listener:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v3, v1, v2}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;->onRecord([BI)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getRecordFileSize(Ljava/lang/String;)J
    .locals 2

    .line 150
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoiceLevel()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->voiceLevel:I

    return v0
.end method

.method public isRecord()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->stopRecord()V

    const/4 v0, 0x0

    .line 163
    sput-object v0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->instance:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-void
.end method

.method public setRecordListener(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->listener:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;

    return-void
.end method

.method public startRecord()I
    .locals 3

    .line 85
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->createAudioRecord()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 94
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$1;-><init>(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method public stopRecord()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->isRecord:Z

    .line 114
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->audioRecord:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method
