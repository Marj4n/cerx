.class Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;
.super Lcom/serenegiant/glutils/EglTask;
.source "StaticTextureSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/StaticTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RendererTask"
.end annotation


# instance fields
.field private final mClientSync:Ljava/lang/Object;

.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/serenegiant/glutils/RendererSurfaceRec;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

.field private mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

.field private final mIntervalsNs:J

.field private final mParent:Lcom/serenegiant/glutils/StaticTextureSource;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/StaticTextureSource;IIF)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, v0, v1, v2}, Lcom/serenegiant/glutils/EglTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    .line 208
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    .line 220
    iput-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    .line 221
    iput p2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoWidth:I

    .line 222
    iput p3, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoHeight:I

    const/4 p1, 0x0

    cmpg-float p1, p4, p1

    if-gtz p1, :cond_0

    const-wide/32 p1, 0x5f5e100

    goto :goto_0

    :cond_0
    const p1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p4

    float-to-long p1, p1

    .line 223
    :goto_0
    iput-wide p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mIntervalsNs:J

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mIntervalsNs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)Lcom/serenegiant/glutils/TextureOffscreen;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    return-object p0
.end method

.method private checkFinished()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already finished"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSurface()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 497
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/glutils/RendererSurfaceRec;

    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 498
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleAddSurface(ILjava/lang/Object;I)V
    .locals 3

    .line 431
    invoke-direct {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->checkSurface()V

    .line 432
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 436
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->newInstance(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)Lcom/serenegiant/glutils/RendererSurfaceRec;

    move-result-object p3

    .line 437
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    :try_start_2
    invoke-static {}, Lcom/serenegiant/glutils/StaticTextureSource;->access$500()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {}, Lcom/serenegiant/glutils/StaticTextureSource;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface is already added: id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 445
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private handleDraw()V
    .locals 6

    .line 395
    invoke-virtual {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->makeCurrent()V

    .line 397
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 403
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->canDraw()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 406
    :try_start_1
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/serenegiant/glutils/RendererSurfaceRec;->draw(Lcom/serenegiant/glutils/GLDrawer2D;I[F)V

    const-string v4, "handleSetBitmap"

    .line 407
    invoke-static {v4}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 410
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 411
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 415
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 417
    :cond_2
    invoke-static {}, Lcom/serenegiant/glutils/StaticTextureSource;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mImageSource is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0x4000

    .line 419
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 420
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method private handleRemoveAll()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 474
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->makeCurrent()V

    .line 477
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRemoveSurface(I)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v1, :cond_0

    .line 457
    iget-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    invoke-virtual {v1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->checkSurface()V

    .line 461
    iget-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSetBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 513
    iget-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    if-nez v2, :cond_0

    .line 514
    new-instance v2, Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    const-string v2, "handleSetBitmap"

    .line 515
    invoke-static {v2}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2, p1}, Lcom/serenegiant/glutils/TextureOffscreen;->loadBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {v2, p1}, Lcom/serenegiant/glutils/TextureOffscreen;->loadBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    :goto_0
    iput v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoWidth:I

    .line 521
    iput v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mVideoHeight:I

    return-void
.end method


# virtual methods
.method public addSurface(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 297
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->addSurface(ILjava/lang/Object;I)V

    return-void
.end method

.method public addSurface(ILjava/lang/Object;I)V
    .locals 4

    .line 306
    invoke-direct {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->checkFinished()V

    .line 307
    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface should be one of Surface, SurfaceTexture or SurfaceHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    const/4 v1, 0x3

    .line 317
    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->offer(IIILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 319
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 333
    :catch_0
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCount()I
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onError(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onStart()V
    .locals 3

    .line 232
    new-instance v0, Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 233
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v0}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/StaticTextureSource;->access$302(Lcom/serenegiant/glutils/StaticTextureSource;Z)Z

    .line 235
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v1}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v1}, Lcom/serenegiant/glutils/StaticTextureSource;->access$400(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/serenegiant/glutils/StaticTextureSource;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onStop()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v0}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/StaticTextureSource;->access$302(Lcom/serenegiant/glutils/StaticTextureSource;Z)Z

    .line 249
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mParent:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v1}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->makeCurrent()V

    .line 252
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 254
    iput-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    .line 258
    iput-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mImageSource:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->handleRemoveAll()V

    return-void

    :catchall_0
    move-exception v1

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, p2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->handleRemoveSurface(I)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0, p2, p4, p3}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->handleAddSurface(ILjava/lang/Object;I)V

    goto :goto_0

    .line 285
    :cond_2
    check-cast p4, Landroid/graphics/Bitmap;

    invoke-direct {p0, p4}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->handleSetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-direct {p0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->handleDraw()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeSurface(I)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x4

    .line 344
    invoke-virtual {p0, v1, p1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->offer(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 346
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->mClientSync:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x7

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->offer(ILjava/lang/Object;)Z

    return-void
.end method
