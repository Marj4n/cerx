.class Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;
.super Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoaderDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;II)V
    .locals 0

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;-><init>(Landroid/content/ContentResolver;II)V

    return-void
.end method


# virtual methods
.method protected checkBitmapCache(IJ)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createThumbnailLoader()Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
    .locals 1

    .line 308
    new-instance v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;

    invoke-direct {v0, p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;-><init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;)V

    return-object v0
.end method
