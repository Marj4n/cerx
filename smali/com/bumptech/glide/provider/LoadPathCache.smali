.class public Lcom/bumptech/glide/provider/LoadPathCache;
.super Ljava/lang/Object;
.source "LoadPathCache.java"


# instance fields
.field private final cache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final keyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private getKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/MultiClassKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/util/MultiClassKey;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/MultiClassKey;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0}, Lcom/bumptech/glide/util/MultiClassKey;-><init>()V

    .line 54
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/provider/LoadPathCache;->getKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/MultiClassKey;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    monitor-enter p2

    .line 21
    :try_start_0
    iget-object p3, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    invoke-virtual {p3, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    .line 22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p2, p0, Lcom/bumptech/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return p3

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/provider/LoadPathCache;->getKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/MultiClassKey;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    monitor-enter p2

    .line 34
    :try_start_0
    iget-object p3, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    invoke-virtual {p3, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/load/engine/LoadPath;

    .line 35
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p2, p0, Lcom/bumptech/glide/provider/LoadPathCache;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p3

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/LoadPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "***>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/LoadPathCache;->cache:Landroidx/collection/ArrayMap;

    new-instance v2, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v2, p1, p2, p3}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, p4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
