.class final Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyAsyncQueryHandler"
.end annotation


# instance fields
.field private final mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 247
    iput-object p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    .line 262
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    invoke-virtual {p1, p3}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 264
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public requery()V
    .locals 9

    .line 251
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    monitor-enter v0

    const/4 v2, 0x0

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    sget-object v4, Lcom/serenegiant/mediastore/MediaStoreHelper;->QUERY_URI:Landroid/net/Uri;

    sget-object v5, Lcom/serenegiant/mediastore/MediaStoreHelper;->PROJ_MEDIA:[Ljava/lang/String;

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    .line 253
    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->access$100(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->mAdapter:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    invoke-static {v1}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->access$200(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    .line 252
    invoke-virtual/range {v1 .. v8}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
