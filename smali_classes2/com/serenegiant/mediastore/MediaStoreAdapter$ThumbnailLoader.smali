.class Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoader;
.super Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
.source "MediaStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailLoader"
.end annotation


# direct methods
.method public constructor <init>(Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;)V
    .locals 0

    .line 493
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;-><init>(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)V

    return-void
.end method


# virtual methods
.method protected loadBitmap(Landroid/content/ContentResolver;IIJII)Landroid/graphics/Bitmap;
    .locals 11

    move v0, p2

    move v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v5, v1

    move-object v4, p1

    move-wide v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 508
    :try_start_0
    invoke-static/range {v4 .. v10}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$800(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_1
    int-to-long v5, v1

    move-object v4, p1

    move-wide v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 505
    invoke-static/range {v4 .. v10}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$700(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    invoke-static {}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3
.end method
