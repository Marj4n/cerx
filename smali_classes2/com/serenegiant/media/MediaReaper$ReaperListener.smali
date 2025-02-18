.class public interface abstract Lcom/serenegiant/media/MediaReaper$ReaperListener;
.super Ljava/lang/Object;
.source "MediaReaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaReaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReaperListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/serenegiant/media/MediaReaper;Ljava/lang/Exception;)V
.end method

.method public abstract onOutputFormatChanged(Lcom/serenegiant/media/MediaReaper;Landroid/media/MediaFormat;)V
.end method

.method public abstract onStop(Lcom/serenegiant/media/MediaReaper;)V
.end method

.method public abstract writeSampleData(Lcom/serenegiant/media/MediaReaper;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
