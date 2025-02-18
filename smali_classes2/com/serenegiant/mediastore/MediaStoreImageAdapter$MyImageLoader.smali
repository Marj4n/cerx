.class Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;
.super Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyImageLoader"
.end annotation


# direct methods
.method public constructor <init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;-><init>(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)V

    return-void
.end method


# virtual methods
.method protected loadBitmap(Landroid/content/ContentResolver;IIJII)Landroid/graphics/Bitmap;
    .locals 1

    .line 329
    :try_start_0
    invoke-static {p1, p4, p5, p6, p7}, Lcom/serenegiant/mediastore/MediaStoreHelper;->getImage(Landroid/content/ContentResolver;JII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 331
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 333
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 334
    iget-object p5, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    invoke-virtual {p5, p4}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 335
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p5

    .line 336
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p6

    .line 337
    div-int/lit8 p7, p2, 0x2

    sub-int p7, p5, p7

    div-int v0, p3, p2

    sub-int v0, p6, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p5, p2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p6, p3

    invoke-virtual {p4, p7, v0, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    iget-object p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;->mParent:Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    invoke-virtual {p2, p4}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->onBoundsChange(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    const/4 p1, 0x0

    .line 341
    :goto_0
    invoke-static {}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->access$300()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object p1
.end method
