.class public Lcom/jieli/stream/dv/running2/util/ThumbLoader;
.super Ljava/lang/Object;
.source "ThumbLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;,
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;,
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;,
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;,
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;,
        Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ThumbLoader"

.field private static instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;


# instance fields
.field private mDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 54
    div-int/lit8 v1, v1, 0x8

    .line 56
    new-instance v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->sizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/util/ThumbLoader;)Landroid/util/LruCache;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/util/ThumbLoader;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->replaceFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkIsAvi(Ljava/lang/String;)Z
    .locals 1

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".AVI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 461
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 462
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 464
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 465
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 468
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 469
    div-int/2addr v3, p2

    .line 470
    div-int/2addr v2, p3

    if-ge v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 480
    :goto_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 482
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x2

    .line 484
    invoke-static {p1, p2, p3, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;
    .locals 2

    .line 67
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    return-object v0
.end method

.method private getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 9

    .line 553
    new-instance v8, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V

    invoke-static {p2, v8}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getRecordVideoThumb(Ljava/lang/String;Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;)V

    return-void
.end method

.method private getThumbFromMov(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 10

    .line 604
    new-instance v1, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v1}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    .line 605
    new-instance v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$6;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v5, p4

    move-object v6, p2

    move-object v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$6;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    move-object v0, p2

    .line 653
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_0
    invoke-virtual {v1}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 655
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 657
    :goto_2
    invoke-virtual {v1}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 658
    throw v0
.end method

.method private replaceFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    const-string v0, "/"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 338
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :cond_0
    const-string v0, "Download"

    const-string v4, ".thumbnail"

    .line 343
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Record"

    .line 344
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 349
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 352
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private sizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    return p1

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    return p1
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 533
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 535
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V
    .locals 2

    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 393
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    sget-object p1, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->TAG:Ljava/lang/String;

    const-string v1, "delete file ok!"

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    new-instance p1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;

    invoke-direct {p1, p0, v0, p3, p4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/os/Handler;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    :cond_1
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string p3, "null"

    invoke-virtual {p2, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_3

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 252
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {p1, p3, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 258
    invoke-direct {p0, p2, p3, p4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    .line 260
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 262
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {p1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p2, v0

    :cond_3
    :goto_0
    return-object p2
.end method

.method public loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 7

    .line 282
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    new-instance v2, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;

    invoke-direct {v2, p0, v0, v1, p5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    const-string v1, "/"

    .line 295
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 297
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 299
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 301
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 304
    invoke-direct {p0, v1, p3, p4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 307
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->parseThumbPathForDuration(Ljava/lang/String;)I

    move-result v1

    .line 308
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v3, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v2, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;

    invoke-direct {v2, p0, v0, v1, p5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 312
    :cond_4
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->checkIsAvi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 313
    invoke-direct/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto :goto_1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 315
    invoke-direct/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getThumbFromMov(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 319
    invoke-virtual/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto :goto_1

    .line 322
    :cond_7
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_8

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 326
    :cond_8
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v0, v2, p5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 9

    .line 100
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string p3, "null"

    invoke-virtual {p2, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 105
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {p1, p3, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    new-instance p1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {p1, p0, p2, p5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v7, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 111
    new-instance v8, Lcom/jieli/stream/dv/running2/util/ThumbLoader$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$2;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;Landroid/os/Handler;)V

    invoke-static {p2, v8}, Lcom/jieli/stream/dv/running2/util/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    goto :goto_0

    .line 145
    :cond_2
    new-instance p1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {p1, p0, v0, p5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v7, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 12

    move-object v9, p0

    move-object v10, p2

    move-object/from16 v6, p6

    .line 163
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, v9, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    iget-object v2, v9, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {v1, p0, v0, v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, v9, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-loadWebThumbnail- bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 175
    new-instance v11, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {p2, v11}, Lcom/jieli/stream/dv/running2/util/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    goto :goto_0

    .line 212
    :cond_2
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {v1, p0, v0, v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 539
    sput-object v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->instance:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    .line 540
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->clearCache()V

    return-void
.end method

.method public removeBitmap(Ljava/lang/String;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
