.class public Lcom/serenegiant/glutils/EGLBase10$Context;
.super Lcom/serenegiant/glutils/EGLBase$IContext;
.source "EGLBase10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field public final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase$IContext;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;Lcom/serenegiant/glutils/EGLBase10$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
