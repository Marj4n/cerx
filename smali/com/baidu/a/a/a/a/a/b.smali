.class public final Lcom/baidu/a/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/a/a/a/a/a/b;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x2

    shl-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4c

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/baidu/a/a/a/a/a/b;->a:[B

    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v9, v1

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    add-int/lit8 v5, v7, 0x1

    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v4, 0x1

    aget-byte v11, p0, v10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v9, v11

    aget-byte v9, v8, v9

    aput-byte v9, v0, v7

    add-int/lit8 v7, v5, 0x1

    aget-byte v9, p0, v10

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v1

    add-int/lit8 v10, v4, 0x2

    aget-byte v11, p0, v10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x6

    or-int/2addr v9, v11

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    add-int/lit8 v5, v7, 0x1

    aget-byte v9, p0, v10

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v0, v7

    sub-int v7, v5, v6

    rem-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0xa

    aput-byte v8, v0, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_1
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eq v4, v7, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v5, 0x1

    sget-object v8, Lcom/baidu/a/a/a/a/a/b;->a:[B

    aget-byte v9, p0, v2

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v9, v1

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v9, p0, v2

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    add-int/2addr v2, v7

    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v9

    aget-byte v7, v8, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    aget-byte p0, v8, p0

    aput-byte p0, v0, v5

    add-int/lit8 v5, v4, 0x1

    aput-byte v6, v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lcom/baidu/a/a/a/a/a/b;->a:[B

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x2

    aget-byte v1, v7, v1

    aput-byte v1, v0, v5

    add-int/lit8 v1, v4, 0x1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, v7, p0

    aput-byte p0, v0, v4

    add-int/lit8 p0, v1, 0x1

    aput-byte v6, v0, v1

    add-int/lit8 v5, p0, 0x1

    aput-byte v6, v0, p0

    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p0
.end method

.method public static a([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/a/a/a/a/a/b;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)[B
    .locals 14

    div-int/lit8 v0, p1, 0x4

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [B

    return-object p0

    :cond_0
    new-array v0, v0, [B

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p1, -0x1

    aget-byte v4, p0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_c

    const/16 v6, 0xd

    if-eq v4, v6, :cond_c

    const/16 v7, 0x20

    if-eq v4, v7, :cond_c

    const/16 v8, 0x9

    if-eq v4, v8, :cond_c

    const/16 v9, 0x3d

    if-ne v4, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v4, p1, :cond_9

    aget-byte v12, p0, v4

    if-eq v12, v5, :cond_8

    if-eq v12, v6, :cond_8

    if-eq v12, v7, :cond_8

    if-eq v12, v8, :cond_8

    const/16 v13, 0x41

    if-lt v12, v13, :cond_2

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_2

    add-int/lit8 v12, v12, -0x41

    goto :goto_2

    :cond_2
    const/16 v13, 0x61

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_3

    add-int/lit8 v12, v12, -0x47

    goto :goto_2

    :cond_3
    const/16 v13, 0x30

    if-lt v12, v13, :cond_4

    const/16 v13, 0x39

    if-gt v12, v13, :cond_4

    add-int/lit8 v12, v12, 0x4

    goto :goto_2

    :cond_4
    const/16 v13, 0x2b

    if-ne v12, v13, :cond_5

    const/16 v12, 0x3e

    goto :goto_2

    :cond_5
    const/16 v13, 0x2f

    if-ne v12, v13, :cond_7

    const/16 v12, 0x3f

    :goto_2
    shl-int/lit8 v9, v9, 0x6

    int-to-byte v12, v12

    or-int/2addr v9, v12

    rem-int/lit8 v12, v11, 0x4

    if-ne v12, v1, :cond_6

    add-int/lit8 v12, v10, 0x1

    shr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v0, v10

    add-int/lit8 v10, v12, 0x1

    shr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v0, v12

    add-int/lit8 v12, v10, 0x1

    int-to-byte v13, v9

    aput-byte v13, v0, v10

    move v10, v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    if-lez v3, :cond_b

    mul-int/lit8 p0, v3, 0x6

    shl-int p0, v9, p0

    add-int/lit8 p1, v10, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v10

    const/4 v1, 0x1

    if-ne v3, v1, :cond_a

    add-int/lit8 v10, p1, 0x1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, p1

    goto :goto_4

    :cond_a
    move v10, p1

    :cond_b
    :goto_4
    new-array p0, v10, [B

    invoke-static {v0, v2, p0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_c
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0
.end method
