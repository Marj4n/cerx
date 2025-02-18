.class public Lcom/serenegiant/utils/ReentrantReadWriteReference;
.super Ljava/lang/Object;
.source "ReentrantReadWriteReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private mRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/utils/ReentrantReadWriteReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/utils/ReentrantReadWriteReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 45
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 53
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->tryGet()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readLock()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public readUnlock()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public set(Lcom/serenegiant/utils/ReentrantReadWriteReference;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/utils/ReentrantReadWriteReference<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public set(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public swap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteReference;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tryGet()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mRef:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeLock()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public writeUnlock()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteReference;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
