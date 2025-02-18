.class public Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;
.super Ljava/lang/Object;
.source "ReentrantReadWriteWeakRef.java"


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

.field private final mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/utils/ReentrantReadWriteWeakRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 45
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 53
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

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

    .line 160
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->tryGet()Ljava/lang/Object;

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

    .line 188
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public readUnlock()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public set(Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/utils/ReentrantReadWriteWeakRef<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 113
    :cond_1
    iput-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public set(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    goto :goto_2

    .line 136
    :cond_2
    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public swap(Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/utils/ReentrantReadWriteWeakRef<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->set(Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    return-object v1
.end method

.method public writeLock()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public writeUnlock()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteWeakRef;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
