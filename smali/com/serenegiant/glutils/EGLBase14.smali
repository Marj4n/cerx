.class Lcom/serenegiant/glutils/EGLBase14;
.super Lcom/serenegiant/glutils/EGLBase;
.source "EGLBase14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/EGLBase14$EglSurface;,
        Lcom/serenegiant/glutils/EGLBase14$Config;,
        Lcom/serenegiant/glutils/EGLBase14$Context;
    }
.end annotation


# static fields
.field private static final EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

.field private static final TAG:Ljava/lang/String; = "EGLBase14"


# instance fields
.field private mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

.field private mDefaultContext:Landroid/opengl/EGLContext;

.field private mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I

.field private final mSurfaceDimension:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/serenegiant/glutils/EGLBase14$Context;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V

    sput-object v0, Lcom/serenegiant/glutils/EGLBase14;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

    return-void
.end method

.method public constructor <init>(ILcom/serenegiant/glutils/EGLBase14$Context;ZIZ)V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    .line 52
    sget-object v0, Lcom/serenegiant/glutils/EGLBase14;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 55
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mDefaultContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x2

    .line 56
    iput v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I

    new-array v0, v0, [I

    .line 467
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    .line 193
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/glutils/EGLBase14;->init(ILcom/serenegiant/glutils/EGLBase14$Context;ZIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/glutils/EGLBase14;II)Landroid/opengl/EGLSurface;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase14;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->getSurfaceWidth(Landroid/opengl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->getSurfaceHeight(Landroid/opengl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->swap(Landroid/opengl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;J)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase14;->swap(Landroid/opengl/EGLSurface;J)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/serenegiant/glutils/EGLBase14;)Landroid/opengl/EGLDisplay;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method static synthetic access$900(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->destroyWindowSurface(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 553
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 554
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createContext(Lcom/serenegiant/glutils/EGLBase14$Context;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x3098

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 p3, 0x2

    const/16 v1, 0x3038

    aput v1, v0, p3

    .line 442
    iget-object p3, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p3, p2, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method private final createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 5

    const-string v0, "createOffscreenSurface"

    const-string v1, "EGLBase14"

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0x3057

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    const/16 v3, 0x3056

    aput v3, v2, p1

    const/4 p1, 0x3

    aput p2, v2, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v2, p1

    const/4 p1, 0x0

    .line 525
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    iget-object v3, v3, Lcom/serenegiant/glutils/EGLBase14$Config;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {p2, v3, v2, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface"

    .line 527
    invoke-direct {p0, p2}, Lcom/serenegiant/glutils/EGLBase14;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {p2, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 534
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 532
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private final createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 5

    const-string v0, "EGLBase14"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    iget-object v4, v4, Lcom/serenegiant/glutils/EGLBase14$Config;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v4, p1, v1, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 497
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    return-object p1

    .line 498
    :cond_1
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v1, 0x300b

    if-ne p1, v1, :cond_2

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v1, "eglCreateWindowSurface"

    .line 507
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private destroyContext()V
    .locals 7

    .line 451
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    iget-object v1, v1, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "eglDestroyContext:"

    const-string v2, "EGLBase14"

    const-string v3, " context: "

    const-string v4, "display:"

    const-string v5, "destroyContext"

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    iget-object v6, v6, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    sget-object v0, Lcom/serenegiant/glutils/EGLBase14;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 457
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mDefaultContext:Landroid/opengl/EGLContext;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v6, :cond_2

    .line 458
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/serenegiant/glutils/EGLBase14;->mDefaultContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase14;->mDefaultContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mDefaultContext:Landroid/opengl/EGLContext;

    :cond_2
    return-void
.end method

.method private destroyWindowSurface(Landroid/opengl/EGLSurface;)V
    .locals 4

    .line 542
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 545
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 547
    :cond_0
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private getConfig(IZIZ)Landroid/opengl/EGLConfig;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/16 v4, 0x44

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    const/16 v5, 0x11

    new-array v6, v5, [I

    const/4 v7, 0x0

    const/16 v8, 0x3040

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/16 v4, 0x3024

    const/4 v8, 0x2

    aput v4, v6, v8

    const/16 v4, 0x8

    aput v4, v6, v3

    const/16 v9, 0x3023

    aput v9, v6, v2

    const/4 v2, 0x5

    aput v4, v6, v2

    const/16 v9, 0x3022

    const/4 v10, 0x6

    aput v9, v6, v10

    const/4 v9, 0x7

    aput v4, v6, v9

    const/16 v11, 0x3021

    aput v11, v6, v4

    const/16 v11, 0x9

    aput v4, v6, v11

    const/16 v4, 0xa

    const/16 v11, 0x3038

    aput v11, v6, v4

    const/16 v12, 0xb

    aput v11, v6, v12

    const/16 v13, 0xc

    aput v11, v6, v13

    const/16 v14, 0xd

    aput v11, v6, v14

    const/16 v14, 0xe

    aput v11, v6, v14

    const/16 v14, 0xf

    aput v11, v6, v14

    const/16 v14, 0x10

    aput v11, v6, v14

    if-lez p3, :cond_1

    const/16 v15, 0x3026

    aput v15, v6, v4

    aput p3, v6, v12

    goto :goto_1

    :cond_1
    const/16 v13, 0xa

    :goto_1
    if-eqz p2, :cond_2

    add-int/lit8 v12, v13, 0x1

    const/16 v15, 0x3025

    .line 585
    aput v15, v6, v13

    add-int/lit8 v13, v12, 0x1

    .line 586
    aput v14, v6, v12

    :cond_2
    const/16 v12, 0x3142

    if-eqz p4, :cond_3

    .line 588
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v15, v13, 0x1

    .line 589
    aput v12, v6, v13

    add-int/lit8 v13, v15, 0x1

    .line 590
    aput v7, v6, v15

    :cond_3
    const/16 v7, 0x10

    :goto_2
    if-lt v7, v13, :cond_4

    .line 593
    aput v11, v6, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 595
    :cond_4
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase14;->internalGetConfig([I)Landroid/opengl/EGLConfig;

    move-result-object v7

    if-nez v7, :cond_7

    if-ne v1, v8, :cond_7

    if-eqz p4, :cond_7

    :goto_3
    if-ge v4, v14, :cond_6

    .line 601
    aget v1, v6, v4

    if-ne v1, v12, :cond_5

    :goto_4
    if-ge v4, v5, :cond_6

    .line 603
    aput v11, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 608
    :cond_6
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase14;->internalGetConfig([I)Landroid/opengl/EGLConfig;

    move-result-object v7

    :cond_7
    if-nez v7, :cond_8

    const-string v1, "EGLBase14"

    const-string v4, "try to fallback to RGB565"

    .line 612
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput v2, v6, v3

    aput v10, v6, v2

    aput v2, v6, v9

    .line 616
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase14;->internalGetConfig([I)Landroid/opengl/EGLConfig;

    move-result-object v7

    :cond_8
    return-object v7
.end method

.method private final getSurfaceHeight(Landroid/opengl/EGLSurface;)I
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    const/16 v2, 0x3056

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v1, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    const/4 v0, 0x0

    aput v0, p1, v3

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    aget p1, p1, v3

    return p1
.end method

.method private final getSurfaceWidth(Landroid/opengl/EGLSurface;)I
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    const/16 v2, 0x3057

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    aput v3, p1, v3

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mSurfaceDimension:[I

    aget p1, p1, v3

    return p1
.end method

.method private init(ILcom/serenegiant/glutils/EGLBase14$Context;ZIZ)V
    .locals 9

    .line 307
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 311
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 312
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_a

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 317
    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    if-eqz p2, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    sget-object p2, Lcom/serenegiant/glutils/EGLBase14;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

    :goto_0
    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    .line 327
    invoke-direct {p0, v2, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase14;->getConfig(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 329
    invoke-direct {p0, p2, v5, v2}, Lcom/serenegiant/glutils/EGLBase14;->createContext(Lcom/serenegiant/glutils/EGLBase14$Context;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 330
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-ne v7, v8, :cond_1

    .line 332
    new-instance v7, Lcom/serenegiant/glutils/EGLBase14$Config;

    invoke-direct {v7, v5, v3}, Lcom/serenegiant/glutils/EGLBase14$Config;-><init>(Landroid/opengl/EGLConfig;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object v7, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    .line 333
    new-instance v5, Lcom/serenegiant/glutils/EGLBase14$Context;

    invoke-direct {v5, v6, v3}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object v5, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 334
    iput v2, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I

    :cond_1
    const-string v2, "chooseConfig failed"

    const-string v5, "eglCreateContext"

    if-lt p1, v1, :cond_5

    .line 339
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, v6, :cond_5

    .line 342
    :cond_2
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase14;->getConfig(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 348
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/serenegiant/glutils/EGLBase14;->createContext(Lcom/serenegiant/glutils/EGLBase14$Context;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 349
    invoke-direct {p0, v5}, Lcom/serenegiant/glutils/EGLBase14;->checkEglError(Ljava/lang/String;)V

    .line 350
    new-instance v7, Lcom/serenegiant/glutils/EGLBase14$Config;

    invoke-direct {v7, p1, v3}, Lcom/serenegiant/glutils/EGLBase14$Config;-><init>(Landroid/opengl/EGLConfig;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object v7, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    .line 351
    new-instance p1, Lcom/serenegiant/glutils/EGLBase14$Context;

    invoke-direct {p1, v6, v3}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 352
    iput v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p5, :cond_5

    .line 355
    invoke-direct {p0, v1, p3, p4, v0}, Lcom/serenegiant/glutils/EGLBase14;->getConfig(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 360
    invoke-direct {p0, p2, p1, v1}, Lcom/serenegiant/glutils/EGLBase14;->createContext(Lcom/serenegiant/glutils/EGLBase14$Context;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 361
    invoke-direct {p0, v5}, Lcom/serenegiant/glutils/EGLBase14;->checkEglError(Ljava/lang/String;)V

    .line 362
    new-instance v7, Lcom/serenegiant/glutils/EGLBase14$Config;

    invoke-direct {v7, p1, v3}, Lcom/serenegiant/glutils/EGLBase14$Config;-><init>(Landroid/opengl/EGLConfig;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object v7, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    .line 363
    new-instance p1, Lcom/serenegiant/glutils/EGLBase14$Context;

    invoke-direct {p1, v6, v3}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 364
    iput v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I

    goto :goto_1

    .line 357
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, v1, :cond_7

    .line 369
    :cond_6
    invoke-direct {p0, v4, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase14;->getConfig(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 374
    invoke-direct {p0, p2, p1, v4}, Lcom/serenegiant/glutils/EGLBase14;->createContext(Lcom/serenegiant/glutils/EGLBase14$Context;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object p2

    .line 375
    invoke-direct {p0, v5}, Lcom/serenegiant/glutils/EGLBase14;->checkEglError(Ljava/lang/String;)V

    .line 376
    new-instance p3, Lcom/serenegiant/glutils/EGLBase14$Config;

    invoke-direct {p3, p1, v3}, Lcom/serenegiant/glutils/EGLBase14$Config;-><init>(Landroid/opengl/EGLConfig;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object p3, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    .line 377
    new-instance p1, Lcom/serenegiant/glutils/EGLBase14$Context;

    invoke-direct {p1, p2, v3}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    .line 378
    iput v4, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I

    :cond_7
    new-array p1, v4, [I

    .line 382
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p3, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    iget-object p3, p3, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    const/16 p4, 0x3098

    invoke-static {p2, p3, p4, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EGLContext created, client version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EGLBase14"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase14;->makeDefault()V

    return-void

    .line 371
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_9
    iput-object v3, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 319
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglInitialize failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglGetDisplay failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private internalGetConfig([I)Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v7, v0, [I

    .line 624
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 628
    aget-object p1, v9, p1

    return-object p1
.end method

.method private makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 397
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    iget-object v2, v2, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, p1, p1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TAG"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 398
    :cond_2
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v1, 0x300b

    if-ne p1, v1, :cond_3

    const-string p1, "EGLBase14"

    const-string v1, "makeCurrent:returned EGL_BAD_NATIVE_WINDOW."

    .line 400
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private swap(Landroid/opengl/EGLSurface;)I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 415
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x3000

    return p1
.end method

.method private swap(Landroid/opengl/EGLSurface;J)I
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 425
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p2, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 426
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x3000

    return p1
.end method


# virtual methods
.method public bridge synthetic createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/EGLBase14;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase14$EglSurface;

    move-result-object p1

    return-object p1
.end method

.method public createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase14$EglSurface;
    .locals 2

    .line 220
    new-instance v0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;Lcom/serenegiant/glutils/EGLBase14$1;)V

    .line 221
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->makeCurrent()V

    return-object v0
.end method

.method public bridge synthetic createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase14;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase14$EglSurface;

    move-result-object p1

    return-object p1
.end method

.method public createOffscreen(II)Lcom/serenegiant/glutils/EGLBase14$EglSurface;
    .locals 2

    .line 235
    new-instance v0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase14;IILcom/serenegiant/glutils/EGLBase14$1;)V

    .line 236
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->makeCurrent()V

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/serenegiant/glutils/EGLBase$IConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase14;->getConfig()Lcom/serenegiant/glutils/EGLBase14$Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/serenegiant/glutils/EGLBase14$Config;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglConfig:Lcom/serenegiant/glutils/EGLBase14$Config;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase14;->getContext()Lcom/serenegiant/glutils/EGLBase14$Context;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/serenegiant/glutils/EGLBase14$Context;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    return-object v0
.end method

.method public getGlVersion()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mGlVersion:I

    return v0
.end method

.method public makeDefault()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDefault"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase14;->destroyContext()V

    .line 204
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 205
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 207
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 208
    sget-object v0, Lcom/serenegiant/glutils/EGLBase14;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase14$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14;->mContext:Lcom/serenegiant/glutils/EGLBase14$Context;

    return-void
.end method

.method public sync()V
    .locals 1

    .line 299
    invoke-static {}, Landroid/opengl/EGL14;->eglWaitGL()Z

    const/16 v0, 0x305b

    .line 300
    invoke-static {v0}, Landroid/opengl/EGL14;->eglWaitNative(I)Z

    return-void
.end method
