.class final Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;


# static fields
.field private static final ATEXT_SYMBOLS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_SYMBOLS:[C

    return-void

    :array_0
    .array-data 2
        0x40s
        0x2es
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x2as
        0x2bs
        0x2ds
        0x2fs
        0x3ds
        0x3fs
        0x5es
        0x5fs
        0x60s
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static isAtextSymbol(C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_SYMBOLS:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-char v2, v2, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static isBasicallyValidEmailAddress(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isAtextSymbol(C)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_5

    return v0

    :cond_5
    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v2
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 5

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, "MATMSG:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "TO:"

    invoke-static {v2, p0, v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    const-string v0, "SUB:"

    invoke-static {v0, p0, v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BODY:"

    invoke-static {v3, p0, v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v0, p0, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v0
.end method
