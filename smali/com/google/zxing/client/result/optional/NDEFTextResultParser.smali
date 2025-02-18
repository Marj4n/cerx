.class final Lcom/google/zxing/client/result/optional/NDEFTextResultParser;
.super Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;-><init>()V

    return-void
.end method

.method static decodeTextPayload([B)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x1f

    const-string v4, "US-ASCII"

    invoke-static {p0, v3, v1, v4}, Lcom/google/zxing/client/result/optional/NDEFTextResultParser;->bytesToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    const-string v2, "UTF-16"

    goto :goto_1

    :cond_1
    const-string v2, "UTF8"

    :goto_1
    add-int/lit8 v5, v1, 0x1

    array-length v6, p0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    invoke-static {p0, v5, v6, v2}, Lcom/google/zxing/client/result/optional/NDEFTextResultParser;->bytesToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object p0, v1, v3

    return-object v1
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TextParsedResult;
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/client/result/optional/NDEFTextResultParser;->decodeTextPayload([B)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/zxing/client/result/TextParsedResult;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method
