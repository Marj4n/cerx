.class final Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;
.super Ljava/lang/Thread;
.source "UVCCameraTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderThread"
.end annotation


# instance fields
.field private mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

.field private mEgl:Lcom/serenegiant/glutils/EGLBase;

.field private mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

.field private mEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

.field private final mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

.field private mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

.field private mPreviewSurface:Landroid/graphics/SurfaceTexture;

.field private final mStMatrix:[F

.field private final mSurface:Landroid/graphics/SurfaceTexture;

.field private final mSync:Ljava/lang/Object;

.field private mTexId:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 372
    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    .line 383
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    .line 384
    iput-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 385
    iput p3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    .line 386
    iput p4, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    const-string p1, "RenderThread"

    .line 387
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private final init()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#init:"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 580
    invoke-static {v0, v1, v1}, Lcom/serenegiant/glutils/EGLBase;->createFrom(Lcom/serenegiant/glutils/EGLBase$IContext;ZZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    .line 581
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 582
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 584
    new-instance v0, Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    return-void
.end method

.method private final release()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#release:"

    .line 588
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 591
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 595
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 597
    :cond_1
    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    if-ltz v0, :cond_2

    .line 598
    invoke-static {v0}, Lcom/serenegiant/glutils/es1/GLHelper;->deleteTex(I)V

    const/4 v0, -0x1

    .line 599
    iput v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_3

    .line 602
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 603
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_4

    .line 606
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->release()V

    .line 607
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    :cond_4
    return-void
.end method


# virtual methods
.method public final getHandler()Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#getHandler:"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 396
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 399
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final onDrawFrame()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 469
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 471
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 473
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 475
    instance-of v1, v0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    if-eqz v1, :cond_0

    .line 476
    check-cast v0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->frameAvailableSoon([F)Z

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->frameAvailableSoon()Z

    .line 481
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    iget v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 482
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    return-void
.end method

.method public resize(II)V
    .locals 1

    if-lez p1, :cond_0

    .line 404
    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    if-ne p1, v0, :cond_1

    :cond_0
    if-lez p2, :cond_2

    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    if-eq p2, v0, :cond_2

    .line 405
    :cond_1
    iput p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    .line 406
    iput p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    .line 407
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->updatePreviewSurface()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 410
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 411
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final run()V
    .locals 4

    const-string v0, "UVCCameraTextureView"

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->init()V

    .line 561
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 562
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    new-instance v1, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;-><init>(Lcom/serenegiant/utils/FpsCounter;Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;Lcom/serenegiant/usb/widget/UVCCameraTextureView$1;)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    .line 564
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 567
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "UVCCameraTextureView"

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finishing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->release()V

    .line 571
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_1
    iput-object v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    .line 573
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 574
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 565
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final setEncoder(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderThread#setEncoder:encoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UVCCameraTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 441
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 442
    move-object v0, p1

    check-cast v0, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v1

    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;->setEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEncoder:Lcom/serenegiant/usb/encoder/MediaEncoder;

    return-void
.end method

.method public final updatePreviewSurface()V
    .locals 4

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#updatePreviewSurface:"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    const-string v1, "UVCCameraTextureView"

    const-string v2, "updatePreviewSurface:release mPreviewSurface"

    .line 419
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 421
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 422
    iput-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 425
    iget v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    if-ltz v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-virtual {v1, v2}, Lcom/serenegiant/glutils/GLDrawer2D;->deleteTex(I)V

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/GLDrawer2D;->initTex()I

    move-result v1

    iput v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    const-string v1, "UVCCameraTextureView"

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewSurface:tex_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 432
    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    iget v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 433
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 435
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
