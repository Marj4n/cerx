.class public interface abstract Lcom/serenegiant/media/IRecorder$RecorderCallback;
.super Ljava/lang/Object;
.source "IRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/IRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecorderCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onPrepared(Lcom/serenegiant/media/IRecorder;)V
.end method

.method public abstract onStarted(Lcom/serenegiant/media/IRecorder;)V
.end method

.method public abstract onStopped(Lcom/serenegiant/media/IRecorder;)V
.end method
