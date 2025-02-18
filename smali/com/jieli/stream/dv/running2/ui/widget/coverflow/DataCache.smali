.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TE;>;"
        }
    .end annotation
.end field

.field private mCapacity:I

.field private final mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 13
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCapacity:I

    .line 14
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCapacity:I

    invoke-direct {p1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;I)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCapacity:I

    return p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 59
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1
.end method

.method public objectForKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1
.end method

.method public putObjectForKey(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->mCapacity:I

    return-void
.end method
