.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/String;II)Z
    .locals 2

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Can only encode CODE_128, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    const/16 v2, 0x50

    if-gt v0, v2, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents should only contain characters between \' \' and \'~\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :cond_2
    :goto_1
    if-ge v5, v0, :cond_9

    const/16 v9, 0x63

    if-ne v7, v9, :cond_3

    const/4 v10, 0x2

    goto :goto_2

    :cond_3
    const/4 v10, 0x4

    :goto_2
    sub-int v11, v0, v5

    const/16 v12, 0x64

    if-lt v11, v10, :cond_4

    invoke-static {p1, v5, v10}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const/16 v9, 0x64

    :goto_3
    if-ne v9, v7, :cond_6

    if-ne v7, v12, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v13, v9

    move v9, v5

    move v5, v13

    goto :goto_5

    :cond_6
    if-nez v7, :cond_8

    if-ne v9, v12, :cond_7

    const/16 v7, 0x68

    goto :goto_4

    :cond_7
    const/16 v7, 0x69

    goto :goto_4

    :cond_8
    move v7, v9

    :goto_4
    move v13, v9

    move v9, v7

    move v7, v13

    :goto_5
    sget-object v10, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v10, v10, v9

    invoke-virtual {v3, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    mul-int v9, v9, v8

    add-int/2addr v6, v9

    if-eqz v5, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    rem-int/lit8 v6, v6, 0x67

    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p1, p1, v6

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    :cond_a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_a

    aget v6, v4, v5

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    new-array p1, v0, [B

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    invoke-static {p1, v2, v3, v1}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    :cond_c
    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
