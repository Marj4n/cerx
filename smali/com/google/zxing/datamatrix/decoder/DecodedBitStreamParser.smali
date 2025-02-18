.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final ANSIX12_ENCODE:I = 0x4

.field private static final ASCII_ENCODE:I = 0x1

.field private static final BASE256_ENCODE:I = 0x6

.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_ENCODE:I = 0x2

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final EDIFACT_ENCODE:I = 0x5

.field private static final PAD_ENCODE:I = 0x0

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_ENCODE:I = 0x3

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x27s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    const/4 v5, 0x1

    :cond_0
    if-ne v5, v4, :cond_1

    invoke-static {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    invoke-static {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_6
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    move-object v3, v4

    :cond_9
    invoke-direct {v0, p0, v1, v3, v4}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    aget v3, v1, v2

    if-nez v3, :cond_3

    const/16 v3, 0xd

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v3, 0x2a

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/16 v3, 0x3e

    goto :goto_1

    :cond_5
    if-ne v3, v0, :cond_6

    const/16 v3, 0x20

    goto :goto_1

    :cond_6
    const/16 v4, 0xe

    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x2c

    :goto_2
    int-to-char v3, v3

    goto :goto_1

    :cond_7
    const/16 v4, 0x28

    if-ge v3, v4, :cond_8

    add-int/lit8 v3, v3, 0x33

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_0

    return-void
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_12

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    if-eqz v1, :cond_1

    add-int/lit16 v2, v2, 0x80

    :cond_1
    sub-int/2addr v2, v4

    int-to-char p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v4

    :cond_2
    const/16 v3, 0x81

    if-ne v2, v3, :cond_3

    return v0

    :cond_3
    const/16 v3, 0xe5

    if-gt v2, v3, :cond_5

    add-int/lit16 v2, v2, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v3, 0xe6

    if-ne v2, v3, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/16 v3, 0xe7

    if-ne v2, v3, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    const/16 v3, 0xe8

    if-eq v2, v3, :cond_11

    const/16 v3, 0xe9

    if-eq v2, v3, :cond_11

    const/16 v3, 0xea

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    const/16 v3, 0xeb

    if-ne v2, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const/16 v3, 0xec

    const-string v5, "\u001e\u0004"

    if-ne v2, v3, :cond_a

    const-string v2, "[)>\u001e05\u001d"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const/16 v3, 0xed

    if-ne v2, v3, :cond_b

    const-string v2, "[)>\u001e06\u001d"

    goto :goto_0

    :cond_b
    const/16 v3, 0xee

    if-ne v2, v3, :cond_c

    const/4 p0, 0x4

    return p0

    :cond_c
    const/16 v3, 0xef

    if-ne v2, v3, :cond_d

    const/4 p0, 0x3

    return p0

    :cond_d
    const/16 v3, 0xf0

    if-ne v2, v3, :cond_e

    const/4 p0, 0x5

    return p0

    :cond_e
    const/16 v3, 0xf1

    if-ne v2, v3, :cond_f

    goto :goto_1

    :cond_f
    const/16 v3, 0xf2

    if-lt v2, v3, :cond_11

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_10

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_11
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_0

    return v4

    :cond_12
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0xfa

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 v1, v1, -0xf9

    mul-int/lit16 v1, v1, 0xfa

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    :goto_0
    if-ltz v1, :cond_4

    new-array v3, v1, [B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-lt v5, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "ISO8859_1"

    invoke-direct {p0, v3, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Platform does not support required encoding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    const/16 v6, 0xfe

    if-ne v4, v6, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_10

    aget v6, v1, v4

    if-eqz v5, :cond_c

    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    if-ne v5, v0, :cond_4

    if-eqz v3, :cond_3

    add-int/lit16 v6, v6, 0xe0

    :goto_1
    int-to-char v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x60

    int-to-char v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v5

    if-ge v6, v8, :cond_7

    aget-char v5, v5, v6

    if-eqz v3, :cond_6

    add-int/lit16 v5, v5, 0x80

    int-to-char v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_7
    const/16 v3, 0x1b

    if-eq v6, v3, :cond_9

    const/16 v3, 0x1e

    if-ne v6, v3, :cond_8

    :goto_3
    move v3, v7

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit16 v6, v6, 0x80

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    if-ge v6, v0, :cond_d

    add-int/lit8 v5, v6, 0x1

    goto :goto_5

    :cond_d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_f

    aget-char v6, v7, v6

    if-eqz v3, :cond_e

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    return-void
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_3

    or-int/lit8 v3, v3, 0x40

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_6
    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_11

    aget v6, v1, v5

    if-eqz v4, :cond_d

    const/4 v7, 0x1

    if-eq v4, v7, :cond_b

    const/4 v8, 0x2

    if-eq v4, v8, :cond_6

    if-ne v4, v0, :cond_5

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v4

    if-ge v6, v7, :cond_4

    aget-char v4, v4, v6

    if-eqz v3, :cond_3

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_6
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v4

    if-ge v6, v8, :cond_8

    aget-char v4, v4, v6

    if-eqz v3, :cond_7

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_8
    const/16 v3, 0x1b

    if-eq v6, v3, :cond_a

    const/16 v3, 0x1e

    if-ne v6, v3, :cond_9

    :goto_3
    move v3, v7

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_b
    if-eqz v3, :cond_c

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    goto :goto_1

    :cond_c
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    if-ge v6, v0, :cond_e

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_5

    :cond_e
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_10

    aget-char v6, v7, v6

    if-eqz v3, :cond_f

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_0

    return-void
.end method

.method private static parseTwoBytes(II[I)V
    .locals 2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    div-int/lit8 v0, p0, 0x28

    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    aput p0, p2, p1

    return-void
.end method

.method private static unrandomize255State(II)B
    .locals 0

    mul-int/lit16 p1, p1, 0x95

    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    :goto_0
    int-to-byte p0, p0

    return p0
.end method
