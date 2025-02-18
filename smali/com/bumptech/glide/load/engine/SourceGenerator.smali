.class Lcom/bumptech/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private dataToCache:Ljava/lang/Object;

.field private final helper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private loadDataListIndex:I

.field private originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

.field private sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private cacheData(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    .line 72
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    move-result-object v3

    .line 75
    new-instance v4, Lcom/bumptech/glide/load/engine/DataCacheWriter;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 76
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/engine/DataCacheWriter;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    .line 77
    new-instance v5, Lcom/bumptech/glide/load/engine/DataCacheKey;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSignature()Lcom/bumptech/glide/load/Key;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    iput-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 78
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    invoke-interface {v5, v6, v4}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    const/4 v4, 0x2

    .line 79
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 90
    new-instance p1, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    return-void

    :catchall_0
    move-exception p1

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw p1
.end method

.method private hasNextModelLoader()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 140
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p4}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->reschedule()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 112
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    move-object v2, p1

    .line 111
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    :goto_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startNext()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 45
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->cacheData(Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->startNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 51
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 53
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->hasNextModelLoader()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 58
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 59
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method
