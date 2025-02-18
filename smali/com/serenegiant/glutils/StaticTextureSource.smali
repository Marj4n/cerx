.class public Lcom/serenegiant/glutils/StaticTextureSource;
.super Ljava/lang/Object;
.source "StaticTextureSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final REQUEST_ADD_SURFACE:I = 0x3

.field private static final REQUEST_DRAW:I = 0x1

.field private static final REQUEST_REMOVE_SURFACE:I = 0x4

.field private static final REQUEST_SET_BITMAP:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isRunning:Z

.field private mOnFrameTask:Ljava/lang/Runnable;

.field private mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/StaticTextureSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/glutils/StaticTextureSource;-><init>(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/glutils/StaticTextureSource;-><init>(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    .line 529
    new-instance v0, Lcom/serenegiant/glutils/StaticTextureSource$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/glutils/StaticTextureSource$1;-><init>(Lcom/serenegiant/glutils/StaticTextureSource;)V

    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mOnFrameTask:Ljava/lang/Runnable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 69
    :cond_1
    new-instance v2, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;-><init>(Lcom/serenegiant/glutils/StaticTextureSource;IIF)V

    iput-object v2, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    .line 70
    new-instance p2, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    sget-object v1, Lcom/serenegiant/glutils/StaticTextureSource;->TAG:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 71
    iget-object p2, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->waitReady()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Lcom/serenegiant/glutils/StaticTextureSource;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "failed to start renderer thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/glutils/StaticTextureSource;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->isRunning:Z

    return p0
.end method

.method static synthetic access$302(Lcom/serenegiant/glutils/StaticTextureSource;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->isRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mOnFrameTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/serenegiant/glutils/StaticTextureSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    return-object p0
.end method


# virtual methods
.method public addSurface(ILjava/lang/Object;Z)V
    .locals 1

    .line 115
    iget-object p3, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter p3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->addSurface(ILjava/lang/Object;)V

    .line 117
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSurface(ILjava/lang/Object;ZI)V
    .locals 1

    .line 131
    iget-object p3, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter p3

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v0, p1, p2, p4}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->addSurface(ILjava/lang/Object;I)V

    .line 133
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCount()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-static {v1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->access$100(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidth()I
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-static {v1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->access$000(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->isRunning:Z

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->isRunning:Z

    .line 92
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->release()V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 99
    :try_start_1
    iput-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    .line 100
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
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

    .line 94
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public removeSurface(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v1, p1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->removeSurface(I)V

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestFrame()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->removeRequest(I)V

    .line 154
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v1, v2}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->offer(I)Z

    .line 155
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/StaticTextureSource;->mRendererTask:Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    invoke-virtual {v1, p1}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
