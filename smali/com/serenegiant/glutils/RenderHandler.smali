.class public final Lcom/serenegiant/glutils/RenderHandler;
.super Landroid/os/Handler;
.source "RenderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/RenderHandler$RenderThread;,
        Lcom/serenegiant/glutils/RenderHandler$ContextParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_CHECK_VALID:I = 0x3

.field private static final MSG_RENDER_DRAW:I = 0x2

.field private static final MSG_RENDER_QUIT:I = 0x9

.field private static final MSG_RENDER_SET_GLCONTEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RenderHandler"


# instance fields
.field private mTexId:I

.field private final mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;


# direct methods
.method private constructor <init>(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/serenegiant/glutils/RenderHandler;->mTexId:I

    .line 132
    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/RenderHandler$RenderThread;Lcom/serenegiant/glutils/RenderHandler$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/RenderHandler;-><init>(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)V

    return-void
.end method

.method public static createHandler()Lcom/serenegiant/glutils/RenderHandler;
    .locals 1

    const-string v0, "RenderThread"

    .line 49
    invoke-static {v0}, Lcom/serenegiant/glutils/RenderHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/glutils/RenderHandler;

    move-result-object v0

    return-object v0
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/serenegiant/glutils/RenderHandler;
    .locals 1

    .line 54
    new-instance v0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->start()V

    .line 56
    invoke-virtual {v0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->getHandler()Lcom/serenegiant/glutils/RenderHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final draw()V
    .locals 4

    .line 72
    iget v0, p0, Lcom/serenegiant/glutils/RenderHandler;->mTexId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/serenegiant/glutils/RenderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/glutils/RenderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final draw(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/serenegiant/glutils/RenderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/RenderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final draw(I[F)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/serenegiant/glutils/RenderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/RenderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final draw([F)V
    .locals 3

    .line 80
    iget v0, p0, Lcom/serenegiant/glutils/RenderHandler;->mTexId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/serenegiant/glutils/RenderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/RenderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {p1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$000(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {p1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$000(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {v0, v1, p1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->handleDraw(I[F)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/serenegiant/glutils/RenderHandler$ContextParams;

    .line 110
    iget-object v2, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    iget-object v3, v0, Lcom/serenegiant/glutils/RenderHandler$ContextParams;->sharedContext:Lcom/serenegiant/glutils/EGLBase$IContext;

    iget-object v0, v0, Lcom/serenegiant/glutils/RenderHandler$ContextParams;->surface:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->handleSetEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {v0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$000(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x3

    .line 89
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/serenegiant/glutils/RenderHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {v1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$000(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {v1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$100(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler;->mThread:Lcom/serenegiant/glutils/RenderHandler$RenderThread;

    invoke-static {v1}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->access$100(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/serenegiant/glutils/RenderHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 101
    invoke-virtual {p0, v0}, Lcom/serenegiant/glutils/RenderHandler;->removeMessages(I)V

    const/16 v0, 0x9

    .line 102
    invoke-virtual {p0, v0}, Lcom/serenegiant/glutils/RenderHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final setEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;ILjava/lang/Object;Z)V
    .locals 2

    .line 62
    instance-of v0, p3, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p3, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p3, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unsupported window type:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    :goto_0
    iput p2, p0, Lcom/serenegiant/glutils/RenderHandler;->mTexId:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 67
    new-instance v1, Lcom/serenegiant/glutils/RenderHandler$ContextParams;

    invoke-direct {v1, p1, p3}, Lcom/serenegiant/glutils/RenderHandler$ContextParams;-><init>(Lcom/serenegiant/glutils/EGLBase$IContext;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p4, v0, v1}, Lcom/serenegiant/glutils/RenderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/RenderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
