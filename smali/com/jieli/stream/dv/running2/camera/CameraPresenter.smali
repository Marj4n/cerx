.class public Lcom/jieli/stream/dv/running2/camera/CameraPresenter;
.super Ljava/lang/Object;
.source "CameraPresenter.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/camera/ICamera;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private isReady:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCurrentCamIndex:I

.field private mPreviewBuffer:[B

.field private mStreaming:Lcom/jieli/lib/dv/control/projection/StreamingPush;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private previewing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCurrentCamIndex:I

    .line 34
    new-instance v0, Lcom/jieli/lib/dv/control/projection/StreamingPush;

    sget-object v1, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->TCP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    invoke-direct {v0, v1}, Lcom/jieli/lib/dv/control/projection/StreamingPush;-><init>(Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mStreaming:Lcom/jieli/lib/dv/control/projection/StreamingPush;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mStreaming:Lcom/jieli/lib/dv/control/projection/StreamingPush;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/StreamingPush;->close()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 148
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 149
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 150
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    :cond_1
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->previewing:Z

    return-void
.end method

.method public isPreviewing()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->previewing:Z

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mPreviewBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 191
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 193
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    if-nez p2, :cond_2

    .line 195
    sget-object p1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    const-string p2, "onPreviewFrame: parameters null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 199
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 200
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    new-instance p2, Landroid/graphics/Rect;

    const/16 v0, 0x1e0

    const/16 v1, 0x110

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x3c

    invoke-virtual {v6, p2, v0, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 205
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mStreaming:Lcom/jieli/lib/dv/control/projection/StreamingPush;

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->isReady:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 207
    invoke-virtual {p2, v0, p1}, Lcom/jieli/lib/dv/control/projection/StreamingPush;->send(I[B)Z

    goto :goto_0

    .line 210
    :cond_3
    sget-object p1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    const-string p2, "compressToJpeg failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 185
    :cond_5
    :goto_1
    sget-object p1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    const-string p2, "onPreviewFrame: camera null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open()Z
    .locals 5

    .line 116
    sget-object v0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    const-string v1, "open "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 119
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 122
    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 124
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    .line 126
    :try_start_0
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    .line 127
    iput v3, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCurrentCamIndex:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera failed to open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mStreaming:Lcom/jieli/lib/dv/control/projection/StreamingPush;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/projection/StreamingPush;->create(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceState(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->isReady:Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 4

    .line 160
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 161
    iget v1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCurrentCamIndex:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    .line 172
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v1, :cond_4

    .line 173
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v2

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 174
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 177
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 77
    sget-object v0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    const-string v1, "startPreview "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 79
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 89
    sget-object v1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview: w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int p1, p1, v0

    const/16 v0, 0x11

    .line 90
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x8

    .line 91
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mPreviewBuffer:[B

    .line 92
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 93
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 95
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->previewing:Z

    :cond_0
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method
