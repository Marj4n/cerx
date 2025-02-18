.class public Lcom/serenegiant/glutils/DumbRenderer;
.super Ljava/lang/Object;
.source "DumbRenderer.java"

# interfaces
.implements Lcom/serenegiant/glutils/IRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/DumbRenderer$RendererTask;,
        Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;
    }
.end annotation


# static fields
.field private static final REQUEST_DRAW:I = 0x2

.field private static final REQUEST_MIRROR:I = 0x4

.field private static final REQUEST_RESIZE:I = 0x3

.field private static final REQUEST_SET_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMirror:I

.field private mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/serenegiant/glutils/DumbRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/DumbRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mMirror:I

    .line 63
    new-instance v0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V

    iput-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    .line 64
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    sget-object p3, Lcom/serenegiant/glutils/DumbRenderer;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 65
    iget-object p1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->waitReady()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "failed to start renderer thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V
    .locals 1

    const/4 v0, 0x3

    .line 56
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/glutils/DumbRenderer;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/serenegiant/glutils/DumbRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMirror()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mMirror:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->release()V

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs requestRender([Ljava/lang/Object;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->offer(ILjava/lang/Object;)Z

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resize(II)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->offer(III)Z

    .line 124
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirror(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mMirror:I

    if-eq v1, p1, :cond_0

    .line 104
    iput p1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mMirror:I

    .line 105
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    const/4 v2, 0x4

    rem-int/2addr p1, v2

    invoke-virtual {v1, v2, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->offer(II)Z

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->offer(ILjava/lang/Object;)Z

    .line 97
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/serenegiant/glutils/DumbRenderer;->mRendererTask:Lcom/serenegiant/glutils/DumbRenderer$RendererTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->offer(ILjava/lang/Object;)Z

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
