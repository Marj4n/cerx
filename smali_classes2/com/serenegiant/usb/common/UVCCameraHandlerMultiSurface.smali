.class public Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
.super Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.source "UVCCameraHandlerMultiSurface.java"


# instance fields
.field private mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;


# direct methods
.method protected constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V
    .locals 3

    .line 122
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    .line 123
    new-instance v0, Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/serenegiant/glutils/RendererHolder;-><init>(IILcom/serenegiant/glutils/RenderHolderCallback;)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;)Lcom/serenegiant/glutils/RendererHolder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;II)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 64
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;III)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
    .locals 7

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 80
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIII)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 97
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;
    .locals 10

    .line 115
    new-instance v9, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const-class v1, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;-><init>(Ljava/lang/Class;Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)V

    .line 116
    invoke-virtual {v9}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->start()V

    .line 117
    invoke-virtual {v9}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getHandler()Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addSurface(ILandroid/view/Surface;Z)V
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->checkReleased()V

    .line 152
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/glutils/RendererHolder;->addSurface(ILjava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->checkReleased()V

    .line 170
    new-instance p2, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;

    invoke-direct {p2, p0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;-><init>(Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/RendererHolder;->release()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSurface(I)V
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/RendererHolder;->removeSurface(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resize(II)V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->resize(II)V

    .line 136
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/RendererHolder;->resize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->checkReleased()V

    .line 143
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->mRendererHolder:Lcom/serenegiant/glutils/RendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/RendererHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->startPreview(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
