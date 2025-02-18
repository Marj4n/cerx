.class public interface abstract Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;
.super Ljava/lang/Object;
.source "AbstractUVCCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraCallback"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onStartPreview()V
.end method

.method public abstract onStartRecording()V
.end method

.method public abstract onStopPreview()V
.end method

.method public abstract onStopRecording()V
.end method
