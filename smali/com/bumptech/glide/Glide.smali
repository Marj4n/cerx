.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/bumptech/glide/MemoryCategory;

.field private final registry:Lcom/bumptech/glide/Registry;

.field private final requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/request/RequestOptions;)V
    .locals 14

    move-object v8, p0

    move-object v1, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 262
    const-class v4, [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v8, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    .line 106
    sget-object v5, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v5, v8, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v5, p2

    .line 263
    iput-object v5, v8, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 264
    iput-object v2, v8, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 265
    iput-object v3, v8, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 266
    iput-object v0, v8, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object/from16 v6, p6

    .line 267
    iput-object v6, v8, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-object/from16 v6, p7

    .line 268
    iput-object v6, v8, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 270
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/RequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/DecodeFormat;

    .line 271
    new-instance v7, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-direct {v7, v0, v2, v6}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v7, v8, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    new-instance v6, Lcom/bumptech/glide/Registry;

    invoke-direct {v6}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v6, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 276
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 278
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v7, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v7

    .line 279
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-direct {v6, v7, v9, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 280
    new-instance v7, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    iget-object v9, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 281
    invoke-virtual {v9}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, p1, v9, v2, v3}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 283
    iget-object v9, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    const-class v10, Ljava/nio/ByteBuffer;

    new-instance v11, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v11}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    invoke-virtual {v9, v10, v11}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Ljava/io/InputStream;

    new-instance v11, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v11, v3}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 284
    invoke-virtual {v9, v10, v11}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Ljava/nio/ByteBuffer;

    const-class v11, Landroid/graphics/Bitmap;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v12, v6}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 286
    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Ljava/io/InputStream;

    const-class v11, Landroid/graphics/Bitmap;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v12, v6, v3}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 288
    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Landroid/os/ParcelFileDescriptor;

    const-class v11, Landroid/graphics/Bitmap;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v12, v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 290
    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Landroid/graphics/Bitmap;

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v11}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    .line 291
    invoke-virtual {v9, v10, v11}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Ljava/nio/ByteBuffer;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v13, v6}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    invoke-direct {v12, v0, v2, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 293
    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v9

    const-class v10, Ljava/io/InputStream;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v13, v6, v3}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v12, v0, v2, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 296
    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v12, v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v11, v0, v2, v12}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 299
    invoke-virtual {v6, v9, v10, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v11}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    invoke-direct {v10, v2, v11}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 301
    invoke-virtual {v6, v9, v10}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v9, Ljava/io/InputStream;

    const-class v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v11, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    iget-object v12, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 304
    invoke-virtual {v12}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12, v7, v3}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 303
    invoke-virtual {v6, v9, v10, v11}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v9, Ljava/nio/ByteBuffer;

    const-class v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 305
    invoke-virtual {v6, v9, v10, v7}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 306
    invoke-virtual {v6, v7, v9}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v9, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    new-instance v10, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    .line 308
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v9, Landroid/graphics/Bitmap;

    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v10, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 309
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    new-instance v7, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 311
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/io/File;

    const-class v9, Ljava/nio/ByteBuffer;

    new-instance v10, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 312
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/io/File;

    const-class v9, Ljava/io/InputStream;

    new-instance v10, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 313
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/io/File;

    const-class v9, Ljava/io/File;

    new-instance v10, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    .line 314
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/io/File;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    new-instance v10, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 315
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    const-class v7, Ljava/io/File;

    const-class v9, Ljava/io/File;

    new-instance v10, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    .line 316
    invoke-virtual {v6, v7, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v6

    new-instance v7, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    invoke-direct {v7, v3}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 318
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v9, v0}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 319
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v9, v0}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 320
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/lang/Integer;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v9, v0}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 324
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v9, v0}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 325
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 329
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 330
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/lang/String;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 331
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;-><init>()V

    .line 332
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 334
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    invoke-direct {v9, p1}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v9, p1}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 340
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 344
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 346
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/net/URL;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 347
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/File;

    new-instance v9, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v9, p1}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v7, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 349
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    .line 350
    invoke-virtual {v3, v4, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 351
    invoke-virtual {v3, v4, v6, v7}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v6, Landroid/graphics/Bitmap;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    invoke-direct {v9, v0, v2}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 353
    invoke-virtual {v3, v6, v7, v9}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    .line 355
    invoke-virtual {v0, v2, v4, v3}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v3, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    .line 356
    invoke-virtual {v0, v2, v4, v3}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    .line 358
    new-instance v3, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v3}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    .line 359
    new-instance v9, Lcom/bumptech/glide/GlideContext;

    iget-object v2, v8, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    move-object v0, v9

    move-object/from16 v4, p9

    move-object v6, p0

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/load/engine/Engine;Landroid/content/ComponentCallbacks2;I)V

    iput-object v9, v8, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 2

    .line 151
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_1

    .line 152
    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->initGlide(Landroid/content/Context;)V

    .line 156
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 159
    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-object p0
.end method

.method private static getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 3

    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 231
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 245
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 241
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    nop

    const/4 v0, 0x5

    const-string v1, "Glide"

    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 235
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 117
    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    .line 139
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 509
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lcom/bumptech/glide/Glide;)V
    .locals 0

    .line 164
    sput-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-void
.end method

.method private static initGlide(Landroid/content/Context;)V
    .locals 9

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/bumptech/glide/Glide;->getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    new-instance v1, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 185
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v4

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 187
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/module/GlideModule;

    .line 188
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/module/GlideModule;

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered GlideModule from manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 207
    :goto_2
    new-instance v3, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v3}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    .line 208
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/GlideBuilder;->setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v2

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/module/GlideModule;

    .line 210
    invoke-interface {v4, p0, v2}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 213
    invoke-virtual {v0, p0, v2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 215
    :cond_8
    invoke-virtual {v2, p0}, Lcom/bumptech/glide/GlideBuilder;->build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    sput-object v2, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/module/GlideModule;

    .line 217
    sget-object v3, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v3, v3, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, p0, v3}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 220
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, p0, v1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Registry;)V

    :cond_a
    return-void
.end method

.method public static tearDown()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 551
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 574
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 540
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 563
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 471
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 442
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 444
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 445
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getGlideContext()Lcom/bumptech/glide/GlideContext;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 658
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    return-void
.end method

.method registerRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    monitor-exit v0

    return-void

    .line 631
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromManagers(Lcom/bumptech/glide/request/target/Target;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestManager;

    .line 620
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    monitor-exit v0

    return-void

    .line 624
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to remove target from managers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 624
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2

    .line 497
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 499
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 500
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 502
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1

    .line 456
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 459
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 460
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    return-void
.end method

.method unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 643
    monitor-exit v0

    return-void

    .line 640
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 643
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
