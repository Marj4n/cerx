.class public interface abstract Lcom/serenegiant/glutils/IRendererHolder;
.super Ljava/lang/Object;
.source "IRendererHolder.java"

# interfaces
.implements Lcom/serenegiant/glutils/IRendererCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/IRendererHolder$StillCaptureFormat;
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPTURE_COMPRESSION:I = 0x50

.field public static final OUTPUT_FORMAT_JPEG:I = 0x0

.field public static final OUTPUT_FORMAT_PNG:I = 0x1

.field public static final OUTPUT_FORMAT_WEBP:I = 0x2


# virtual methods
.method public abstract addSurface(ILjava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract addSurface(ILjava/lang/Object;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract captureStill(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract captureStill(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract captureStill(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract captureStillAsync(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract captureStillAsync(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearSurface(II)V
.end method

.method public abstract clearSurfaceAll(I)V
.end method

.method public abstract getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
.end method

.method public abstract getCount()I
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract isEnabled(I)Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract release()V
.end method

.method public abstract removeSurface(I)V
.end method

.method public abstract removeSurfaceAll()V
.end method

.method public abstract requestFrame()V
.end method

.method public abstract reset()V
.end method

.method public abstract resize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setEnabled(IZ)V
.end method

.method public abstract setMvpMatrix(II[F)V
.end method
