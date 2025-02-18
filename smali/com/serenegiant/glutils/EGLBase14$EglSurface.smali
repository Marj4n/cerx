.class public Lcom/serenegiant/glutils/EGLBase14$EglSurface;
.super Ljava/lang/Object;
.source "EGLBase14.java"

# interfaces
.implements Lcom/serenegiant/glutils/EGLBase$IEglSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglSurface"
.end annotation


# instance fields
.field private final mEglBase:Lcom/serenegiant/glutils/EGLBase14;

.field private mEglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase14;II)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 122
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase14;->access$200(Lcom/serenegiant/glutils/EGLBase14;II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcom/serenegiant/glutils/EGLBase14;->access$200(Lcom/serenegiant/glutils/EGLBase14;II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase14;IILcom/serenegiant/glutils/EGLBase14$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase14;II)V

    return-void
.end method

.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 101
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    .line 102
    instance-of p1, p2, Landroid/view/Surface;

    if-nez p1, :cond_1

    instance-of p1, p2, Landroid/view/SurfaceHolder;

    if-nez p1, :cond_1

    instance-of p1, p2, Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    instance-of p1, p2, Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    invoke-static {p1, p2}, Lcom/serenegiant/glutils/EGLBase14;->access$100(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;Lcom/serenegiant/glutils/EGLBase14$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase14$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase14;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase14;->getContext()Lcom/serenegiant/glutils/EGLBase14$Context;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 168
    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase14;->access$400(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 169
    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase14;->access$500(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCurrent()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase14;->access$300(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)Z

    .line 133
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase14;->getGlVersion()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 135
    invoke-static {v0, v2}, Lcom/serenegiant/glutils/EGLBase14;->access$400(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v0

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 136
    invoke-static {v2, v3}, Lcom/serenegiant/glutils/EGLBase14;->access$500(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v2

    .line 134
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 139
    invoke-static {v0, v2}, Lcom/serenegiant/glutils/EGLBase14;->access$400(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v0

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 140
    invoke-static {v2, v3}, Lcom/serenegiant/glutils/EGLBase14;->access$500(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    move-result v2

    .line 138
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES10;->glViewport(IIII)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase14;->makeDefault()V

    .line 176
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase14;->access$900(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)V

    .line 177
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    invoke-static {v0}, Lcom/serenegiant/glutils/EGLBase14;->access$800(Lcom/serenegiant/glutils/EGLBase14;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swap()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase14;->access$600(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;)I

    return-void
.end method

.method public swap(J)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase14;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase14$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Lcom/serenegiant/glutils/EGLBase14;->access$700(Lcom/serenegiant/glutils/EGLBase14;Landroid/opengl/EGLSurface;J)I

    return-void
.end method
