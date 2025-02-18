.class public Lcom/serenegiant/glutils/EGLBase14$Context;
.super Lcom/serenegiant/glutils/EGLBase$IContext;
.source "EGLBase14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field public final eglContext:Landroid/opengl/EGLContext;


# direct methods
.method private constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase$IContext;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/EGLContext;Lcom/serenegiant/glutils/EGLBase14$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    .line 73
    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$Context;->eglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getHandle()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
