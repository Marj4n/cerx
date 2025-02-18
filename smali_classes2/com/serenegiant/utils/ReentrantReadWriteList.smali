.class public Lcom/serenegiant/utils/ReentrantReadWriteList;
.super Ljava/lang/Object;
.source "ReentrantReadWriteList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 36
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mSensorLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    return-void
.end method

.method private static final isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected Locked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 239
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 237
    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 225
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected readLock()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method protected readUnlock()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 203
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 201
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 249
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 261
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 349
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 351
    iget-object v2, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 352
    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public tryGet(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 62
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected writeLock()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method protected writeUnlock()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/serenegiant/utils/ReentrantReadWriteList;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
