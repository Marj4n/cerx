.class public abstract Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MediaStoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LoaderDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDebugPaint:Landroid/graphics/Paint;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private final mHeight:I

.field private mLoader:Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;II)V
    .locals 1

    .line 187
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDebugPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mRotation:I

    .line 188
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mContentResolver:Landroid/content/ContentResolver;

    .line 189
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    iput p2, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mWidth:I

    .line 192
    iput p3, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)Landroid/content/ContentResolver;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mHeight:I

    return p0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 327
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 328
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->updateDrawMatrix(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private updateDrawMatrix(Landroid/graphics/Rect;)V
    .locals 8

    .line 222
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 228
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float v3, v0, p1

    int-to-float v2, v2

    mul-float v4, v2, v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    sub-float/2addr v2, v0

    mul-float v2, v2, v6

    add-float/2addr v2, v6

    float-to-int v0, v2

    move v5, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    div-float v0, v2, v0

    mul-float v1, v1, v0

    sub-float/2addr p1, v1

    mul-float p1, p1, v6

    add-float/2addr p1, v6

    float-to-int p1, p1

    move v7, v0

    move v0, p1

    move p1, v7

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 253
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v5

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 255
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->invalidateSelf()V

    return-void

    .line 223
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method


# virtual methods
.method protected abstract checkBitmapCache(IJ)Landroid/graphics/Bitmap;
.end method

.method protected abstract createThumbnailLoader()Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 206
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 207
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 208
    iget v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 209
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x3

    :goto_1
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->updateDrawMatrix(Landroid/graphics/Rect;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mLoader:Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;

    invoke-virtual {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 270
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->invalidateSelf()V

    return-void
.end method

.method public startLoad(IIJ)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mLoader:Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->cancelLoad()V

    .line 312
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->checkBitmapCache(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->createThumbnailLoader()Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->mLoader:Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;

    .line 318
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;->startLoad(IIJ)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->invalidateSelf()V

    return-void
.end method
