.class public abstract Lcom/serenegiant/glutils/AbstractRendererHolder;
.super Ljava/lang/Object;
.source "AbstractRendererHolder.java"

# interfaces
.implements Lcom/serenegiant/glutils/IRendererHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;,
        Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;
    }
.end annotation


# static fields
.field private static final CAPTURE_THREAD_NAME:Ljava/lang/String; = "CaptureTask"

.field private static final DEBUG:Z = false

.field private static final RENDERER_THREAD_NAME:Ljava/lang/String; = "RendererHolder"

.field protected static final REQUEST_ADD_SURFACE:I = 0x3

.field protected static final REQUEST_CLEAR:I = 0x8

.field protected static final REQUEST_CLEAR_ALL:I = 0x9

.field protected static final REQUEST_DRAW:I = 0x1

.field protected static final REQUEST_MIRROR:I = 0x6

.field protected static final REQUEST_RECREATE_MASTER_SURFACE:I = 0x5

.field protected static final REQUEST_REMOVE_SURFACE:I = 0x4

.field protected static final REQUEST_REMOVE_SURFACE_ALL:I = 0xc

.field protected static final REQUEST_ROTATE:I = 0x7

.field protected static final REQUEST_SET_MVP:I = 0xa

.field protected static final REQUEST_UPDATE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isRunning:Z

.field private final mCallback:Lcom/serenegiant/glutils/RenderHolderCallback;

.field private mCaptureCompression:I

.field private mCaptureFormat:I

.field private mCaptureStream:Ljava/io/OutputStream;

.field private final mCaptureTask:Ljava/lang/Runnable;

.field protected final mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

.field protected final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    const/16 v0, 0x50

    .line 75
    iput v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureCompression:I

    .line 1253
    new-instance v0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureTask:Ljava/lang/Runnable;

    .line 91
    iput-object p6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCallback:Lcom/serenegiant/glutils/RenderHolderCallback;

    .line 92
    invoke-virtual/range {p0 .. p5}, Lcom/serenegiant/glutils/AbstractRendererHolder;->createRendererTask(IIILcom/serenegiant/glutils/EGLBase$IContext;I)Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 94
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    const-string p3, "RendererHolder"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 95
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->waitReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->startCaptureTask()V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "failed to start renderer thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(IILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;-><init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/glutils/AbstractRendererHolder;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$302(Lcom/serenegiant/glutils/AbstractRendererHolder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/serenegiant/glutils/AbstractRendererHolder;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureCompression:I

    return p0
.end method

.method static synthetic access$500(Lcom/serenegiant/glutils/AbstractRendererHolder;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureFormat:I

    return p0
.end method

.method static synthetic access$600(I)Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->getCaptureFormat(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    return-object p0
.end method

.method private captureStill(Ljava/io/OutputStream;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureStream:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    .line 406
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureStream:Ljava/io/OutputStream;

    .line 407
    iput p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureFormat:I

    .line 408
    iput p3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureCompression:I

    .line 409
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    if-eqz p4, :cond_0

    .line 412
    :catch_0
    :goto_0
    iget-boolean p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 415
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 404
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already run still capturing now"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already released?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 421
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static getCaptureFormat(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    const-string v0, ".jpg"

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    .line 440
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ".webp"

    .line 442
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    .line 445
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown compress format(extension)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static getCaptureFormat(I)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 470
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 467
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 464
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 461
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method protected static rotate([FI)V
    .locals 7

    .line 1507
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 1508
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    return-void
.end method

.method protected static setMirror([FI)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1495
    :cond_0
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    aput p1, p0, v1

    .line 1496
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    aput p1, p0, v0

    goto :goto_0

    .line 1491
    :cond_1
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aput p1, p0, v1

    .line 1492
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    aput p1, p0, v0

    goto :goto_0

    .line 1487
    :cond_2
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    aput p1, p0, v1

    .line 1488
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aput p1, p0, v0

    goto :goto_0

    .line 1483
    :cond_3
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aput p1, p0, v1

    .line 1484
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aput p1, p0, v0

    :goto_0
    return-void
.end method

.method protected static setRotation([FI)V
    .locals 7

    const/4 v0, 0x0

    .line 1518
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1519
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 1520
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSurface(ILjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    iget-object p3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {p3, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->addSurface(ILjava/lang/Object;)V

    return-void
.end method

.method public addSurface(ILjava/lang/Object;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 217
    iget-object p3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {p3, p1, p2, p4}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->addSurface(ILjava/lang/Object;I)V

    return-void
.end method

.method protected callOnCreate(Landroid/view/Surface;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCallback:Lcom/serenegiant/glutils/RenderHolderCallback;

    if-eqz v0, :cond_0

    .line 505
    :try_start_0
    invoke-interface {v0, p1}, Lcom/serenegiant/glutils/RenderHolderCallback;->onCreate(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    sget-object v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnDestroy()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCallback:Lcom/serenegiant/glutils/RenderHolderCallback;

    if-eqz v0, :cond_0

    .line 525
    :try_start_0
    invoke-interface {v0}, Lcom/serenegiant/glutils/RenderHolderCallback;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 527
    sget-object v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnFrameAvailable()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCallback:Lcom/serenegiant/glutils/RenderHolderCallback;

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-interface {v0}, Lcom/serenegiant/glutils/RenderHolderCallback;->onFrameAvailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    sget-object v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public captureStill(Ljava/io/OutputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 384
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->captureStill(Ljava/io/OutputStream;IIZ)V

    return-void
.end method

.method public captureStill(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 352
    invoke-static {p1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->getCaptureFormat(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x50

    const/4 v2, 0x1

    .line 351
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->captureStill(Ljava/io/OutputStream;IIZ)V

    return-void
.end method

.method public captureStill(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 368
    invoke-static {p1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->getCaptureFormat(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 367
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->captureStill(Ljava/io/OutputStream;IIZ)V

    return-void
.end method

.method public captureStillAsync(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 318
    invoke-static {p1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->getCaptureFormat(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 317
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->captureStill(Ljava/io/OutputStream;IIZ)V

    return-void
.end method

.method public captureStillAsync(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 337
    invoke-static {p1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->getCaptureFormat(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    .line 336
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->captureStill(Ljava/io/OutputStream;IIZ)V

    return-void
.end method

.method public clearSurface(II)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->clearSurface(II)V

    return-void
.end method

.method public clearSurfaceAll(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->clearSurfaceAll(I)V

    return-void
.end method

.method protected abstract createRendererTask(IIILcom/serenegiant/glutils/EGLBase$IContext;I)Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
.end method

.method public getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->getCount()I

    move-result v0

    return v0
.end method

.method public getMirror()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mirror()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isRunning()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    return v0
.end method

.method protected notifyCapture()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureTask:Ljava/lang/Runnable;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureTask:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 498
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->release()V

    .line 116
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 117
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z

    .line 118
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSurface(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->removeSurface(I)V

    return-void
.end method

.method public removeSurfaceAll()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->removeSurfaceAll()V

    return-void
.end method

.method public requestFrame()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->removeRequest(I)V

    .line 293
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->offer(I)Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->checkMasterSurface()V

    return-void
.end method

.method public resize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->resize(II)V

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->setEnabled(IZ)V

    return-void
.end method

.method public setMirror(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    rem-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mirror(I)V

    return-void
.end method

.method public setMvpMatrix(II[F)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->setMvpMatrix(II[F)V

    return-void
.end method

.method protected setupCaptureDrawer(Lcom/serenegiant/glutils/GLDrawer2D;)V
    .locals 0

    return-void
.end method

.method protected startCaptureTask()V
    .locals 3

    .line 481
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mCaptureTask:Ljava/lang/Runnable;

    const-string v2, "CaptureTask"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 482
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
