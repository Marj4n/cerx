.class public Lcom/baidu/platform/comapi/map/m;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/baidu/platform/comapi/map/m$a;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLContext;

.field private g:Ljavax/microedition/khronos/egl/EGLSurface;

.field private h:Ljavax/microedition/khronos/opengles/GL10;

.field private i:I

.field private j:Z

.field private final k:Lcom/baidu/platform/comapi/map/F;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/baidu/platform/comapi/map/m$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/baidu/platform/comapi/map/F;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/platform/comapi/map/m;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/m;->j:Z

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/m;->b:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/m;->c:Lcom/baidu/platform/comapi/map/m$a;

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    return-void
.end method

.method private a(IIIIII)Z
    .locals 7

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_6

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x64

    new-array v1, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xd

    new-array v4, v4, [I

    const/16 v5, 0x3024

    const/4 v6, 0x0

    aput v5, v4, v6

    aput p1, v4, v2

    const/16 p1, 0x3023

    aput p1, v4, v0

    const/4 v0, 0x3

    aput p2, v4, v0

    const/4 p1, 0x4

    const/16 p2, 0x3022

    aput p2, v4, p1

    const/4 p1, 0x5

    aput p3, v4, p1

    const/4 p1, 0x6

    const/16 p2, 0x3021

    aput p2, v4, p1

    const/4 p1, 0x7

    aput p4, v4, p1

    const/16 p1, 0x8

    const/16 p2, 0x3025

    aput p2, v4, p1

    const/16 p1, 0x9

    aput p5, v4, p1

    const/16 p1, 0xa

    const/16 p2, 0x3026

    aput p2, v4, p1

    const/16 p1, 0xb

    aput p6, v4, p1

    const/16 p1, 0xc

    const/16 p2, 0x3038

    aput p2, v4, p1

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 p5, 0x64

    move-object p3, v4

    move-object p4, v1

    move-object p6, v3

    invoke-interface/range {p1 .. p6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_4

    aget p1, v3, v6

    if-lez p1, :cond_4

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object p4, v1, v6

    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p2, p3, p4, p5, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object p3, v1, v6

    iget-object p4, p0, Lcom/baidu/platform/comapi/map/m;->b:Landroid/graphics/SurfaceTexture;

    const/4 p5, 0x0

    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 p2, 0x300b

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p4, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/m;->h:Ljavax/microedition/khronos/opengles/GL10;

    return v2

    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglMakeCurrent failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p3

    invoke-static {p3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v6

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglInitialize failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p3

    invoke-static {p3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglGetdisplay failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p3

    invoke-static {p3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static b(IIIIII)Z
    .locals 9

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v3, 0x64

    new-array v3, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/16 v6, 0xd

    new-array v6, v6, [I

    const/16 v7, 0x3024

    const/4 v8, 0x0

    aput v7, v6, v8

    aput p0, v6, v4

    const/16 p0, 0x3023

    aput p0, v6, v2

    const/4 p0, 0x3

    aput p1, v6, p0

    const/4 p0, 0x4

    const/16 p1, 0x3022

    aput p1, v6, p0

    const/4 p0, 0x5

    aput p2, v6, p0

    const/4 p0, 0x6

    const/16 p1, 0x3021

    aput p1, v6, p0

    const/4 p0, 0x7

    aput p3, v6, p0

    const/16 p0, 0x8

    const/16 p1, 0x3025

    aput p1, v6, p0

    const/16 p0, 0x9

    aput p4, v6, p0

    const/16 p0, 0xa

    const/16 p1, 0x3026

    aput p1, v6, p0

    const/16 p0, 0xb

    aput p5, v6, p0

    const/16 p0, 0xc

    const/16 p1, 0x3038

    aput p1, v6, p0

    const/16 p4, 0x64

    move-object p0, v0

    move-object p1, v1

    move-object p2, v6

    move-object p3, v3

    move-object p5, v5

    invoke-interface/range {p0 .. p5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v5, v8

    if-lez p0, :cond_0

    return v4

    :cond_0
    return v8
.end method

.method private d()V
    .locals 15

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/m;->b(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/platform/comapi/map/m;->a(IIIIII)Z

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    const/16 v10, 0x8

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/baidu/platform/comapi/map/m;->a(IIIIII)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/m;->a(IIIIII)Z

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/e;->h:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeInit(J)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/e;->h:J

    sget v2, Lcom/baidu/platform/comapi/map/F;->a:I

    sget v3, Lcom/baidu/platform/comapi/map/F;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeResize(JII)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/platform/comapi/map/m;->i:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/m;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/m;->i:I

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/m;->j:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/m;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/m;->d()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->c:Lcom/baidu/platform/comapi/map/m$a;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/baidu/platform/comapi/map/m;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->c:Lcom/baidu/platform/comapi/map/m$a;

    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/m$a;->a()I

    move-result v1

    iput v1, p0, Lcom/baidu/platform/comapi/map/m;->i:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/l;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/m;->k:Lcom/baidu/platform/comapi/map/F;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/F;->b()Lcom/baidu/platform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/e;->H()Lcom/baidu/platform/comapi/map/E;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/m;->h:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v4, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/m;->h:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4, v3}, Lcom/baidu/platform/comapi/map/l;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/m;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/m;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/m;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/m;->j:Z

    if-eqz v0, :cond_0

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/m;->e()V

    return-void
.end method
