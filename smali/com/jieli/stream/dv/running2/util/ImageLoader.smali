.class public Lcom/jieli/stream/dv/running2/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static TAG:Ljava/lang/String; = "ImageLoader"

.field private static instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;


# instance fields
.field private mImageCache:Landroid/util/LruCache;
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

.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 30
    div-int/lit8 v1, v1, 0x8

    .line 32
    new-instance v0, Lcom/jieli/stream/dv/running2/util/ImageLoader$1;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/util/ImageLoader$1;-><init>(Lcom/jieli/stream/dv/running2/util/ImageLoader;I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->mImageCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/util/ImageLoader;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->sizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/util/ImageLoader;
    .locals 2

    .line 52
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/jieli/stream/dv/running2/util/ImageLoader;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ImageLoader;->instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ImageLoader;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/util/ImageLoader;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/ImageLoader;->instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;

    return-object v0
.end method

.method private sizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    return p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    return p1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->mImageCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->mImageCache:Landroid/util/LruCache;

    const-string v0, "null"

    invoke-virtual {p2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 73
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 78
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/jieli/stream/dv/running2/util/ImageLoader;->instance:Lcom/jieli/stream/dv/running2/util/ImageLoader;

    .line 96
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->clearCache()V

    return-void
.end method
