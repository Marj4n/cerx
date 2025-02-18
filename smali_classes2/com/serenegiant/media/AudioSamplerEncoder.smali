.class public Lcom/serenegiant/media/AudioSamplerEncoder;
.super Lcom/serenegiant/media/AbstractAudioEncoder;
.source "AudioSamplerEncoder.java"


# instance fields
.field private frame_count:I

.field private final mAudioTask:Ljava/lang/Runnable;

.field private final mSampler:Lcom/serenegiant/media/IAudioSampler;

.field private final mSamplerCreated:Z

.field private final mSoundSamplerCallback:Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;ILcom/serenegiant/media/IAudioSampler;)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 40
    invoke-virtual {p4}, Lcom/serenegiant/media/IAudioSampler;->getChannels()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    if-eqz p4, :cond_1

    .line 41
    invoke-virtual {p4}, Lcom/serenegiant/media/IAudioSampler;->getSamplingFrequency()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_1
    const v1, 0xac44

    const v7, 0xac44

    :goto_1
    const v8, 0xfa00

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/serenegiant/media/AbstractAudioEncoder;-><init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;IIII)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->frame_count:I

    .line 85
    new-instance p2, Lcom/serenegiant/media/AudioSamplerEncoder$1;

    invoke-direct {p2, p0}, Lcom/serenegiant/media/AudioSamplerEncoder$1;-><init>(Lcom/serenegiant/media/AudioSamplerEncoder;)V

    iput-object p2, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSoundSamplerCallback:Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;

    .line 113
    new-instance p2, Lcom/serenegiant/media/AudioSamplerEncoder$2;

    invoke-direct {p2, p0}, Lcom/serenegiant/media/AudioSamplerEncoder$2;-><init>(Lcom/serenegiant/media/AudioSamplerEncoder;)V

    iput-object p2, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mAudioTask:Ljava/lang/Runnable;

    if-nez p4, :cond_3

    if-ltz p3, :cond_2

    const/4 p1, 0x7

    if-gt p3, p1, :cond_2

    .line 49
    new-instance p4, Lcom/serenegiant/media/AudioSampler;

    const/4 v3, 0x1

    const v4, 0xac44

    const/16 v5, 0x400

    const/16 v6, 0x19

    move-object v1, p4

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/media/AudioSampler;-><init>(IIIII)V

    .line 51
    iput-boolean v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSamplerCreated:Z

    goto :goto_2

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid audio source:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    iput-boolean p1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSamplerCreated:Z

    .line 55
    :goto_2
    iput-object p4, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/AudioSamplerEncoder;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->frame_count:I

    return p0
.end method

.method static synthetic access$008(Lcom/serenegiant/media/AudioSamplerEncoder;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->frame_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->frame_count:I

    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSamplerCreated:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    invoke-virtual {v0}, Lcom/serenegiant/media/IAudioSampler;->release()V

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractAudioEncoder;->release()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/serenegiant/media/AbstractAudioEncoder;->start()V

    .line 61
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSoundSamplerCallback:Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;

    invoke-virtual {v0, v1}, Lcom/serenegiant/media/IAudioSampler;->addCallback(Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;)V

    .line 62
    iget-boolean v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSamplerCreated:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    invoke-virtual {v0}, Lcom/serenegiant/media/IAudioSampler;->start()V

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mAudioTask:Ljava/lang/Runnable;

    const-string v2, "AudioTask"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSoundSamplerCallback:Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;

    invoke-virtual {v0, v1}, Lcom/serenegiant/media/IAudioSampler;->removeCallback(Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;)V

    .line 70
    iget-boolean v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSamplerCreated:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSampler:Lcom/serenegiant/media/IAudioSampler;

    invoke-virtual {v0}, Lcom/serenegiant/media/IAudioSampler;->stop()V

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractAudioEncoder;->stop()V

    return-void
.end method
