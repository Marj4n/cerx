.class public Lcom/serenegiant/db/SQLiteBlobHelper;
.super Ljava/lang/Object;
.source "SQLiteBlobHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindBlobBitmap(Landroid/database/sqlite/SQLiteStatement;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 484
    invoke-static {p2}, Lcom/serenegiant/graphics/BitmapHelper;->BitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobDoubleArray(Landroid/database/sqlite/SQLiteStatement;I[D)V
    .locals 2

    .line 374
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->doubleArrayToByteArray([DII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobDoubleArray(Landroid/database/sqlite/SQLiteStatement;I[DII)V
    .locals 0

    .line 389
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->doubleArrayToByteArray([DII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobFloatArray(Landroid/database/sqlite/SQLiteStatement;I[F)V
    .locals 2

    .line 346
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->floatArrayToByteArray([FII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobFloatArray(Landroid/database/sqlite/SQLiteStatement;I[FII)V
    .locals 0

    .line 361
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->floatArrayToByteArray([FII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobIntArray(Landroid/database/sqlite/SQLiteStatement;I[I)V
    .locals 2

    .line 402
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->intArrayToByteArray([III)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobIntArray(Landroid/database/sqlite/SQLiteStatement;I[III)V
    .locals 0

    .line 415
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->intArrayToByteArray([III)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobLongArray(Landroid/database/sqlite/SQLiteStatement;I[J)V
    .locals 2

    .line 456
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->longArrayToByteArray([JII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobLongArray(Landroid/database/sqlite/SQLiteStatement;I[JII)V
    .locals 0

    .line 471
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->longArrayToByteArray([JII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobShortArray(Landroid/database/sqlite/SQLiteStatement;I[S)V
    .locals 2

    .line 428
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->shortArrayToByteArray([SII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobShortArray(Landroid/database/sqlite/SQLiteStatement;I[SII)V
    .locals 0

    .line 443
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->shortArrayToByteArray([SII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static byteArrayToDoubleArray([B)[D
    .locals 6

    if-eqz p0, :cond_3

    .line 136
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 137
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 138
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 140
    new-array v1, v0, [D

    .line 141
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 150
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToFloatArray([B)[F
    .locals 5

    if-eqz p0, :cond_3

    .line 76
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 80
    new-array v1, v0, [F

    .line 81
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 87
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToIntArray([B)[I
    .locals 5

    if-eqz p0, :cond_3

    .line 196
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 197
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 198
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 200
    new-array v1, v0, [I

    .line 201
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 202
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 204
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 207
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 208
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 209
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 210
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 211
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToLongArray([B)[J
    .locals 6

    if-eqz p0, :cond_3

    .line 316
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 317
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 318
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 319
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 320
    new-array v1, v0, [J

    .line 321
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 322
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 324
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 325
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 327
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 329
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 330
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 331
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToShortArray([B)[S
    .locals 5

    if-eqz p0, :cond_3

    .line 256
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 257
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 258
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 260
    new-array v1, v0, [S

    .line 261
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 262
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 266
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 267
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 268
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 269
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 270
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static doubleArrayToByteArray([DII)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x40

    .line 107
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 111
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 113
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 114
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 115
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 116
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 117
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 118
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 119
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 120
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static floatArrayToByteArray([FII)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x20

    .line 47
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 49
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 51
    aget v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 53
    aget p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 54
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 55
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 56
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 57
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 58
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 59
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 60
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B
    .locals 0

    .line 561
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 668
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 697
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmapStrictSize(Landroid/database/Cursor;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 730
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    .line 729
    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmapStrictSize([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmapStrictSize(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 747
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 746
    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmapStrictSize([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobDoubleArray(Landroid/database/Cursor;I)[D
    .locals 0

    .line 527
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToDoubleArray([B)[D

    move-result-object p0

    return-object p0
.end method

.method public static getBlobDoubleArray(Landroid/database/Cursor;Ljava/lang/String;[D)[D
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToDoubleArray([B)[D

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobFloatArray(Landroid/database/Cursor;I)[F
    .locals 0

    .line 497
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToFloatArray([B)[F

    move-result-object p0

    return-object p0
.end method

.method public static getBlobFloatArray(Landroid/database/Cursor;Ljava/lang/String;[F)[F
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToFloatArray([B)[F

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobIntArray(Landroid/database/Cursor;I)[I
    .locals 0

    .line 578
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToIntArray([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static getBlobIntArray(Landroid/database/Cursor;Ljava/lang/String;[I)[I
    .locals 1

    const/4 v0, 0x0

    .line 593
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToIntArray([B)[I

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobLongArray(Landroid/database/Cursor;I)[J
    .locals 0

    .line 638
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToLongArray([B)[J

    move-result-object p0

    return-object p0
.end method

.method public static getBlobLongArray(Landroid/database/Cursor;Ljava/lang/String;[J)[J
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToLongArray([B)[J

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobShortArray(Landroid/database/Cursor;I)[S
    .locals 0

    .line 608
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToShortArray([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getBlobShortArray(Landroid/database/Cursor;Ljava/lang/String;[S)[S
    .locals 1

    const/4 v0, 0x0

    .line 623
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToShortArray([B)[S

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static intArrayToByteArray([III)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x20

    .line 167
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 171
    aget v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 173
    aget p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 174
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 175
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 176
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 177
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 178
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 179
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 180
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static longArrayToByteArray([JII)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x40

    .line 287
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 289
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 291
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 293
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 294
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 295
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 296
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 297
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 298
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 299
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 300
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static shortArrayToByteArray([SII)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x10

    .line 227
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 229
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 231
    aget-short v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 233
    aget-short p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 234
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 235
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 236
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 237
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 238
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 239
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 240
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 243
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
