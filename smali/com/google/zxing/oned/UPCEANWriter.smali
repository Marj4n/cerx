.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([BI[II)I
    .locals 5

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "startColor must be either 0 or 1, but got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    int-to-byte p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    aget v4, p2, v1

    if-ge v3, v4, :cond_2

    aput-byte p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    xor-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private static renderResult([BII)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    array-length v0, p0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v1, v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int v1, p1, v1

    mul-int v3, v0, v1

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_0

    invoke-virtual {v4, v3, p1, v1, p2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-object v4
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/zxing/oned/UPCEANWriter;->renderResult([BII)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Requested dimensions are too small: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract encode(Ljava/lang/String;)[B
.end method
