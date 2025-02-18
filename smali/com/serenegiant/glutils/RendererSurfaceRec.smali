.class Lcom/serenegiant/glutils/RendererSurfaceRec;
.super Ljava/lang/Object;
.source "RendererSurfaceRec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;
    }
.end annotation


# instance fields
.field protected volatile mEnable:Z

.field final mMvpMatrix:[F

.field private mSurface:Ljava/lang/Object;

.field private mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;


# direct methods
.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 50
    iput-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mEnable:Z

    .line 59
    iput-object p2, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mSurface:Ljava/lang/Object;

    .line 60
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 61
    iget-object p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;Lcom/serenegiant/glutils/RendererSurfaceRec$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/glutils/RendererSurfaceRec;-><init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;)V

    return-void
.end method

.method private check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newInstance(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)Lcom/serenegiant/glutils/RendererSurfaceRec;
    .locals 2

    if-lez p2, :cond_0

    .line 41
    new-instance v0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;-><init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;ILcom/serenegiant/glutils/RendererSurfaceRec$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/serenegiant/glutils/RendererSurfaceRec;

    invoke-direct {v0, p0, p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;-><init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mEnable:Z

    return v0
.end method

.method public clear(I)V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const v2, 0xff00

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 v3, p1, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v4, -0x1000000

    and-int/2addr p1, v4

    ushr-int/lit8 p1, p1, 0x18

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 128
    invoke-static {v0, v2, v3, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 134
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 135
    iget-object p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {p1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/serenegiant/glutils/GLDrawer2D;I[F)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    const/16 v0, 0x4000

    .line 114
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 115
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;

    .line 116
    invoke-virtual {p1, p2, p3, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 117
    iget-object p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {p1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mEnable:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCurrent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/serenegiant/glutils/RendererSurfaceRec;->check()V

    .line 146
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 70
    iput-object v1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 72
    :cond_0
    iput-object v1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mSurface:Ljava/lang/Object;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mEnable:Z

    return-void
.end method

.method public swap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/serenegiant/glutils/RendererSurfaceRec;->check()V

    .line 156
    iget-object v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    return-void
.end method
