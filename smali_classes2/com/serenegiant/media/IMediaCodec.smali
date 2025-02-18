.class public interface abstract Lcom/serenegiant/media/IMediaCodec;
.super Ljava/lang/Object;
.source "IMediaCodec.java"


# static fields
.field public static final TIMEOUT_USEC:I = 0x2710


# virtual methods
.method public abstract isPrepared()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
