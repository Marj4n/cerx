.class final Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MediaStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyAsyncQueryHandler"
.end annotation


# instance fields
.field private final mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreAdapter;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 332
    iput-object p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    .line 351
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-virtual {p1, p3}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 353
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public requery()V
    .locals 11

    .line 336
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$100(Lcom/serenegiant/mediastore/MediaStoreAdapter;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$100(Lcom/serenegiant/mediastore/MediaStoreAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 339
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v1, v2}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$102(Lcom/serenegiant/mediastore/MediaStoreAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    sget-object v3, Lcom/serenegiant/mediastore/MediaStoreHelper;->SELECTIONS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v4}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$300(Lcom/serenegiant/mediastore/MediaStoreAdapter;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$202(Lcom/serenegiant/mediastore/MediaStoreAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v1, v2}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$402(Lcom/serenegiant/mediastore/MediaStoreAdapter;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v4, 0x0

    .line 343
    iget-object v5, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    sget-object v6, Lcom/serenegiant/mediastore/MediaStoreHelper;->QUERY_URI:Landroid/net/Uri;

    sget-object v7, Lcom/serenegiant/mediastore/MediaStoreHelper;->PROJ_MEDIA:[Ljava/lang/String;

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    .line 344
    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$200(Lcom/serenegiant/mediastore/MediaStoreAdapter;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$400(Lcom/serenegiant/mediastore/MediaStoreAdapter;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, p0

    .line 343
    invoke-virtual/range {v3 .. v10}, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
