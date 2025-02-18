.class public interface abstract Lcom/serenegiant/media/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# virtual methods
.method public abstract encode(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract encode(Ljava/nio/ByteBuffer;IJ)V
.end method

.method public abstract frameAvailableSoon()V
.end method

.method public abstract getOutputPath()Ljava/lang/String;
.end method

.method public abstract isAudio()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract signalEndOfInputStream()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
