.class public Lcom/serenegiant/mediastore/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediastore/MediaStoreHelper$ImageLoader;,
        Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;,
        Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MEDIA_ALL:I = 0x0

.field public static final MEDIA_IMAGE:I = 0x1

.field protected static final MEDIA_TYPE_NUM:I = 0x3

.field public static final MEDIA_VIDEO:I = 0x2

.field protected static final PROJ_INDEX_DATA:I = 0x4

.field protected static final PROJ_INDEX_DISPLAY_NAME:I = 0x5

.field protected static final PROJ_INDEX_HEIGHT:I = 0x7

.field protected static final PROJ_INDEX_ID:I = 0x0

.field protected static final PROJ_INDEX_MEDIA_TYPE:I = 0x2

.field protected static final PROJ_INDEX_MIME_TYPE:I = 0x3

.field protected static final PROJ_INDEX_TITLE:I = 0x1

.field protected static final PROJ_INDEX_WIDTH:I = 0x6

.field protected static final PROJ_MEDIA:[Ljava/lang/String;

.field protected static final QUERY_URI:Landroid/net/Uri;

.field protected static final SELECTIONS:[Ljava/lang/String;

.field protected static final SELECTION_MEDIA_ALL:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field protected static final SELECTION_MEDIA_IMAGE:Ljava/lang/String; = "media_type=1"

.field protected static final SELECTION_MEDIA_VIDEO:Ljava/lang/String; = "media_type=3"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    const-class v0, Lcom/serenegiant/mediastore/MediaStoreHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "media_type"

    const-string v4, "mime_type"

    const-string v5, "_data"

    const-string v6, "_display_name"

    const-string v7, "width"

    const-string v8, "height"

    .line 57
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreHelper;->PROJ_MEDIA:[Ljava/lang/String;

    const-string v0, "media_type=1 OR media_type=3"

    const-string v1, "media_type=1"

    const-string v2, "media_type=3"

    .line 87
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreHelper;->SELECTIONS:[Ljava/lang/String;

    const-string v0, "external"

    .line 101
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreHelper;->QUERY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 427
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 428
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz p1, :cond_1

    if-lez p2, :cond_0

    mul-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v2, p0

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    if-gtz p2, :cond_3

    if-lez p1, :cond_2

    mul-int p1, p1, p0

    int-to-float p1, p1

    int-to-float p2, p0

    div-float/2addr p1, p2

    float-to-int p2, p1

    goto :goto_1

    :cond_2
    move p2, p0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    if-gt p0, p2, :cond_4

    if-le v0, v1, :cond_6

    :cond_4
    if-le v0, p0, :cond_5

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    .line 445
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :cond_5
    int-to-float p0, v0

    int-to-float p1, v1

    div-float/2addr p0, p1

    .line 447
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_6
    :goto_2
    return p1
.end method

.method protected static final getImage(Landroid/content/ContentResolver;JII)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 401
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "r"

    .line 400
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 404
    :try_start_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 407
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 409
    invoke-static {p2, p3, p4}, Lcom/serenegiant/mediastore/MediaStoreHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p3

    iput p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x0

    .line 410
    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 411
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method
