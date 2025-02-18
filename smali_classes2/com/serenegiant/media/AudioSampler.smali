.class public Lcom/serenegiant/media/AudioSampler;
.super Lcom/serenegiant/media/IAudioSampler;
.source "AudioSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/AudioSampler$AudioThread;,
        Lcom/serenegiant/media/AudioSampler$AudioRecordRec;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final AUDIO_SOURCE:I

.field private final BUFFER_SIZE:I

.field private final CHANNEL_COUNT:I

.field private final SAMPLES_PER_FRAME:I

.field private final SAMPLING_RATE:I

.field private mAudioThread:Lcom/serenegiant/media/AudioSampler$AudioThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/AudioSampler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/serenegiant/media/IAudioSampler;-><init>()V

    .line 48
    iput p1, p0, Lcom/serenegiant/media/AudioSampler;->AUDIO_SOURCE:I

    .line 49
    iput p2, p0, Lcom/serenegiant/media/AudioSampler;->CHANNEL_COUNT:I

    .line 50
    iput p3, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLING_RATE:I

    mul-int p1, p4, p2

    .line 51
    iput p1, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLES_PER_FRAME:I

    .line 52
    invoke-static {p2, p3, p4, p5}, Lcom/serenegiant/media/AudioSampler;->getAudioBufferSize(IIII)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/AudioSampler;->BUFFER_SIZE:I

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/AudioSampler;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/serenegiant/media/AudioSampler;->AUDIO_SOURCE:I

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/AudioSampler;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLING_RATE:I

    return p0
.end method

.method static synthetic access$200(Lcom/serenegiant/media/AudioSampler;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/serenegiant/media/AudioSampler;->CHANNEL_COUNT:I

    return p0
.end method

.method static synthetic access$300(Lcom/serenegiant/media/AudioSampler;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/serenegiant/media/AudioSampler;->BUFFER_SIZE:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/serenegiant/media/AudioSampler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/serenegiant/media/AudioSampler;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLES_PER_FRAME:I

    return p0
.end method

.method public static getAudioBufferSize(IIII)I
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    const/4 v2, 0x2

    .line 111
    invoke-static {p1, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    mul-int p3, p3, p2

    if-ge p3, p1, :cond_1

    .line 116
    div-int/2addr p1, p2

    add-int/2addr p1, v0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    mul-int p3, p1, p0

    :cond_1
    return p3
.end method


# virtual methods
.method public getAudioSource()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/serenegiant/media/AudioSampler;->AUDIO_SOURCE:I

    return v0
.end method

.method public getBitResolution()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLES_PER_FRAME:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/serenegiant/media/AudioSampler;->CHANNEL_COUNT:I

    return v0
.end method

.method public getSamplingFrequency()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLING_RATE:I

    return v0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-super {p0}, Lcom/serenegiant/media/IAudioSampler;->start()V

    .line 72
    iget-object v0, p0, Lcom/serenegiant/media/AudioSampler;->mAudioThread:Lcom/serenegiant/media/AudioSampler$AudioThread;

    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/serenegiant/media/AudioSampler;->SAMPLES_PER_FRAME:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/AudioSampler;->init_pool(I)V

    .line 75
    new-instance v0, Lcom/serenegiant/media/AudioSampler$AudioThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AudioSampler$AudioThread;-><init>(Lcom/serenegiant/media/AudioSampler;)V

    iput-object v0, p0, Lcom/serenegiant/media/AudioSampler;->mAudioThread:Lcom/serenegiant/media/AudioSampler$AudioThread;

    .line 76
    invoke-virtual {v0}, Lcom/serenegiant/media/AudioSampler$AudioThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 86
    :try_start_0
    iput-boolean v0, p0, Lcom/serenegiant/media/AudioSampler;->mIsCapturing:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/serenegiant/media/AudioSampler;->mAudioThread:Lcom/serenegiant/media/AudioSampler$AudioThread;

    .line 88
    invoke-super {p0}, Lcom/serenegiant/media/IAudioSampler;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
