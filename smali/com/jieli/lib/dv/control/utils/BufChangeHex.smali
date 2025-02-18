.class public Lcom/jieli/lib/dv/control/utils/BufChangeHex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 5
    fill-array-data v1, :array_0

    sput-object v1, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    new-array v0, v0, [C

    .line 8
    fill-array-data v0, :array_1

    sput-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CI)I
    .locals 3

    const/16 v0, 0x10

    .line 96
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToInt([B)I
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 141
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 142
    aget-byte v5, p0, v4

    aput-byte v5, v1, v3

    goto :goto_1

    .line 144
    :cond_0
    aput-byte v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 146
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v0, 0x2

    .line 147
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v3, 0x1

    .line 148
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 149
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p0, v0

    add-int/2addr p0, v3

    add-int/2addr p0, v1

    return p0
.end method

.method public static contructIntTo2B(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static convertIntToAscii(I)C
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static decodeHex([C)[B
    .locals 6

    .line 75
    array-length v0, p0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    shr-int/lit8 v1, v0, 0x1

    .line 81
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    aget-char v4, p0, v2

    invoke-static {v4, v2}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 87
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 89
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Odd number of characters."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeHex([B)[C
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([BZ)[C
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    sget-object p1, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    :goto_0
    invoke-static {p0, p1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6

    .line 20
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 21
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 24
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 25
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    .line 26
    aput-char v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected static encodeHex2([B[C)[C
    .locals 6

    .line 32
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 33
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 36
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 37
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    :goto_0
    invoke-static {p0, p1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHexStr([B[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static encodeHexStr([B[C)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([B[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static str2HexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 52
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    and-int/lit16 v5, v4, 0xf0

    shr-int/lit8 v5, v5, 0x4

    .line 54
    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 56
    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
