.class final Lcom/serenegiant/glutils/RenderHandler$RenderThread;
.super Ljava/lang/Thread;
.source "RenderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/RenderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderThread"
.end annotation


# static fields
.field private static final TAG_THREAD:Ljava/lang/String; = "RenderThread"


# instance fields
.field private mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

.field private mEgl:Lcom/serenegiant/glutils/EGLBase;

.field private mHandler:Lcom/serenegiant/glutils/RenderHandler;

.field private mSurface:Landroid/view/Surface;

.field private final mSync:Ljava/lang/Object;

.field private mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/glutils/RenderHandler$RenderThread;)Landroid/view/Surface;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private final clear()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 261
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 262
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    return-void
.end method

.method private final release()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 238
    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSurface:Landroid/view/Surface;

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->clear()V

    .line 245
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 246
    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->release()V

    .line 250
    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 242
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getHandler()Lcom/serenegiant/glutils/RenderHandler;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 168
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/glutils/RenderHandler;

    return-object v0

    .line 168
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleDraw(I[F)V
    .locals 2

    if-ltz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 212
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 213
    iget-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {p1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    :cond_0
    return-void
.end method

.method public final handleSetEglContext(Lcom/serenegiant/glutils/EGLBase$IContext;Ljava/lang/Object;Z)V
    .locals 4

    .line 180
    invoke-direct {p0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->release()V

    .line 181
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    instance-of v1, p2, Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    instance-of v1, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/Surface;

    move-object v3, p2

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSurface:Landroid/view/Surface;

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 186
    invoke-static {v0, p1, v1, v1, p3}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    .line 188
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 189
    new-instance p1, Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-direct {p1, p3}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "RenderHandler"

    .line 191
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz p1, :cond_2

    .line 193
    invoke-interface {p1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 194
    iput-object v2, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mTargetSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 198
    iput-object v2, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 185
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 3

    .line 220
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 221
    iget-object v0, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    new-instance v1, Lcom/serenegiant/glutils/RenderHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/serenegiant/glutils/RenderHandler;-><init>(Lcom/serenegiant/glutils/RenderHandler$RenderThread;Lcom/serenegiant/glutils/RenderHandler$1;)V

    iput-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/glutils/RenderHandler;

    .line 223
    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 227
    invoke-direct {p0}, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->release()V

    .line 228
    iget-object v1, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_1
    iput-object v2, p0, Lcom/serenegiant/glutils/RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/glutils/RenderHandler;

    .line 230
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 224
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
