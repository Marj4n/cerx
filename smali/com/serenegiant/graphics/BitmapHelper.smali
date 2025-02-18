.class public final Lcom/serenegiant/graphics/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "r"

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    invoke-static {p0, p1}, Lcom/serenegiant/graphics/BitmapHelper;->getOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 273
    invoke-static {v0, p0}, Lcom/serenegiant/graphics/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static asBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "r"

    .line 304
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 307
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 309
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    invoke-static {v2, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 311
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    invoke-static {p0, p1}, Lcom/serenegiant/graphics/BitmapHelper;->getOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 314
    invoke-static {v0, p0}, Lcom/serenegiant/graphics/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static asBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 215
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 216
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 217
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    invoke-static {v1, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 219
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static asBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p0, :cond_0

    .line 416
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 433
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    .line 435
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 437
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 438
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 439
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 69
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmap([BII)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    array-length p1, p0

    invoke-static {p0, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asBitmapStrictSize(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "r"

    .line 355
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 358
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 359
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 361
    invoke-static {v2, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    .line 363
    invoke-static {v4}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result v5

    shl-int/2addr v3, v5

    .line 364
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    .line 366
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 367
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    invoke-static {p0, p1}, Lcom/serenegiant/graphics/BitmapHelper;->getOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    if-ne v3, v4, :cond_0

    if-nez p0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 374
    :cond_0
    invoke-static {v0, p2, p3, p0}, Lcom/serenegiant/graphics/BitmapHelper;->scaleRotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 375
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static asBitmapStrictSize(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 235
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    invoke-static {v1, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    .line 240
    invoke-static {v3}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result v4

    shl-int/2addr v2, v4

    .line 241
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    .line 243
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v2, v3, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eq p0, p2, :cond_1

    .line 249
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static asBitmapStrictSize(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 456
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 457
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    .line 458
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 459
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 461
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    .line 463
    invoke-static {v3}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result v4

    shl-int/2addr v2, v4

    .line 464
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    .line 466
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-ne v2, v3, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 472
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 473
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static asBitmapStrictSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    .line 174
    invoke-static {v2}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result v3

    shl-int/2addr v1, v3

    .line 175
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 177
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-ne v1, v2, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 183
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static asBitmapStrictSize([BII)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    invoke-static {v0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    .line 109
    invoke-static {v2}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result v4

    shl-int/2addr v1, v4

    .line 110
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    array-length v4, p0

    invoke-static {p0, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-ne v1, v2, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 117
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/serenegiant/graphics/BitmapHelper;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static calcSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 714
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 715
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p0, p2, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    if-le v0, p0, :cond_2

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 719
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_1

    :cond_2
    int-to-float p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 721
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_1
    double-to-int p0, p0

    :goto_2
    return p0
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    .line 733
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 736
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object p1

    .line 731
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src bitmap should not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 596
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    int-to-float v0, p1

    .line 597
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    .line 599
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 601
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 602
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x3

    .line 603
    invoke-static {v1, p0, p1, p2, v0}, Lcom/serenegiant/graphics/BitmapHelper;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x0

    .line 486
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-static {p0, p1}, Lcom/serenegiant/utils/UriHelper;->getAbsolutePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "Orientation"

    .line 493
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    :catch_0
    :goto_0
    return v0
.end method

.method public static makeCheckBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 746
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x28

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 747
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    .line 748
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 749
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const v1, -0x333334

    .line 750
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41a00000    # 20.0f

    move-object v1, v7

    move-object v6, v8

    .line 751
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x42200000    # 40.0f

    .line 752
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 551
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 552
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 553
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 554
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 532
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 533
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v3

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 534
    invoke-virtual {v5, v0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 535
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static scaleRotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 572
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 573
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v3

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 574
    invoke-virtual {v5, v0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float p1, p3

    .line 575
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 576
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 619
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    const/4 v4, 0x0

    if-nez v1, :cond_4

    if-ltz v2, :cond_2

    if-gez v3, :cond_4

    .line 628
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 632
    div-int/lit8 v2, v2, 0x2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 633
    div-int/lit8 v3, v3, 0x2

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 634
    new-instance v5, Landroid/graphics/Rect;

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v2

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v5, v2, v3, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 639
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    .line 640
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v9, v3

    div-int/lit8 v3, v3, 0x2

    .line 641
    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v8, v2

    sub-int/2addr v9, v3

    invoke-direct {v6, v2, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 646
    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_3

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 650
    :cond_3
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 653
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v2

    int-to-float v5, v8

    int-to-float v6, v9

    div-float v12, v5, v6

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f666666    # 0.9f

    cmpl-float v3, v3, v12

    if-lez v3, :cond_7

    div-float/2addr v6, v2

    cmpg-float v1, v6, v14

    if-ltz v1, :cond_6

    cmpl-float v1, v6, v13

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v4

    goto :goto_4

    .line 662
    :cond_6
    :goto_2
    invoke-virtual {p0, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_4

    :cond_7
    div-float/2addr v5, v1

    cmpg-float v1, v5, v14

    if-ltz v1, :cond_9

    cmpl-float v1, v5, v13

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v5, v4

    goto :goto_5

    .line 669
    :cond_9
    :goto_3
    invoke-virtual {p0, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_4
    move-object v5, v0

    :goto_5
    if-eqz v5, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    .line 678
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_a
    move-object v0, v7

    :goto_6
    if-eqz v11, :cond_b

    if-eq v0, v7, :cond_b

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 688
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 689
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 691
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_d

    if-nez v11, :cond_c

    if-eq v0, v7, :cond_d

    .line 699
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    return-object v1
.end method
