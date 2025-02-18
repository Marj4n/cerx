.class public interface abstract Lcom/serenegiant/media/IMuxer;
.super Ljava/lang/Object;
.source "IMuxer.java"


# virtual methods
.method public abstract addTrack(Landroid/media/MediaFormat;)I
.end method

.method public abstract isStarted()Z
.end method

.method public abstract release()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
