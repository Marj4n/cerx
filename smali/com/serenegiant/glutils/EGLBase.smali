.class public abstract Lcom/serenegiant/glutils/EGLBase;
.super Ljava/lang/Object;
.source "EGLBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/EGLBase$IEglSurface;,
        Lcom/serenegiant/glutils/EGLBase$IConfig;,
        Lcom/serenegiant/glutils/EGLBase$IContext;
    }
.end annotation


# static fields
.field public static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field public static final EGL_LOCK:Ljava/lang/Object;

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/serenegiant/glutils/EGLBase;->EGL_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;
    .locals 10

    .line 78
    invoke-static {}, Lcom/serenegiant/glutils/EGLBase;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/serenegiant/glutils/EGLBase14$Context;

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Lcom/serenegiant/glutils/EGLBase14;

    move-object v3, p1

    check-cast v3, Lcom/serenegiant/glutils/EGLBase14$Context;

    move-object v1, v0

    move v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/glutils/EGLBase14;-><init>(ILcom/serenegiant/glutils/EGLBase14$Context;ZIZ)V

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lcom/serenegiant/glutils/EGLBase10;

    move-object v6, p1

    check-cast v6, Lcom/serenegiant/glutils/EGLBase10$Context;

    move-object v4, v0

    move v5, p0

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/serenegiant/glutils/EGLBase10;-><init>(ILcom/serenegiant/glutils/EGLBase10$Context;ZIZ)V

    return-object v0
.end method

.method public static createFrom(Lcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;
    .locals 1

    const/4 v0, 0x3

    .line 61
    invoke-static {v0, p0, p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object p0

    return-object p0
.end method

.method public static createFrom(Lcom/serenegiant/glutils/EGLBase$IContext;ZZ)Lcom/serenegiant/glutils/EGLBase;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, p0, p1, v1, p2}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object p0

    return-object p0
.end method

.method public static isEGL14Supported()Z
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;
.end method

.method public abstract createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;
.end method

.method public abstract getConfig()Lcom/serenegiant/glutils/EGLBase$IConfig;
.end method

.method public abstract getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
.end method

.method public abstract getGlVersion()I
.end method

.method public abstract makeDefault()V
.end method

.method public abstract queryString(I)Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract sync()V
.end method
