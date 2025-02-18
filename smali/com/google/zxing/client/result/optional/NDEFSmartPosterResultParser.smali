.class final Lcom/google/zxing/client/result/optional/NDEFSmartPosterResultParser;
.super Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/optional/NDEFSmartPosterParsedResult;
    .locals 10

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object p0

    const/4 v2, -0x1

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v8, p0

    if-ge v3, v8, :cond_7

    invoke-static {p0, v3}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v8

    if-nez v8, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/result/optional/NDEFTextResultParser;->decodeTextPayload([B)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v6, v6, v8

    goto :goto_1

    :cond_4
    const-string v9, "U"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->decodeURIPayload([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    const-string v9, "act"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object v2

    aget-byte v2, v2, v1

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getTotalRecordLength()I

    move-result v8

    add-int/2addr v3, v8

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/google/zxing/client/result/optional/NDEFSmartPosterParsedResult;

    invoke-direct {p0, v2, v7, v6}, Lcom/google/zxing/client/result/optional/NDEFSmartPosterParsedResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_9
    :goto_2
    return-object v0
.end method
