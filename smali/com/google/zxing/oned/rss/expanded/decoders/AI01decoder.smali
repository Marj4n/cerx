.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;


# static fields
.field protected static final gtinSize:I = 0x28


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method

.method private static appendCheckDigit(Ljava/lang/StringBuffer;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    if-ge v1, v3, :cond_1

    add-int v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_0

    mul-int/lit8 v3, v3, 0x3

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    rem-int/2addr v2, p1

    rsub-int/lit8 v1, v2, 0xa

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method protected encodeCompressedGtin(Ljava/lang/StringBuffer;I)V
    .locals 2

    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method protected encodeCompressedGtinWithoutAI(Ljava/lang/StringBuffer;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, p2

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    div-int/lit8 v2, v1, 0x64

    const/16 v3, 0x30

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    div-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->appendCheckDigit(Ljava/lang/StringBuffer;I)V

    return-void
.end method
