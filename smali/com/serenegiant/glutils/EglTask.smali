.class public abstract Lcom/serenegiant/glutils/EglTask;
.super Lcom/serenegiant/utils/MessageTask;
.source "EglTask.java"


# static fields
.field public static final EGL_FLAG_DEPTH_BUFFER:I = 0x1

.field public static final EGL_FLAG_RECORDABLE:I = 0x2

.field public static final EGL_FLAG_STENCIL_1BIT:I = 0x4

.field public static final EGL_FLAG_STENCIL_8BIT:I = 0x20


# instance fields
.field private mEgl:Lcom/serenegiant/glutils/EGLBase;

.field private mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;


# direct methods
.method public constructor <init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    .line 48
    invoke-virtual {p0, p3, p1, p2}, Lcom/serenegiant/glutils/EglTask;->init(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, p2, v0, p1}, Lcom/serenegiant/glutils/EglTask;->init(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getConfig()Lcom/serenegiant/glutils/EGLBase$IConfig;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->getConfig()Lcom/serenegiant/glutils/EGLBase$IConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getEGLContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v0

    return-object v0
.end method

.method protected getEgl()Lcom/serenegiant/glutils/EGLBase;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    return-object v0
.end method

.method protected isGLES3()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->getGlVersion()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeCurrent()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    return-void
.end method

.method protected onBeforeStop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    return-void
.end method

.method protected onInit(IILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 60
    instance-of v1, p3, Lcom/serenegiant/glutils/EGLBase$IContext;

    if-eqz v1, :cond_5

    :cond_0
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 66
    :goto_0
    check-cast p3, Lcom/serenegiant/glutils/EGLBase$IContext;

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {p2, p3, v2, v1, v3}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    .line 71
    :cond_5
    iget-object p1, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-nez p1, :cond_6

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "failed to create EglCore"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/EglTask;->callOnError(Ljava/lang/Exception;)Z

    .line 73
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->releaseSelf()V

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p1, v0, v0}, Lcom/serenegiant/glutils/EGLBase;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EglTask;->mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 76
    invoke-interface {p1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    :goto_2
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 95
    iget-object v0, p0, Lcom/serenegiant/glutils/EglTask;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->release()V

    return-void
.end method

.method protected takeRequest()Lcom/serenegiant/utils/MessageTask$Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Lcom/serenegiant/utils/MessageTask;->takeRequest()Lcom/serenegiant/utils/MessageTask$Request;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/serenegiant/glutils/EglTask;->mEglHolder:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    return-object v0
.end method
