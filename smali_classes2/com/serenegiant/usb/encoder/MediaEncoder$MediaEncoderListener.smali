.class public interface abstract Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaEncoderListener"
.end annotation


# virtual methods
.method public abstract onEncodeResult([BIIJI)V
.end method

.method public abstract onPrepared(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
.end method

.method public abstract onStopped(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
.end method
