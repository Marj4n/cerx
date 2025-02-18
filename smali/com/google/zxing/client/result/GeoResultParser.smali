.class final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 13

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const-string v1, "geo:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GEO:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x3f

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v8, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v8, v3

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_6

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    if-gez v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    move-wide v9, v1

    move-wide v11, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v11, v9

    move-wide v9, v2

    :goto_1
    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double p0, v9, v1

    if-gtz p0, :cond_6

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double p0, v9, v1

    if-ltz p0, :cond_6

    cmpg-double p0, v11, v6

    if-gez p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/google/zxing/client/result/GeoParsedResult;

    move-object v1, p0

    move-wide v2, v4

    move-wide v4, v9

    move-wide v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    return-object p0

    :catch_0
    :cond_6
    :goto_2
    return-object v0
.end method
