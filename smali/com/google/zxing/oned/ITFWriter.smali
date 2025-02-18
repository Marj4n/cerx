.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Can only encode ITF, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([BI[II)I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/16 v8, 0x12

    new-array v8, v8, [I

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_0

    shl-int/lit8 v10, v9, 0x1

    sget-object v11, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/2addr v10, v4

    sget-object v11, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v11, v11, v7

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v1, v2, v8, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-static {v1, v2, p1, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([BI[II)I

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method
