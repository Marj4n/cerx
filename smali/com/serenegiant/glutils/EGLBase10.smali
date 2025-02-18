.class Lcom/serenegiant/glutils/EGLBase10;
.super Lcom/serenegiant/glutils/EGLBase;
.source "EGLBase10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/EGLBase10$EglSurface;,
        Lcom/serenegiant/glutils/EGLBase10$MySurfaceHolder;,
        Lcom/serenegiant/glutils/EGLBase10$Config;,
        Lcom/serenegiant/glutils/EGLBase10$Context;
    }
.end annotation


# static fields
.field private static final EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

.field private static final TAG:Ljava/lang/String; = "EGLBase10"


# instance fields
.field private mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/serenegiant/glutils/EGLBase10$Context;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V

    sput-object v0, Lcom/serenegiant/glutils/EGLBase10;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

    return-void
.end method

.method public constructor <init>(ILcom/serenegiant/glutils/EGLBase10$Context;ZIZ)V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 49
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 50
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    const/4 v0, 0x2

    .line 51
    iput v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I

    .line 54
    sget-object v0, Lcom/serenegiant/glutils/EGLBase10;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 270
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/glutils/EGLBase10;->init(ILcom/serenegiant/glutils/EGLBase10$Context;ZIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->createWindowSurface(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/glutils/EGLBase10;II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase10;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->getSurfaceWidth(Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->getSurfaceHeight(Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->swap(Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;J)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase10;->swap(Ljavax/microedition/khronos/egl/EGLSurface;J)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->destroyWindowSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V

    return-void
.end method

.method private final checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 643
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

.method private final createContext(Lcom/serenegiant/glutils/EGLBase10$Context;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 p3, 0x2

    const/16 v1, 0x3038

    aput v1, v0, p3

    .line 537
    iget-object p3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p3, v1, p2, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method private final createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 5

    const-string v0, "createOffscreenSurface"

    const-string v1, "EGLBase10"

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v2, v3

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

    .line 611
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    const/4 p1, 0x0

    .line 614
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    iget-object v4, v4, Lcom/serenegiant/glutils/EGLBase10$Config;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p2, v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface"

    .line 616
    invoke-direct {p0, p2}, Lcom/serenegiant/glutils/EGLBase10;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 618
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

    .line 623
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 621
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private final createWindowSurface(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 5

    const-string v0, "EGLBase10"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3038

    aput v3, v1, v2

    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    iget-object v4, v4, Lcom/serenegiant/glutils/EGLBase10$Config;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 585
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-object p1

    .line 586
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v1, 0x300b

    if-ne p1, v1, :cond_2

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 588
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
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

    .line 595
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final destroyContext()V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    iget-object v2, v2, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    iget-object v1, v1, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyContext"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglDestroyContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGLBase10"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    sget-object v0, Lcom/serenegiant/glutils/EGLBase10;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    return-void
.end method

.method private final destroyWindowSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 5

    .line 631
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 634
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 636
    :cond_0
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method private final getConfig(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17

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

    const/16 v11, 0xa

    const/16 v12, 0x3038

    aput v12, v6, v11

    const/16 v13, 0xb

    aput v12, v6, v13

    const/16 v14, 0xc

    aput v12, v6, v14

    const/16 v15, 0xd

    aput v12, v6, v15

    const/16 v15, 0xe

    aput v12, v6, v15

    const/16 v15, 0xf

    aput v12, v6, v15

    const/16 v15, 0x10

    aput v12, v6, v15

    if-lez p3, :cond_1

    const/16 v16, 0x3026

    aput v16, v6, v11

    aput v4, v6, v13

    goto :goto_1

    :cond_1
    const/16 v14, 0xa

    :goto_1
    if-eqz p2, :cond_2

    add-int/lit8 v4, v14, 0x1

    const/16 v13, 0x3025

    .line 675
    aput v13, v6, v14

    add-int/lit8 v14, v4, 0x1

    .line 676
    aput v15, v6, v4

    :cond_2
    const/16 v4, 0x3142

    if-eqz p4, :cond_3

    .line 678
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v13, v14, 0x1

    .line 681
    aput v4, v6, v14

    add-int/lit8 v14, v13, 0x1

    .line 682
    aput v7, v6, v13

    :cond_3
    const/16 v7, 0x10

    :goto_2
    if-lt v7, v14, :cond_4

    .line 685
    aput v12, v6, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 687
    :cond_4
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase10;->internalGetConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v7

    if-nez v7, :cond_7

    if-ne v1, v8, :cond_7

    if-eqz p4, :cond_7

    :goto_3
    if-ge v11, v15, :cond_6

    .line 693
    aget v1, v6, v11

    if-ne v1, v4, :cond_5

    :goto_4
    if-ge v11, v5, :cond_6

    .line 695
    aput v12, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x2

    goto :goto_3

    .line 700
    :cond_6
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase10;->internalGetConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v7

    :cond_7
    if-nez v7, :cond_8

    const-string v1, "EGLBase10"

    const-string v4, "try to fallback to RGB565"

    .line 704
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput v2, v6, v3

    aput v10, v6, v2

    aput v2, v6, v9

    .line 708
    invoke-direct {v0, v6}, Lcom/serenegiant/glutils/EGLBase10;->internalGetConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v7

    :cond_8
    return-object v7
.end method

.method private final getSurfaceHeight(Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 564
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3056

    invoke-interface {v1, v2, p1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    aput v1, v0, v1

    .line 567
    :cond_0
    aget p1, v0, v1

    return p1
.end method

.method private final getSurfaceWidth(Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 556
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3057

    invoke-interface {v1, v2, p1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    aput v1, v0, v1

    .line 559
    :cond_0
    aget p1, v0, v1

    return p1
.end method

.method private final init(ILcom/serenegiant/glutils/EGLBase10$Context;ZIZ)V
    .locals 7

    if-eqz p2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    sget-object p2, Lcom/serenegiant/glutils/EGLBase10;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 398
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 399
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 400
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v3, :cond_2

    new-array v0, v1, [I

    .line 405
    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 406
    :cond_1
    iput-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 407
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglInitialize failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglGetDisplay failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    .line 413
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase10;->getConfig(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 415
    invoke-direct {p0, p2, v3, v0}, Lcom/serenegiant/glutils/EGLBase10;->createContext(Lcom/serenegiant/glutils/EGLBase10$Context;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    .line 416
    iget-object v5, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    const/16 v6, 0x3000

    if-ne v5, v6, :cond_4

    .line 419
    new-instance v5, Lcom/serenegiant/glutils/EGLBase10$Config;

    invoke-direct {v5, v3, v2}, Lcom/serenegiant/glutils/EGLBase10$Config;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object v5, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    .line 420
    new-instance v3, Lcom/serenegiant/glutils/EGLBase10$Context;

    invoke-direct {v3, v4, v2}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object v3, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 421
    iput v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I

    :cond_4
    const/4 v0, 0x0

    const-string v3, "chooseConfig failed"

    const-string v4, "eglCreateContext"

    if-lt p1, v1, :cond_8

    .line 426
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v5, :cond_8

    .line 429
    :cond_5
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase10;->getConfig(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 435
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/serenegiant/glutils/EGLBase10;->createContext(Lcom/serenegiant/glutils/EGLBase10$Context;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    .line 436
    invoke-direct {p0, v4}, Lcom/serenegiant/glutils/EGLBase10;->checkEglError(Ljava/lang/String;)V

    .line 437
    new-instance v6, Lcom/serenegiant/glutils/EGLBase10$Config;

    invoke-direct {v6, p1, v2}, Lcom/serenegiant/glutils/EGLBase10$Config;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object v6, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    .line 438
    new-instance p1, Lcom/serenegiant/glutils/EGLBase10$Context;

    invoke-direct {p1, v5, v2}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 439
    iput v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    if-eqz p5, :cond_8

    .line 442
    invoke-direct {p0, v1, p3, p4, v0}, Lcom/serenegiant/glutils/EGLBase10;->getConfig(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 447
    invoke-direct {p0, p2, p1, v1}, Lcom/serenegiant/glutils/EGLBase10;->createContext(Lcom/serenegiant/glutils/EGLBase10$Context;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    .line 448
    invoke-direct {p0, v4}, Lcom/serenegiant/glutils/EGLBase10;->checkEglError(Ljava/lang/String;)V

    .line 449
    new-instance v6, Lcom/serenegiant/glutils/EGLBase10$Config;

    invoke-direct {v6, p1, v2}, Lcom/serenegiant/glutils/EGLBase10$Config;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object v6, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    .line 450
    new-instance p1, Lcom/serenegiant/glutils/EGLBase10$Context;

    invoke-direct {p1, v5, v2}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 451
    iput v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I

    goto :goto_2

    .line 444
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v5, :cond_a

    .line 456
    :cond_9
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/serenegiant/glutils/EGLBase10;->getConfig(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 461
    invoke-direct {p0, p2, p1, v1}, Lcom/serenegiant/glutils/EGLBase10;->createContext(Lcom/serenegiant/glutils/EGLBase10$Context;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    .line 462
    invoke-direct {p0, v4}, Lcom/serenegiant/glutils/EGLBase10;->checkEglError(Ljava/lang/String;)V

    .line 463
    new-instance p3, Lcom/serenegiant/glutils/EGLBase10$Config;

    invoke-direct {p3, p1, v2}, Lcom/serenegiant/glutils/EGLBase10$Config;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object p3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    .line 464
    new-instance p1, Lcom/serenegiant/glutils/EGLBase10$Context;

    invoke-direct {p1, p2, v2}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 465
    iput v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I

    :cond_a
    new-array p1, v1, [I

    .line 469
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p4, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    iget-object p4, p4, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 p5, 0x3098

    invoke-interface {p2, p3, p4, p5, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EGLContext created, client version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EGLBase10"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase10;->makeDefault()V

    return-void

    .line 458
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private internalGetConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    .line 716
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 721
    aget-object p1, v7, p1

    return-object p1
.end method

.method private final makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 484
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    iget-object v3, v3, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, p1, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

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

    .line 485
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v1, 0x300b

    if-ne p1, v1, :cond_3

    const-string p1, "EGLBase10"

    const-string v1, "makeCurrent:EGL_BAD_NATIVE_WINDOW"

    .line 487
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private final swap(Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x3000

    return p1
.end method

.method private final swap(Ljavax/microedition/khronos/egl/EGLSurface;J)I
    .locals 0

    .line 519
    iget-object p2, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p2, p3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

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
    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/EGLBase10;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase10$EglSurface;

    move-result-object p1

    return-object p1
.end method

.method public createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase10$EglSurface;
    .locals 2

    .line 300
    new-instance v0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;Lcom/serenegiant/glutils/EGLBase10$1;)V

    .line 301
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->makeCurrent()V

    return-object v0
.end method

.method public bridge synthetic createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase10;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase10$EglSurface;

    move-result-object p1

    return-object p1
.end method

.method public createOffscreen(II)Lcom/serenegiant/glutils/EGLBase10$EglSurface;
    .locals 2

    .line 315
    new-instance v0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase10;IILcom/serenegiant/glutils/EGLBase10$1;)V

    .line 316
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->makeCurrent()V

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/serenegiant/glutils/EGLBase$IConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase10;->getConfig()Lcom/serenegiant/glutils/EGLBase10$Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/serenegiant/glutils/EGLBase10$Config;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EGLBase10;->getContext()Lcom/serenegiant/glutils/EGLBase10$Context;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/serenegiant/glutils/EGLBase10$Context;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    return-object v0
.end method

.method public getGlVersion()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mGlVersion:I

    return v0
.end method

.method public makeDefault()V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDefault:eglMakeCurrent:err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGLBase10"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 5

    .line 279
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase10;->destroyContext()V

    .line 280
    sget-object v0, Lcom/serenegiant/glutils/EGLBase10;->EGL_NO_CONTEXT:Lcom/serenegiant/glutils/EGLBase10$Context;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mContext:Lcom/serenegiant/glutils/EGLBase10$Context;

    .line 281
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 285
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 287
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEglConfig:Lcom/serenegiant/glutils/EGLBase10$Config;

    .line 288
    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-void
.end method

.method public sync()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    .line 362
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x305b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    return-void
.end method
