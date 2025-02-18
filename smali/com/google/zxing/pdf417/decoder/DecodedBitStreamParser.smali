.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final AL:I = 0x1c

.field private static final ALPHA:I = 0x0

.field private static final ALPHA_SHIFT:I = 0x4

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/lang/String;

.field private static final LL:I = 0x1b

.field private static final LOWER:I = 0x1

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED:I = 0x2

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT:I = 0x3

.field private static final PUNCT_CHARS:[C

.field private static final PUNCT_SHIFT:I = 0x5

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v1, "000000000000000000000000000000000000000000001"

    const-string v2, "000000000000000000000000000000000000000000900"

    const-string v3, "000000000000000000000000000000000000000810000"

    const-string v4, "000000000000000000000000000000000000729000000"

    const-string v5, "000000000000000000000000000000000656100000000"

    const-string v6, "000000000000000000000000000000590490000000000"

    const-string v7, "000000000000000000000000000531441000000000000"

    const-string v8, "000000000000000000000000478296900000000000000"

    const-string v9, "000000000000000000000430467210000000000000000"

    const-string v10, "000000000000000000387420489000000000000000000"

    const-string v11, "000000000000000348678440100000000000000000000"

    const-string v12, "000000000000313810596090000000000000000000000"

    const-string v13, "000000000282429536481000000000000000000000000"

    const-string v14, "000000254186582832900000000000000000000000000"

    const-string v15, "000228767924549610000000000000000000000000000"

    const-string v16, "205891132094649000000000000000000000000000000"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

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
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x30

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    const/4 v5, 0x0

    :goto_1
    const/4 v7, -0x1

    if-le v4, v7, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    rem-int/lit16 v5, v9, 0x3e8

    div-int/lit16 v9, v9, 0x3e8

    rem-int/lit8 v10, v5, 0xa

    add-int/2addr v10, v6

    int-to-char v10, v10

    invoke-virtual {v1, v8, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    div-int/lit8 v8, v5, 0xa

    rem-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v4, v4, -0x3

    move v5, v9

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuffer;)I
    .locals 24

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v11, 0x39c

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x6

    const/16 v16, 0x0

    if-ne v0, v12, :cond_7

    new-array v0, v14, [C

    new-array v9, v14, [I

    move/from16 v10, p2

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    aget v3, p1, v16

    if-ge v10, v3, :cond_5

    if-nez v19, :cond_5

    add-int/lit8 v3, v10, 0x1

    aget v10, p1, v10

    if-ge v10, v13, :cond_1

    aput v10, v9, v15

    add-int/lit8 v15, v15, 0x1

    mul-long v17, v17, v7

    int-to-long v7, v10

    add-long v17, v17, v7

    :cond_0
    move v10, v3

    goto :goto_1

    :cond_1
    if-eq v10, v13, :cond_2

    if-eq v10, v12, :cond_2

    if-eq v10, v6, :cond_2

    if-eq v10, v11, :cond_2

    if-eq v10, v5, :cond_2

    if-eq v10, v4, :cond_2

    if-ne v10, v2, :cond_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    const/16 v19, 0x1

    :goto_1
    rem-int/lit8 v3, v15, 0x5

    if-nez v3, :cond_4

    if-lez v15, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v14, :cond_3

    rsub-int/lit8 v7, v3, 0x5

    const-wide/16 v22, 0x100

    rem-long v14, v17, v22

    long-to-int v15, v14

    int-to-char v14, v15

    aput-char v14, v0, v7

    const/16 v7, 0x8

    shr-long v17, v17, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x6

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v15, 0x0

    :cond_4
    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    goto :goto_0

    :cond_5
    div-int/lit8 v0, v15, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_3
    if-ge v0, v15, :cond_6

    aget v2, v9, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v10

    goto/16 :goto_9

    :cond_7
    if-ne v0, v11, :cond_d

    move/from16 v0, p2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    :goto_4
    aget v14, p1, v16

    if-ge v0, v14, :cond_e

    if-nez v3, :cond_e

    add-int/lit8 v14, v0, 0x1

    aget v0, p1, v0

    if-ge v0, v13, :cond_8

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v17, 0x384

    mul-long v9, v9, v17

    move/from16 p0, v3

    int-to-long v2, v0

    add-long/2addr v9, v2

    move/from16 v3, p0

    move v0, v14

    const/16 v2, 0x39a

    goto :goto_6

    :cond_8
    move/from16 p0, v3

    const-wide/16 v17, 0x384

    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v11, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    const/16 v2, 0x39a

    if-ne v0, v2, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v3, p0

    move v0, v14

    goto :goto_6

    :cond_a
    const/16 v2, 0x39a

    :goto_5
    add-int/lit8 v14, v14, -0x1

    move v0, v14

    const/4 v3, 0x1

    :goto_6
    rem-int/lit8 v14, v7, 0x5

    if-nez v14, :cond_c

    if-lez v7, :cond_c

    const/4 v8, 0x6

    new-array v14, v8, [C

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v8, :cond_b

    rsub-int/lit8 v19, v15, 0x5

    const-wide/16 v20, 0xff

    move/from16 p0, v3

    and-long v2, v9, v20

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, v14, v19

    const/16 v2, 0x8

    shr-long/2addr v9, v2

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p0

    const/16 v2, 0x39a

    goto :goto_7

    :cond_b
    move/from16 p0, v3

    const/16 v2, 0x8

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_c
    move/from16 p0, v3

    const/16 v2, 0x8

    const/4 v8, 0x6

    :goto_8
    move/from16 v3, p0

    const/16 v2, 0x39a

    goto :goto_4

    :cond_d
    move/from16 v0, p2

    :cond_e
    :goto_9
    return v0
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v2, v3, :cond_2

    const/16 v3, 0x391

    if-eq v1, v3, :cond_0

    const/16 v3, 0x39c

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_2

    :cond_0
    :pswitch_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_2

    :goto_1
    :pswitch_2
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget v1, p0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    sub-int v5, p1, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v5, p0, v2

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ge v0, p0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-ne p0, p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuffer;)V
    .locals 16

    move-object/from16 v0, p3

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_1d

    aget v6, p0, v3

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/4 v11, 0x2

    const/16 v12, 0x391

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v1, 0x1d

    const/16 v13, 0x1a

    if-eqz v4, :cond_15

    if-eq v4, v15, :cond_f

    if-eq v4, v11, :cond_8

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_2

    if-eq v4, v14, :cond_0

    goto/16 :goto_9

    :cond_0
    if-ge v6, v1, :cond_1

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v13, v1, v6

    goto :goto_1

    :cond_1
    if-ne v6, v1, :cond_4

    goto :goto_2

    :cond_2
    if-ge v6, v13, :cond_3

    add-int/lit8 v6, v6, 0x41

    int-to-char v13, v6

    :goto_1
    move v4, v5

    goto/16 :goto_a

    :cond_3
    if-ne v6, v13, :cond_4

    move v4, v5

    goto/16 :goto_5

    :cond_4
    move v4, v5

    goto/16 :goto_9

    :cond_5
    if-ge v6, v1, :cond_6

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v13, v1, v6

    goto/16 :goto_a

    :cond_6
    if-ne v6, v1, :cond_7

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_7
    if-ne v6, v12, :cond_1b

    aget v1, p1, v3

    :goto_3
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :cond_8
    const/16 v7, 0x19

    if-ge v6, v7, :cond_9

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v13, v1, v6

    goto/16 :goto_a

    :cond_9
    if-ne v6, v7, :cond_a

    const/4 v4, 0x3

    goto/16 :goto_9

    :cond_a
    if-ne v6, v13, :cond_b

    goto :goto_5

    :cond_b
    if-ne v6, v10, :cond_c

    goto :goto_6

    :cond_c
    if-ne v6, v9, :cond_d

    goto :goto_2

    :cond_d
    if-ne v6, v1, :cond_e

    goto :goto_8

    :cond_e
    if-ne v6, v12, :cond_1b

    aget v1, p1, v3

    goto :goto_3

    :cond_f
    if-ge v6, v13, :cond_10

    add-int/lit8 v6, v6, 0x61

    goto :goto_4

    :cond_10
    if-ne v6, v13, :cond_11

    goto :goto_5

    :cond_11
    if-ne v6, v10, :cond_12

    move v5, v4

    const/4 v4, 0x4

    goto :goto_9

    :cond_12
    if-ne v6, v9, :cond_13

    goto :goto_7

    :cond_13
    if-ne v6, v1, :cond_14

    goto :goto_8

    :cond_14
    if-ne v6, v12, :cond_1b

    aget v1, p1, v3

    goto :goto_3

    :cond_15
    if-ge v6, v13, :cond_16

    add-int/lit8 v6, v6, 0x41

    :goto_4
    int-to-char v13, v6

    goto :goto_a

    :cond_16
    if-ne v6, v13, :cond_17

    :goto_5
    const/16 v13, 0x20

    goto :goto_a

    :cond_17
    if-ne v6, v10, :cond_18

    :goto_6
    const/4 v4, 0x1

    goto :goto_9

    :cond_18
    if-ne v6, v9, :cond_19

    :goto_7
    const/4 v4, 0x2

    goto :goto_9

    :cond_19
    if-ne v6, v1, :cond_1a

    :goto_8
    move v5, v4

    const/4 v4, 0x5

    goto :goto_9

    :cond_1a
    if-ne v6, v12, :cond_1b

    aget v1, p1, v3

    goto :goto_3

    :cond_1b
    :goto_9
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_1c

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method private static multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v2, p1, 0x64

    div-int/lit8 v3, p1, 0xa

    rem-int/lit8 v3, v3, 0xa

    rem-int/lit8 p1, p1, 0xa

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method private static numericCompaction([IILjava/lang/StringBuffer;)I
    .locals 7

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_6

    if-nez v2, :cond_6

    add-int/lit8 v4, p1, 0x1

    aget p1, p0, p1

    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    :cond_3
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq p1, v5, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :cond_5
    move p1, v4

    goto :goto_0

    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuffer;)I
    .locals 8

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    aget v3, p0, v0

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_0

    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_0
    const/16 v7, 0x391

    if-eq p1, v7, :cond_2

    const/16 v7, 0x39c

    if-eq p1, v7, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v6

    goto :goto_0

    :cond_1
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    move p1, v6

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    aput v7, v1, v5

    add-int/lit8 p1, v6, 0x1

    aget v6, p0, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuffer;)V

    return p1

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
