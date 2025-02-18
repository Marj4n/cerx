.class public interface abstract Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;
.super Ljava/lang/Object;
.source "IAudioSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/IAudioSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoundSamplerCallback"
.end annotation


# virtual methods
.method public abstract onData(Ljava/nio/ByteBuffer;IJ)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
