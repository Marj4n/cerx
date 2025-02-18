.class public abstract Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;
.super Lcom/serenegiant/glutils/EglTask;
.source "AbstractRendererHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/AbstractRendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseRendererTask"
.end annotation


# instance fields
.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/serenegiant/glutils/RendererSurfaceRec;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsFirstFrameRendered:Z

.field private mMasterSurface:Landroid/view/Surface;

.field private mMasterTexture:Landroid/graphics/SurfaceTexture;

.field private mMirror:I

.field protected final mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

.field private mRotation:I

.field mTexId:I

.field final mTexMatrix:[F

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V
    .locals 7

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 550
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 0

    .line 559
    invoke-direct {p0, p4, p5, p6}, Lcom/serenegiant/glutils/EglTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 534
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const/16 p4, 0x10

    new-array p4, p4, [F

    .line 538
    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    const/4 p4, 0x0

    .line 542
    iput p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    .line 544
    iput p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mRotation:I

    .line 1186
    new-instance p4, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;

    invoke-direct {p4, p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;)V

    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 560
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x280

    .line 561
    :goto_0
    iput p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x1e0

    .line 562
    :goto_1
    iput p3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$202(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;Z)Z
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mIsFirstFrameRendered:Z

    return p1
.end method


# virtual methods
.method public addSurface(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 677
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->addSurface(ILjava/lang/Object;I)V

    return-void
.end method

.method public addSurface(ILjava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 692
    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface should be one of Surface, SurfaceTexture or SurfaceHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 701
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 702
    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(IIILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 704
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 719
    :catch_0
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected checkFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 874
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMasterSurface()V
    .locals 3

    .line 866
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 867
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    :cond_0
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkMasterSurface:invalid master surface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 869
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offerAndWait(IIILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected checkSurface()V
    .locals 5

    .line 1028
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1031
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 1032
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1035
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/glutils/RendererSurfaceRec;

    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 1036
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearSurface(II)V
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0x8

    .line 786
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(III)Z

    return-void
.end method

.method public clearSurfaceAll(I)V
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0x9

    .line 791
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(II)Z

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 823
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getParent()Lcom/serenegiant/glutils/AbstractRendererHolder;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkMasterSurface()V

    .line 654
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkMasterSurface()V

    .line 664
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected handleAddSurface(ILjava/lang/Object;I)V
    .locals 3

    .line 962
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkSurface()V

    .line 963
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 967
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->newInstance(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)Lcom/serenegiant/glutils/RendererSurfaceRec;

    move-result-object p3

    .line 968
    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    invoke-virtual {p0, p3, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V

    .line 969
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 971
    :try_start_2
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 974
    :cond_0
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface is already added: id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 977
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected handleClear(II)V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1050
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 1051
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    .line 1054
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

.method protected handleClearAll(I)V
    .locals 5

    .line 1062
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1065
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 1066
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1067
    invoke-virtual {v3, p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleDraw()V
    .locals 6

    .line 890
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 895
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mIsFirstFrameRendered:Z

    if-eqz v0, :cond_1

    .line 897
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->makeCurrent()V

    .line 898
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleUpdateTexture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->notifyCapture()V

    .line 905
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->preprocess()V

    .line 906
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleDrawClients()V

    .line 907
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnFrameAvailable()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 900
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw:thread id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    invoke-virtual {p0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(I)Z

    return-void

    .line 909
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->makeCurrent()V

    const/16 v0, 0x4000

    .line 910
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 911
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void

    .line 891
    :cond_2
    :goto_1
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkMasterSurface:invalid master surface"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(I)Z

    return-void
.end method

.method protected handleDrawClients()V
    .locals 5

    .line 925
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 929
    iget-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->canDraw()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 932
    :try_start_1
    iget v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {p0, v2, v3, v4}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->onDrawClient(Lcom/serenegiant/glutils/RendererSurfaceRec;I[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 935
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 936
    invoke-virtual {v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 940
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected handleMirror(I)V
    .locals 4

    .line 1158
    iput p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    .line 1159
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1162
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 1164
    invoke-virtual {p0, v3, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleReCreateMasterSurface()V
    .locals 3

    .line 1098
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->makeCurrent()V

    .line 1099
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReleaseMasterSurface()V

    .line 1100
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->makeCurrent()V

    const v0, 0x8d65

    const/16 v1, 0x2600

    .line 1101
    invoke-static {v0, v1}, Lcom/serenegiant/glutils/GLHelper;->initTex(II)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    .line 1102
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    .line 1103
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    .line 1104
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    iget v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1108
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnCreate(Landroid/view/Surface;)V

    return-void
.end method

.method protected handleReleaseMasterSurface()V
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1117
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1119
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    :goto_0
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    .line 1122
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnDestroy()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 1126
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1128
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    :goto_1
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    .line 1132
    :cond_1
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    if-eqz v0, :cond_2

    .line 1133
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->deleteTex(I)V

    const/4 v0, 0x0

    .line 1134
    iput v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    :cond_2
    return-void
.end method

.method protected handleRemoveAll()V
    .locals 6

    .line 1005
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1009
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v4, :cond_1

    .line 1011
    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    invoke-virtual {v4, v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    .line 1014
    :cond_0
    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1018
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1019
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleRemoveSurface(I)V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v1, :cond_1

    .line 989
    iget-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 990
    invoke-virtual {v1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 991
    invoke-virtual {v1, p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    .line 993
    :cond_0
    invoke-virtual {v1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkSurface()V

    .line 996
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 997
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleResize(II)V
    .locals 1

    .line 1146
    iput p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    .line 1147
    iput p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    .line 1148
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1149
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method protected handleRotate(II)V
    .locals 0

    return-void
.end method

.method protected handleSetMvp(IILjava/lang/Object;)V
    .locals 3

    .line 1082
    instance-of v0, p3, [F

    if-eqz v0, :cond_1

    check-cast p3, [F

    check-cast p3, [F

    array-length v0, p3

    add-int/lit8 v1, p2, 0x10

    if-lt v0, v1, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    iget-object p1, p1, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p3, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1089
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleUpdateTexture()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 916
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method protected height()I
    .locals 1

    .line 847
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    return v0
.end method

.method protected abstract internalOnStart()V
.end method

.method protected abstract internalOnStop()V
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 804
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mirror()I
    .locals 1

    .line 859
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    return v0
.end method

.method public mirror(I)V
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 852
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    .line 853
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(II)Z

    :cond_0
    return-void
.end method

.method protected abstract onDrawClient(Lcom/serenegiant/glutils/RendererSurfaceRec;I[F)V
.end method

.method protected onError(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final onStart()V
    .locals 3

    .line 570
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReCreateMasterSurface()V

    .line 571
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->internalOnStart()V

    .line 572
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$002(Lcom/serenegiant/glutils/AbstractRendererHolder;Z)Z

    .line 574
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onStop()V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$002(Lcom/serenegiant/glutils/AbstractRendererHolder;Z)Z

    .line 587
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->makeCurrent()V

    .line 590
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->internalOnStop()V

    .line 591
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReleaseMasterSurface()V

    .line 592
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveAll()V

    return-void

    :catchall_0
    move-exception v1

    .line 588
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract preprocess()V
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 623
    :pswitch_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveAll()V

    goto :goto_0

    .line 641
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleSetMvp(IILjava/lang/Object;)V

    goto :goto_0

    .line 638
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleClearAll(I)V

    goto :goto_0

    .line 635
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleClear(II)V

    goto :goto_0

    .line 632
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRotate(II)V

    goto :goto_0

    .line 629
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleMirror(I)V

    goto :goto_0

    .line 626
    :pswitch_7
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReCreateMasterSurface()V

    goto :goto_0

    .line 620
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveSurface(I)V

    goto :goto_0

    .line 617
    :pswitch_9
    invoke-virtual {p0, p2, p4, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleAddSurface(ILjava/lang/Object;I)V

    goto :goto_0

    .line 614
    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleResize(II)V

    goto :goto_0

    .line 611
    :pswitch_b
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleDraw()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSurface(I)V
    .locals 4

    .line 729
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 731
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 732
    invoke-virtual {p0, v1, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 734
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 749
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeSurfaceAll()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 759
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    .line 760
    invoke-virtual {p0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 762
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 776
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 835
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 838
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(III)Z

    :cond_1
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->setEnabled(Z)V

    .line 813
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

.method protected setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V
    .locals 0

    .line 1176
    iget-object p1, p1, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    invoke-static {p1, p2}, Lcom/serenegiant/glutils/RendererHolder;->setMirror([FI)V

    return-void
.end method

.method public setMvpMatrix(II[F)V
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0xa

    .line 797
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(IIILjava/lang/Object;)Z

    return-void
.end method

.method protected width()I
    .locals 1

    .line 843
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    return v0
.end method
