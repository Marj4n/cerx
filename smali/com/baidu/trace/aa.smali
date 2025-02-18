.class public final Lcom/baidu/trace/aa;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Lcom/baidu/trace/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ","

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, p0, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "|"

    const-string v1, ":"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Lcom/baidu/trace/api/entity/LocRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 5

    sget-object v0, Lcom/baidu/trace/aa;->b:Lcom/baidu/trace/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/trace/f;

    invoke-direct {v0, p0}, Lcom/baidu/trace/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/trace/aa;->b:Lcom/baidu/trace/f;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    const/16 v3, 0x36b1

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lcom/baidu/trace/c/e;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/baidu/trace/c/e;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/baidu/trace/c/e;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v1, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "BaiduTraceSDK"

    const-string v0, "Need ACCESS_WIFI_STATE or ACCESS_FINE_LOCATION permission to get wifi information"

    invoke-static {p0, v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/baidu/trace/model/TraceLocation;

    invoke-virtual {p1}, Lcom/baidu/trace/api/entity/LocRequest;->getTag()I

    move-result p1

    invoke-direct {p0, p1, v3, v2}, Lcom/baidu/trace/model/TraceLocation;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onReceiveLocation(Lcom/baidu/trace/model/TraceLocation;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/baidu/trace/c/e;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/baidu/trace/aa;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Lcom/baidu/trace/aa;->b:Lcom/baidu/trace/f;

    invoke-virtual {p0}, Lcom/baidu/trace/f;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/aa;->a:Ljava/lang/String;

    :cond_4
    sget-object p0, Lcom/baidu/trace/aa;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/baidu/trace/model/TraceLocation;

    invoke-virtual {p1}, Lcom/baidu/trace/api/entity/LocRequest;->getTag()I

    move-result p1

    invoke-direct {p0, p1, v3, v2}, Lcom/baidu/trace/model/TraceLocation;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onReceiveLocation(Lcom/baidu/trace/model/TraceLocation;)V

    return-void

    :cond_5
    sget-object p0, Lcom/baidu/trace/aa;->a:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/LocRequest;Ljava/lang/String;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/FilterCondition;Ljava/util/TreeMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/api/entity/FilterCondition;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getEntityNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getEntityNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "entity_names:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getEntityNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/trace/aa;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getActiveTime()J

    move-result-wide v2

    const-string v4, ":"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    const-string v2, "|active_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getActiveTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getInActiveTime()J

    move-result-wide v2

    cmp-long v7, v2, v5

    if-lez v7, :cond_3

    const-string v2, "|inactive_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getInActiveTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getColumns()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getColumns()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/FilterCondition;->getColumns()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/trace/aa;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_5

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "filter"

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/SortBy;Ljava/util/TreeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/api/entity/SortBy;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sortby"

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/SortBy;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/SortBy;->getSortType()Lcom/baidu/trace/model/SortType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/trace/model/SortType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 16

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "bldg"

    const-string v4, "indoor"

    const-string v5, "floor"

    const-string v6, "time"

    const-string v7, "point"

    const-string v8, "content"

    const-string v9, "radius"

    const-string v10, "x"

    const-string v11, "y"

    const-string v12, "result"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v13

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance v3, Lcom/baidu/trace/api/entity/DistrictSearchResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/DistrictSearchResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_0
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onDistrictSearchCallback(Lcom/baidu/trace/api/entity/DistrictSearchResponse;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v3, Lcom/baidu/trace/api/entity/PolygonSearchResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/PolygonSearchResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/PolygonSearchRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_1
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onPolygonSearchCallback(Lcom/baidu/trace/api/entity/PolygonSearchResponse;)V

    return-void

    :pswitch_2
    new-instance v3, Lcom/baidu/trace/api/entity/AroundSearchResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/AroundSearchResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/AroundSearchRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onAroundSearchCallback(Lcom/baidu/trace/api/entity/AroundSearchResponse;)V

    return-void

    :pswitch_3
    new-instance v3, Lcom/baidu/trace/api/entity/BoundSearchResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/BoundSearchResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/BoundSearchRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_3
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onBoundSearchCallback(Lcom/baidu/trace/api/entity/BoundSearchResponse;)V

    return-void

    :pswitch_4
    new-instance v3, Lcom/baidu/trace/api/entity/SearchResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/SearchResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/SearchRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/SearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_4
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onSearchEntityCallback(Lcom/baidu/trace/api/entity/SearchResponse;)V

    return-void

    :pswitch_5
    new-instance v14, Lcom/baidu/trace/model/TraceLocation;

    invoke-direct {v14, v13, v0, v1}, Lcom/baidu/trace/model/TraceLocation;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_10

    sget-object v0, Lcom/baidu/trace/model/LocType;->NET_WORK:Lcom/baidu/trace/model/LocType;

    invoke-virtual {v14, v0}, Lcom/baidu/trace/model/TraceLocation;->setLocType(Lcom/baidu/trace/model/LocType;)V

    :try_start_0
    invoke-static {v1, v14}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v15, v12

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lcom/baidu/trace/model/TraceLocation;->setLatitude(D)V

    goto :goto_0

    :cond_7
    move-object v15, v12

    :goto_0
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lcom/baidu/trace/model/TraceLocation;->setLongitude(D)V

    goto :goto_1

    :cond_8
    move-object v15, v12

    :cond_9
    :goto_1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/baidu/trace/model/TraceLocation;->setFloor(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/baidu/trace/model/TraceLocation;->setIndoor(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/model/TraceLocation;->setBuilding(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/baidu/trace/model/TraceLocation;->setRadius(D)V

    goto :goto_2

    :cond_d
    move-object v15, v12

    :cond_e
    :goto_2
    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/baidu/trace/model/TraceLocation;->setTime(Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v14, v0}, Lcom/baidu/trace/model/TraceLocation;->setCoordType(Lcom/baidu/trace/model/CoordType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    :cond_10
    :goto_3
    invoke-virtual {v2, v14}, Lcom/baidu/trace/api/entity/OnEntityListener;->onReceiveLocation(Lcom/baidu/trace/model/TraceLocation;)V

    return-void

    :pswitch_6
    new-instance v3, Lcom/baidu/trace/api/entity/UpdateEntityResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/UpdateEntityResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_11

    invoke-static {v1, v3}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    :cond_11
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onUpdateEntityCallback(Lcom/baidu/trace/api/entity/UpdateEntityResponse;)V

    return-void

    :pswitch_7
    new-instance v3, Lcom/baidu/trace/api/entity/DeleteEntityResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/DeleteEntityResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_12

    invoke-static {v1, v3}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    :cond_12
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onDeleteEntityCallback(Lcom/baidu/trace/api/entity/DeleteEntityResponse;)V

    return-void

    :pswitch_8
    new-instance v3, Lcom/baidu/trace/api/entity/AddEntityResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/AddEntityResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_13

    invoke-static {v1, v3}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    :cond_13
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onAddEntityCallback(Lcom/baidu/trace/api/entity/AddEntityResponse;)V

    return-void

    :pswitch_9
    new-instance v3, Lcom/baidu/trace/api/entity/EntityListResponse;

    invoke-direct {v3, v13, v0, v1}, Lcom/baidu/trace/api/entity/EntityListResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_14

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/entity/EntityListRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/EntityListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V

    :cond_14
    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onEntityListCallback(Lcom/baidu/trace/api/entity/EntityListResponse;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(Ljava/util/List;Ljava/util/TreeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vertexes"

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
