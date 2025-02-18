.class public interface abstract Lcom/serenegiant/media/IVideoEncoder;
.super Ljava/lang/Object;
.source "IVideoEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/Encoder;


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
