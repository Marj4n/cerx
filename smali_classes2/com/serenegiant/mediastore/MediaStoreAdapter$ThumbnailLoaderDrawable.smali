.class Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;
.super Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;
.source "MediaStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailLoaderDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;II)V
    .locals 0

    .line 477
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;-><init>(Landroid/content/ContentResolver;II)V

    return-void
.end method


# virtual methods
.method protected checkBitmapCache(IJ)Landroid/graphics/Bitmap;
    .locals 3

    .line 487
    invoke-static {}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$600()Landroidx/collection/LruCache;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2, p2, p3}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$500(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected createThumbnailLoader()Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
    .locals 1

    .line 482
    new-instance v0, Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoader;

    invoke-direct {v0, p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoader;-><init>(Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;)V

    return-object v0
.end method
