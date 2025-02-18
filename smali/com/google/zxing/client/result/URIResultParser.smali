.class final Lcom/google/zxing/client/result/URIResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static isBasicallyValidURI(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_c

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_5

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v1, :cond_2

    if-gez v2, :cond_2

    return v0

    :cond_2
    if-ltz v2, :cond_b

    if-ltz v1, :cond_7

    if-le v1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v2, v1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    :goto_0
    add-int/lit8 v3, v2, 0x3

    if-ge v1, v3, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_8

    const/16 v4, 0x7a

    if-le v3, v4, :cond_9

    :cond_8
    const/16 v4, 0x41

    if-lt v3, v4, :cond_a

    const/16 v4, 0x5a

    if-le v3, v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return v0

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_c
    :goto_5
    return v0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "URL:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
