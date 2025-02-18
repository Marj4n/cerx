.class public Lcom/jieli/stream/dv/running2/audio/AudioConfig;
.super Ljava/lang/Object;
.source "AudioConfig.java"


# instance fields
.field private audioFormat:I

.field private audioInput:I

.field private audioSampleRate:I

.field private channelConfig:I

.field private outputChannel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioInput:I

    const/16 v0, 0x1f40

    .line 25
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioSampleRate:I

    const/16 v0, 0x10

    .line 27
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->channelConfig:I

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioFormat:I

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->outputChannel:I

    return-void
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 3

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 101
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v1

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRawFilePath()Ljava/lang/String;
    .locals 4

    .line 86
    invoke-static {}, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->isSdcardExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getCameraDir()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Record"

    .line 88
    invoke-static {v1, v2, v0, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AUD_RECORD.pcm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static isSdcardExit()Z
    .locals 2

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioFormat:I

    return v0
.end method

.method public getAudioInputWay()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioInput:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioSampleRate:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->channelConfig:I

    return v0
.end method

.method public getOutputChannel()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->outputChannel:I

    return v0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioFormat:I

    return-void
.end method

.method public setAudioInputWay(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioInput:I

    return-void
.end method

.method public setAudioSampleRate(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->audioSampleRate:I

    return-void
.end method

.method public setChannelConfig(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->channelConfig:I

    return-void
.end method

.method public setOutputChannel(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioConfig;->outputChannel:I

    return-void
.end method
