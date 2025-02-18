.class public Lcom/jieli/lib/dv/control/player/AviWrapper;
.super Lcom/jieli/lib/dv/control/player/AbsRecording;
.source "SourceFile"


# instance fields
.field private isRecording:Z

.field private mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

.field private nativeCustomData:J

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/AbsRecording;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 27
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->tag:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID failed."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/exception/NativeException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private native nativeConfigureAudio(JIII)Z
.end method

.method private native nativeConfigureVideo(JIII)Z
.end method

.method private native nativeCreate(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/dv/control/exception/NativeException;
        }
    .end annotation
.end method

.method private native nativeInit()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/dv/control/exception/NativeException;
        }
    .end annotation
.end method

.method private native nativeRelease(J)Z
.end method

.method private native nativeSetDuration(JJ)Z
.end method

.method private native nativeSetPath(JLjava/lang/String;)Z
.end method

.method private native nativeStartRecording(J)Z
.end method

.method private native nativeStopRecording(J)Z
.end method

.method private native nativeWriteData(JI[BI)Z
.end method


# virtual methods
.method public configureVideo(III)Z
    .locals 6

    .line 45
    iget-wide v1, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeConfigureVideo(JIII)Z

    move-result p1

    return p1
.end method

.method public create()Z
    .locals 2

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/exception/NativeException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    const/4 v0, 0x0

    return v0
.end method

.method protected create(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected create(ILjava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public create(Ljava/lang/String;)Z
    .locals 2

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/exception/NativeException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    const/4 p1, 0x0

    return p1
.end method

.method public destroy()Z
    .locals 2

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 118
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeRelease(J)Z

    move-result v0

    return v0
.end method

.method protected isReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;->onStateChanged(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public setAudioTrack(III)Z
    .locals 6

    .line 56
    iget-wide v1, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    move-object v0, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeConfigureAudio(JIII)Z

    move-result p1

    return p1
.end method

.method protected setFrameRate(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)Z
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeSetPath(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected setResolution(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setSampleRate(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoDuration(J)Z
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeSetDuration(JJ)Z

    move-result p1

    return p1
.end method

.method public startRecording()Z
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeStartRecording(J)Z

    move-result v0

    return v0
.end method

.method public stopRecording()Z
    .locals 2

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 92
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeStopRecording(J)Z

    move-result v0

    return v0
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public write(I[B)Z
    .locals 6

    .line 75
    iget-wide v1, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    array-length v5, p2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeWriteData(JI[BI)Z

    move-result p1

    return p1
.end method
