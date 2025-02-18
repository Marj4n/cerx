.class public final Lcom/baidu/trace/ax;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/baidu/trace/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_c

    aget-byte v5, v2, v3

    const/16 v6, 0xa

    if-nez v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    sget v0, Lcom/baidu/trace/ax;->a:I

    add-int/2addr v0, v1

    sput v0, Lcom/baidu/trace/ax;->a:I

    if-lt v0, v6, :cond_c

    sput v3, Lcom/baidu/trace/ax;->a:I

    return v3

    :cond_1
    aget-byte v5, v2, v3

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    sget v5, Lcom/baidu/trace/ax;->a:I

    add-int/2addr v5, v1

    sput v5, Lcom/baidu/trace/ax;->a:I

    if-lt v5, v6, :cond_0

    sput v3, Lcom/baidu/trace/ax;->a:I

    return v3

    :cond_2
    sput v3, Lcom/baidu/trace/ax;->a:I

    const/4 v5, 0x4

    new-array v6, v5, [B

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    if-lt v8, v5, :cond_c

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    const-string v9, "YING"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    new-array v9, v8, [B

    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    if-lt v10, v8, :cond_c

    invoke-static {v9, v3}, Lcom/baidu/trace/c/d;->a([BI)S

    move-result v10

    if-le v10, v8, :cond_0

    add-int/lit8 v10, v10, -0x2

    int-to-short v10, v10

    add-int/lit8 v11, v10, 0x1

    new-array v12, v11, [B

    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    if-lt v13, v10, :cond_c

    if-le v13, v10, :cond_3

    aget-byte v13, v12, v10

    if-eq v13, v7, :cond_4

    :cond_3
    const/4 v4, 0x0

    :cond_4
    add-int/lit8 v7, v10, 0x2

    add-int/2addr v7, v5

    add-int/2addr v7, v1

    new-array v7, v7, [B

    aget-byte v13, v2, v3

    aput-byte v13, v7, v3

    if-eqz v4, :cond_5

    aget-byte v13, v12, v10

    aput-byte v13, v2, v3

    goto :goto_1

    :cond_5
    aput-byte v3, v2, v3

    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_2
    if-ge v13, v5, :cond_6

    add-int/lit8 v15, v14, 0x1

    aget-byte v16, v6, v13

    aput-byte v16, v7, v14

    add-int/lit8 v13, v13, 0x1

    move v14, v15

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_7

    add-int/lit8 v6, v14, 0x1

    aget-byte v13, v9, v5

    aput-byte v13, v7, v14

    add-int/lit8 v5, v5, 0x1

    move v14, v6

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v11, :cond_8

    if-ge v5, v10, :cond_8

    add-int/lit8 v6, v14, 0x1

    aget-byte v8, v12, v5

    aput-byte v8, v7, v14

    add-int/lit8 v5, v5, 0x1

    move v14, v6

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/baidu/trace/TraceJniInterface;->parseResponseProtocolData([B)[B

    move-result-object v5

    if-eqz v5, :cond_b

    array-length v6, v5

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "business_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-short v6, v6

    sget-object v7, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    if-eqz v7, :cond_a

    sget-object v7, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/trace/c/g;

    goto :goto_5

    :cond_a
    sget-object v7, Lcom/baidu/trace/n;->a:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/trace/c/g;

    sget-object v8, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    :goto_5
    invoke-interface {v6, v5}, Lcom/baidu/trace/c/g;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    :cond_b
    :goto_6
    return v3

    :cond_c
    return v1
.end method

.method public static a(SI)[B
    .locals 3

    sget-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/c/g;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/baidu/trace/n;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/c/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-interface {v0}, Lcom/baidu/trace/c/g;->a()V

    :try_start_1
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/trace/TraceJniInterface;->buildRequestProtocolData(SI)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p1, 0x0

    :goto_2
    array-length v0, v1

    if-ge p1, v0, :cond_1

    aget-byte v0, v1, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_1
    :cond_1
    return-object v1
.end method

.method protected static b()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/ax;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method
