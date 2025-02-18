.class public abstract Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ImageLoader"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHashCode:I

.field private mId:J

.field private mMediaType:I

.field protected final mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

.field private final mTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)V
    .locals 1

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    .line 346
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mTask:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected abstract loadBitmap(Landroid/content/ContentResolver;IIJII)Landroid/graphics/Bitmap;
.end method

.method public run()V
    .locals 10

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget v2, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mMediaType:I

    .line 378
    iget v3, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mHashCode:I

    .line 379
    iget-wide v8, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mId:J

    .line 380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    invoke-static {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->access$000(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    invoke-static {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->access$100(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)I

    move-result v6

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    invoke-static {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->access$200(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)I

    move-result v7

    move-object v0, p0

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->loadBitmap(Landroid/content/ContentResolver;IIJII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mId:J

    cmp-long v2, v8, v0

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v0, v1, v2}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 380
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startLoad(IIJ)V
    .locals 0

    monitor-enter p0

    .line 355
    :try_start_0
    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mMediaType:I

    .line 356
    iput p2, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mHashCode:I

    .line 357
    iput-wide p3, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mId:J

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 359
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->mTask:Ljava/util/concurrent/FutureTask;

    invoke-static {p1}, Lcom/serenegiant/utils/ThreadPool;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
