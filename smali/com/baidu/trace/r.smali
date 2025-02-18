.class public final Lcom/baidu/trace/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/16 p0, 0xf

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x5

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/16 v7, 0xc

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    sget v6, Lcom/baidu/trace/ar;->c:I

    if-lt v5, v6, :cond_5

    move v4, v5

    goto :goto_1

    :cond_1
    sput-byte v5, Lcom/baidu/trace/z;->s:B

    goto :goto_1

    :cond_2
    if-lt v5, v3, :cond_5

    const/16 v6, 0x80

    if-gt v5, v6, :cond_5

    sput-byte v5, Lcom/baidu/trace/z;->r:B

    goto :goto_1

    :cond_3
    if-lt v5, v7, :cond_5

    move v1, v5

    goto :goto_1

    :cond_4
    if-lt v5, v3, :cond_5

    move p0, v5

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sput-byte p0, Lcom/baidu/trace/z;->p:B

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    rem-int p0, v1, v4

    if-nez p0, :cond_7

    mul-int/lit16 p0, v4, 0x3e8

    sput p0, Lcom/baidu/trace/ar;->b:I

    sput-byte v4, Lcom/baidu/trace/z;->w:B

    mul-int/lit16 p0, v1, 0x3e8

    sput p0, Lcom/baidu/trace/bd;->i:I

    sput-byte v1, Lcom/baidu/trace/z;->q:B

    invoke-static {}, Lcom/baidu/trace/bd;->d()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method
