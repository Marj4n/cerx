.class public final Lcom/jieli/lib/dv/control/player/RealtimeStream;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private mStream:Lcom/jieli/lib/dv/control/player/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    :goto_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/Stream;->close()Z

    move-result v0

    return v0
.end method

.method public configure(II)Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/Stream;->configure(II)Z

    move-result p1

    return p1
.end method

.method public configure([I[I)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/Stream;->configure([I[I)Z

    move-result p1

    return p1
.end method

.method public create(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected create(ILjava/lang/String;Z)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/Stream;->create(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isReceiving()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/Stream;->isReceiving()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onFrameReceived(I[BJJ)V
    .locals 0

    return-void
.end method

.method protected onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnRealTimeListener;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public release()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/Stream;->release()Z

    move-result v0

    return v0
.end method

.method public setFrameRate(I)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setFrameRate(I)Z

    move-result p1

    return p1
.end method

.method public setMute(Z)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setMute(Z)V

    return-void
.end method

.method public setResolution(II)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/Stream;->setResolution(II)Z

    move-result p1

    return p1
.end method

.method public setSampleRate(I)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setSampleRate(I)Z

    move-result p1

    return p1
.end method

.method public setSoTimeout(I)Z
    .locals 3

    if-ltz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setSoTimeout(I)Z

    move-result p1

    return p1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout can\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnRealTimeListener;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public useDeviceTimestamp(Z)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->useDeviceTimestamp(Z)V

    return-void
.end method
