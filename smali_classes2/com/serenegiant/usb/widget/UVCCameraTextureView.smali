.class public Lcom/serenegiant/usb/widget/UVCCameraTextureView;
.super Lcom/serenegiant/usb/widget/AspectRatioTextureView;
.source "UVCCameraTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/serenegiant/usb/widget/CameraViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UVCCameraTextureView"


# instance fields
.field private mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

.field private final mCaptureSync:Ljava/lang/Object;

.field private final mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

.field private mHasSurface:Z

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

.field private mReqesutCaptureStillImage:Z

.field private mTempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCaptureSync:Ljava/lang/Object;

    .line 69
    new-instance p1, Lcom/serenegiant/utils/FpsCounter;

    invoke-direct {p1}, Lcom/serenegiant/utils/FpsCounter;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    .line 81
    invoke-virtual {p0, p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public captureStillImage(II)Landroid/graphics/Bitmap;
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    .line 180
    :try_start_0
    iput-boolean p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mReqesutCaptureStillImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    iget-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 186
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public getFps()F
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-virtual {v0}, Lcom/serenegiant/utils/FpsCounter;->getFps()F

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSurface:hasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UVCCameraTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mPreviewSurface:Landroid/view/Surface;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->getPreviewTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTotalFps()F
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-virtual {v0}, Lcom/serenegiant/utils/FpsCounter;->getTotalFps()F

    move-result v0

    return v0
.end method

.method public hasSurface()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mHasSurface:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "onPause:"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->release()V

    .line 98
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "UVCCameraTextureView"

    const-string v1, "onResume:"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-super {p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->createHandler(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u7a7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    invoke-virtual {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->getPreviewTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "luoming"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UVCCameraTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->createHandler(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->resize(II)V

    :goto_0
    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mHasSurface:Z

    .line 115
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;->onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureDestroyed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UVCCameraTextureView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->release()V

    .line 136
    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    :cond_0
    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mHasSurface:Z

    .line 139
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;->onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 144
    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mPreviewSurface:Landroid/view/Surface;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UVCCameraTextureView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1, p2, p3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->resize(II)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, p0, v0, p2, p3}, Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;->onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mReqesutCaptureStillImage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mReqesutCaptureStillImage:Z

    .line 154
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetFps()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-virtual {v0}, Lcom/serenegiant/utils/FpsCounter;->reset()Lcom/serenegiant/utils/FpsCounter;

    return-void
.end method

.method public setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    return-void
.end method

.method public setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mRenderHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V

    :cond_0
    return-void
.end method

.method public updateFps()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-virtual {v0}, Lcom/serenegiant/utils/FpsCounter;->update()Lcom/serenegiant/utils/FpsCounter;

    return-void
.end method
