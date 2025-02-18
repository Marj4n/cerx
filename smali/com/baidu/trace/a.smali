.class public Lcom/baidu/trace/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:C


# direct methods
.method private constructor <init>(Lcom/baidu/trace/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/baidu/trace/a;->a:I

    iput p1, p0, Lcom/baidu/trace/a;->b:I

    iput p1, p0, Lcom/baidu/trace/a;->c:I

    iput p1, p0, Lcom/baidu/trace/a;->d:I

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/baidu/trace/a;->e:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/trace/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/trace/a;-><init>(Lcom/baidu/trace/f;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;ILcom/baidu/trace/api/fence/Fence;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/trace/a;->b(Landroid/content/Context;Landroid/os/Handler;ILcom/baidu/trace/api/fence/Fence;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/trace/a;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/baidu/trace/c/a$c;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "service_id"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/baidu/trace/q;->a:Ljava/lang/String;

    const-string p2, "os"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/baidu/trace/q;->b:Ljava/lang/String;

    const-string p2, "sdk_version"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/baidu/trace/q;->d:Ljava/lang/String;

    const-string p2, "pcn"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/baidu/trace/d;->a:Ljava/lang/String;

    const-string p2, "token"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p1, "cuid"

    sget-object p2, Lcom/baidu/trace/q;->c:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "99754106633f94d350db34d548d6091a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    if-ne p2, p3, :cond_1

    invoke-static {p0}, Lcom/baidu/trace/a;->b(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "&sign"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 1

    new-instance v0, Lcom/baidu/trace/ai;

    invoke-direct {v0, p0, p3, p2}, Lcom/baidu/trace/ai;-><init>(ILcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/model/BaseResponse;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/FenceListRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    const-string v0, "monitored_person"

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fence_ids"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "coord_type_output"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x0

    sget-object v4, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    const/4 v5, 0x4

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getServiceId()J

    move-result-wide v0

    sget-object p1, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-static {p0, v0, v1, p1}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "fence/list"

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_3
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/ae;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/trace/ae;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/FenceListRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    const-string v0, "monitored_person"

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_5

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "start_time"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getEndTime()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "end_time"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fence_ids"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "coord_type_output"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x0

    sget-object v4, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    const/4 v5, 0x7

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getServiceId()J

    move-result-wide v0

    sget-object p1, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-static {p0, v0, v1, p1}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "fence/historyalarm"

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_5
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/ah;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/trace/ah;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    const-string v0, "monitored_person"

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_4

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fence_ids"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getLatLng()Lcom/baidu/trace/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getLatLng()Lcom/baidu/trace/model/LatLng;

    move-result-object p1

    iget-wide v0, p1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getLatLng()Lcom/baidu/trace/model/LatLng;

    move-result-object p1

    iget-wide v0, p1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "coord_type"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x0

    sget-object v4, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    const/4 v5, 0x6

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getServiceId()J

    move-result-wide v0

    sget-object p1, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-static {p0, v0, v1, p1}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "fence/querystatusbylocation"

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_4
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/trace/ag;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    const-string v0, "monitored_person"

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fence_ids"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    sget-object v4, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    const/4 v5, 0x5

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getServiceId()J

    move-result-wide v0

    sget-object p1, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-static {p0, v0, v1, p1}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "fence/querystatus"

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_2
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/af;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/trace/af;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/CreateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 17

    sget-object v0, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/Fence;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v0

    instance-of v1, v0, Lcom/baidu/trace/api/fence/CircleFence;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/baidu/trace/api/fence/CircleFence;

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v14

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolygonFence;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/baidu/trace/api/fence/PolygonFence;

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getVertexes()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v14

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolylineFence;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/baidu/trace/api/fence/PolylineFence;

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getVertexes()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getOffset()I

    move-result v13

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v14

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_2
    instance-of v1, v0, Lcom/baidu/trace/api/fence/DistrictFence;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/baidu/trace/api/fence/DistrictFence;

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getKeyword()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/trace/ab;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/baidu/trace/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/CreateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/IService;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    const-string v0, "monitored_person"

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fence_ids"

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v2, 0x0

    sget-object v4, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v5, 0x3

    invoke-virtual {p3}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getServiceId()J

    move-result-wide p1

    sget-object v0, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "fence/delete"

    move-object v1, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_2
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/trace/ad;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/baidu/trace/ad;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/IService;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 19

    sget-object v0, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/Fence;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v0

    instance-of v1, v0, Lcom/baidu/trace/api/fence/CircleFence;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/baidu/trace/api/fence/CircleFence;

    sget-object v1, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceType()Lcom/baidu/trace/api/fence/FenceType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v4, 0x2

    sget-object v5, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v11

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v16

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v17

    move-object/from16 v3, p3

    move-object/from16 v18, p4

    invoke-static/range {v3 .. v18}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolygonFence;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/baidu/trace/api/fence/PolygonFence;

    const/4 v2, 0x2

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getFenceId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getVertexes()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v14

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolygonFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_2
    instance-of v1, v0, Lcom/baidu/trace/api/fence/PolylineFence;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/baidu/trace/api/fence/PolylineFence;

    const/4 v2, 0x2

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getFenceId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getVertexes()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getOffset()I

    move-result v13

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v14

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/PolylineFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/baidu/trace/api/fence/DistrictFence;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/baidu/trace/api/fence/DistrictFence;

    const/4 v2, 0x2

    sget-object v3, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getFenceId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getFenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getKeyword()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/DistrictFence;->getDenoise()I

    move-result v15

    move-object/from16 v1, p3

    move-object/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/trace/ac;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/baidu/trace/ac;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/IService;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getServiceId()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getStartTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getEndTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getSpeedingThreshold()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getThresholdOption()Lcom/baidu/trace/api/analysis/ThresholdOption;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getProcessOption()Lcom/baidu/trace/model/ProcessOption;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v15

    const-string v8, "analysis/drivingbehavior"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;JJJLjava/lang/String;IIIILcom/baidu/trace/api/analysis/ThresholdOption;Lcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/analysis/StayPointRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getServiceId()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getStartTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getEndTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getStayTime()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getStayRadius()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getProcessOption()Lcom/baidu/trace/model/ProcessOption;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/analysis/StayPointRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v15

    const-string v8, "analysis/staypoint"

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v16}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;JJJLjava/lang/String;IIIILcom/baidu/trace/api/analysis/ThresholdOption;Lcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 11

    const-string v0, "image_command"

    const-string v1, "UTF-8"

    const-string v2, "object_key"

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getTag()I

    move-result p0

    const/4 v1, 0x2

    const-string v2, "objectKey\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/baidu/trace/api/bos/OnBosListener;->onGeneratePresignedUrlCallback(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosObjectType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "object_type"

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Lcom/baidu/trace/h;->a(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {v3, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    const/4 v5, 0x3

    sget-object v7, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v3, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "object/generatepresignedurl"

    move-object v4, p0

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/bos/BosGetObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 10

    const-string v0, "object_key"

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/trace/api/bos/BosGetObjectResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getTag()I

    move-result p0

    const/4 v1, 0x2

    const-string v2, "objectKey\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/baidu/trace/api/bos/OnBosListener;->onGetObjectCallback(Lcom/baidu/trace/api/bos/BosGetObjectResponse;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/api/bos/BosObjectType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "object_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v4, 0x3

    sget-object v6, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosGetObjectRequest;->getServiceId()J

    move-result-wide v2

    sget-object v0, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "object/preparetoget"

    move-object v3, p0

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/bos/BosPutObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 11

    const-string v0, "object_key"

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getTag()I

    move-result p0

    const/4 v1, 0x2

    const-string v2, "objectKey\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/baidu/trace/api/bos/OnBosListener;->onPutObjectCallback(Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStringData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    int-to-long v1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStreamData()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->setObjectSize(J)V

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/api/bos/BosObjectType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "object_type"

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "object_size"

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    sget-object v7, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v3, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "object/preparetoput"

    move-object v4, p0

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/AddEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 15

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AddEntityRequest;->getTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AddEntityRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AddEntityRequest;->getEntityDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AddEntityRequest;->getColumns()Ljava/util/Map;

    move-result-object v4

    const/4 v0, 0x0

    move-object v5, v7

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/baidu/trace/a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/TreeMap;Lcom/baidu/trace/api/entity/OnEntityListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    sget-object v11, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v12, 0x2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AddEntityRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v7, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "entity/add"

    move-object v8, p0

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/AroundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v3, v1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "center"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getRadius()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_input"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/AroundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v1, 0x8

    const-string v2, "entity/aroundsearch"

    invoke-static {p0, v0, v2, v1, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/BoundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 7

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_input"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getLowerLeft()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getUpperRight()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getLowerLeft()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/BoundSearchRequest;->getUpperRight()Lcom/baidu/trace/model/LatLng;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v4, v1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v5, v1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v5, v2, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, v2, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bounds"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x7

    const-string v2, "entity/boundsearch"

    invoke-static {p0, v0, v2, v1, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method private static a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/api/entity/CommonRequest;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/trace/api/entity/OnEntityListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/CommonRequest;->getFilterCondition()Lcom/baidu/trace/api/entity/FilterCondition;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/trace/aa;->a(Lcom/baidu/trace/api/entity/FilterCondition;Ljava/util/TreeMap;)V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/CommonRequest;->getSortBy()Lcom/baidu/trace/api/entity/SortBy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/trace/aa;->a(Lcom/baidu/trace/api/entity/SortBy;Ljava/util/TreeMap;)V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/CommonRequest;->getPageIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/CommonRequest;->getPageSize()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/baidu/trace/c/e;->a(IILjava/util/TreeMap;)V

    sget-object v5, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/CommonRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/DeleteEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 15

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DeleteEntityRequest;->getTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DeleteEntityRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v7

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/baidu/trace/a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/TreeMap;Lcom/baidu/trace/api/entity/OnEntityListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    sget-object v11, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DeleteEntityRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v7, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "entity/delete"

    move-object v8, p0

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/DistrictSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 4

    const-string v0, "keyword"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getKeyword()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getReturnType()Lcom/baidu/trace/api/entity/ReturnType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getReturnType()Lcom/baidu/trace/api/entity/ReturnType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/api/entity/ReturnType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "return_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "coord_type_output"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v0, 0xa

    const-string v2, "entity/districtsearch"

    invoke-static {p0, v1, v2, v0, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/EntityListRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/EntityListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/EntityListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    const-string v2, "entity/list"

    invoke-static {p0, v0, v2, v1, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/LocRequest;Ljava/lang/String;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 9

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "apinfo"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/LocRequest;->getServiceId()J

    move-result-wide v1

    sget-object p1, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v0, v1, v2, p1}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    const-string v4, "internal/androidlocate"

    const/4 v6, 0x5

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/PolygonSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getVertexes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getVertexes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/trace/aa;->a(Ljava/util/List;Ljava/util/TreeMap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getCoordTypeInput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_input"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/PolygonSearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coord_type_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v1, 0x9

    const-string v2, "entity/polygonsearch"

    invoke-static {p0, v0, v2, v1, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/SearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 4

    const-string v0, "query"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/SearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/SearchRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coord_type_output"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/SearchRequest;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x6

    const-string v2, "entity/search"

    invoke-static {p0, v1, v2, v0, p1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/CommonRequest;Ljava/util/TreeMap;Ljava/lang/String;ILcom/baidu/trace/api/entity/OnEntityListener;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/entity/UpdateEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 15

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/UpdateEntityRequest;->getTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/UpdateEntityRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/UpdateEntityRequest;->getEntityDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/UpdateEntityRequest;->getColumns()Ljava/util/Map;

    move-result-object v4

    const/4 v0, 0x1

    move-object v5, v7

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/baidu/trace/a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/TreeMap;Lcom/baidu/trace/api/entity/OnEntityListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    sget-object v11, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v12, 0x4

    invoke-virtual {p0}, Lcom/baidu/trace/api/entity/UpdateEntityRequest;->getServiceId()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v7, v0, v1, v2}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "entity/update"

    move-object v8, p0

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/fence/CircleFence;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/baidu/trace/model/LatLng;->latitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/baidu/trace/model/LatLng;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "center"

    const-string v2, "radius"

    if-eqz p2, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fenceName"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v3

    const-string v4, "monitoredPerson"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v3

    const-string v4, "coordType"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v3

    const-string v4, "denoise"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-class v3, Lcom/baidu/trace/api/fence/CircleFence;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fenceShape"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/fence/Fence;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/api/fence/Fence;",
            "Ljava/lang/String;",
            "Lcom/baidu/trace/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/fence/MonitoredStatusInfo;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/baidu/trace/api/fence/CircleFence;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/baidu/trace/api/fence/CircleFence;

    invoke-virtual {p0}, Lcom/baidu/trace/api/fence/Fence;->getFenceId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;

    invoke-direct {p0}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/LatLng;)D

    move-result-wide p1

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v3

    cmpl-double v0, v3, p1

    if-lez v0, :cond_0

    sget-object p1, Lcom/baidu/trace/api/fence/MonitoredStatus;->in:Lcom/baidu/trace/api/fence/MonitoredStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->setMonitoredStatus(Lcom/baidu/trace/api/fence/MonitoredStatus;)V

    invoke-virtual {p0, v1, v2}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->setFenceId(J)V

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/track/AddPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 9

    const-string v0, "entity_name"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    new-instance v0, Lcom/baidu/trace/api/track/AddPointResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getTag()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/baidu/trace/api/track/AddPointResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getPoint()Lcom/baidu/trace/model/Point;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/baidu/trace/api/track/AddPointResponse;->setStatus(I)V

    const-string p0, "point\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/baidu/trace/api/track/AddPointResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointCallback(Lcom/baidu/trace/api/track/AddPointResponse;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/baidu/trace/model/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v1, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/baidu/trace/model/LatLng;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "longitude"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getLocTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getLocTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loc_time"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "coord_type_input"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getSpeed()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "speed"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getDirection()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "direction"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/trace/model/Point;->getRadius()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v4, "radius"

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getObjectName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "object_name"

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getColumns()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/baidu/trace/a;->a(Ljava/util/Map;Ljava/util/TreeMap;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Lcom/baidu/trace/api/track/AddPointResponse;->setStatus(I)V

    const-string p0, "column_key\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/baidu/trace/api/track/AddPointResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointCallback(Lcom/baidu/trace/api/track/AddPointResponse;)V

    return-void

    :cond_4
    const/4 v3, 0x2

    sget-object v5, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointRequest;->getServiceId()J

    move-result-wide v7

    sget-object v0, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v1, v7, v8, v0}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "track/addpoint"

    move-object v2, p0

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_5
    invoke-virtual {v0, v3}, Lcom/baidu/trace/api/track/AddPointResponse;->setStatus(I)V

    const-string p0, "locTime\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/baidu/trace/api/track/AddPointResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointCallback(Lcom/baidu/trace/api/track/AddPointResponse;)V

    return-void

    :cond_6
    invoke-virtual {v0, v3}, Lcom/baidu/trace/api/track/AddPointResponse;->setStatus(I)V

    const-string p0, "location\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/baidu/trace/api/track/AddPointResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointCallback(Lcom/baidu/trace/api/track/AddPointResponse;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/track/AddPointsRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 10

    const-string v0, "point_list"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    new-instance v2, Lcom/baidu/trace/api/track/AddPointsResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointsRequest;->getTag()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/baidu/trace/api/track/AddPointsResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointsRequest;->getPoints()Ljava/util/Map;

    move-result-object v3

    const-string v4, "pointList\u53c2\u6570\u9519\u8bef"

    const/4 v5, 0x2

    if-nez v3, :cond_0

    invoke-virtual {v2, v5}, Lcom/baidu/trace/api/track/AddPointsResponse;->setStatus(I)V

    invoke-virtual {v2, v4}, Lcom/baidu/trace/api/track/AddPointsResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointsCallback(Lcom/baidu/trace/api/track/AddPointsResponse;)V

    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v3, v6}, Lcom/baidu/trace/a;->a(Ljava/util/Map;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v4, 0x2

    sget-object v6, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/AddPointsRequest;->getServiceId()J

    move-result-wide v2

    sget-object v0, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "track/addpoints"

    move-object v3, p0

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_2
    invoke-virtual {v2, v5}, Lcom/baidu/trace/api/track/AddPointsResponse;->setStatus(I)V

    invoke-virtual {v2, v4}, Lcom/baidu/trace/api/track/AddPointsResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointsCallback(Lcom/baidu/trace/api/track/AddPointsResponse;)V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/track/DistanceRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    new-instance v19, Ljava/util/TreeMap;

    move-object/from16 v17, v19

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getServiceId()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getStartTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getEndTime()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->isProcessed()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getProcessOption()Lcom/baidu/trace/model/ProcessOption;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/DistanceRequest;->getSupplementMode()Lcom/baidu/trace/api/track/SupplementMode;

    move-result-object v12

    const-string v1, "track/getdistance"

    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v18}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/model/SortType;IILjava/util/TreeMap;Lcom/baidu/trace/api/track/OnTrackListener;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/track/HistoryTrackRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    new-instance v19, Ljava/util/TreeMap;

    move-object/from16 v17, v19

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getServiceId()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getStartTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getEndTime()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->isProcessed()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getProcessOption()Lcom/baidu/trace/model/ProcessOption;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getSupplementMode()Lcom/baidu/trace/api/track/SupplementMode;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getSortType()Lcom/baidu/trace/model/SortType;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getPageSize()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getPageIndex()I

    move-result v16

    const-string v1, "track/gettrack"

    const/4 v2, 0x1

    invoke-static/range {v0 .. v18}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/model/SortType;IILjava/util/TreeMap;Lcom/baidu/trace/api/track/OnTrackListener;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/track/LatestPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    new-instance v19, Ljava/util/TreeMap;

    move-object/from16 v17, v19

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/LatestPointRequest;->getServiceId()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/LatestPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/LatestPointRequest;->getProcessOption()Lcom/baidu/trace/model/ProcessOption;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/track/LatestPointRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v13

    const-string v1, "track/getlatestpoint"

    const/4 v2, 0x3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v18}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/model/SortType;IILjava/util/TreeMap;Lcom/baidu/trace/api/track/OnTrackListener;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method private static a(Lcom/baidu/trace/model/BaseRequest;ILcom/baidu/trace/api/fence/FenceShape;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DLjava/util/List;ILcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/model/BaseRequest;",
            "I",
            "Lcom/baidu/trace/api/fence/FenceShape;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/trace/model/LatLng;",
            "D",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;I",
            "Lcom/baidu/trace/model/CoordType;",
            "I",
            "Lcom/baidu/trace/api/fence/OnFenceListener;",
            ")V"
        }
    .end annotation

    move v0, p1

    move-object v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const-string v6, "keyword"

    const-string v7, "monitored_person"

    const-string v8, "fence_name"

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    const-wide/16 v10, 0x0

    cmp-long v12, p3, v10

    if-lez v12, :cond_0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fence_id"

    invoke-virtual {v9, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "UTF-8"

    if-nez v10, :cond_1

    :try_start_0
    invoke-static {v2, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v9, v8, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-static {v3, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {v9, v7, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    iget-wide v2, v5, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v5, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v5, p9, v2

    if-lez v5, :cond_4

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "radius"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p11, :cond_5

    invoke-static/range {p11 .. p11}, Lcom/baidu/trace/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vertexes"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-lez p12, :cond_6

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p13, :cond_7

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coord_type"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-ltz p14, :cond_8

    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "denoise"

    invoke-virtual {v9, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :try_start_2
    invoke-static {v4, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-virtual {v9, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    const/4 v2, 0x1

    if-ne v2, v0, :cond_d

    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_a

    const-string v1, "createcirclefence"

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_b

    const-string v1, "createpolygonfence"

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_c

    const-string v1, "createpolylinefence"

    goto :goto_3

    :cond_c
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_11

    const-string v1, "createdistrictfence"

    goto :goto_3

    :cond_d
    const/4 v2, 0x2

    if-ne v2, v0, :cond_11

    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_e

    const-string v1, "updatecirclefence"

    goto :goto_3

    :cond_e
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_f

    const-string v1, "updatepolygonfence"

    goto :goto_3

    :cond_f
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_10

    const-string v1, "updatepolylinefence"

    goto :goto_3

    :cond_10
    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v2, v1, :cond_11

    const-string v1, "updatedistrictfence"

    goto :goto_3

    :cond_11
    const-string v1, ""

    :goto_3
    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fence/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-virtual {p0}, Lcom/baidu/trace/model/BaseRequest;->getServiceId()J

    move-result-wide v4

    sget-object v6, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    invoke-static {v9, v4, v5, v6}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v4

    move-object p2, p0

    move/from16 p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move/from16 p6, p1

    move-object/from16 p7, v4

    move-object/from16 p8, p15

    invoke-static/range {p2 .. p8}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "latitude"

    const-string v5, "coord_type"

    const-string v6, "longitude"

    const-string v7, "stay_point"

    const-string v8, "duration"

    const-string v9, "end_time"

    const-string v10, "start_time"

    const-string v11, "stay_points"

    const-string v12, "staypoint_num"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v13

    const/4 v14, 0x1

    if-eq v0, v14, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;

    invoke-direct {v0, v13, v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_1

    move-object/from16 v1, p0

    check-cast v1, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;

    invoke-virtual {v1}, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;)V

    :cond_1
    invoke-interface {v3, v0}, Lcom/baidu/trace/api/analysis/OnAnalysisListener;->onDrivingBehaviorCallback(Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/baidu/trace/api/analysis/StayPointResponse;

    invoke-direct {v0, v13, v1, v2}, Lcom/baidu/trace/api/analysis/StayPointResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_c

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/trace/api/analysis/StayPointResponse;->setStayPointNum(I)V

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_b

    new-instance v13, Lcom/baidu/trace/api/analysis/StayPoint;

    invoke-direct {v13}, Lcom/baidu/trace/api/analysis/StayPoint;-><init>()V

    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    if-eqz v15, :cond_5

    :try_start_1
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/baidu/trace/api/analysis/StayPoint;->setStartTime(J)V

    :cond_5
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/baidu/trace/api/analysis/StayPoint;->setEndTime(J)V

    :cond_6
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/baidu/trace/api/analysis/StayPoint;->setDuration(I)V

    :cond_7
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v1, v14, v15, v7, v8}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {v13, v1}, Lcom/baidu/trace/api/analysis/StayPoint;->setLocation(Lcom/baidu/trace/model/LatLng;)V

    goto :goto_2

    :cond_8
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :goto_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/trace/model/CoordType;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/baidu/trace/api/analysis/StayPoint;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    goto :goto_3

    :cond_9
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :cond_a
    :goto_3
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto/16 :goto_1

    :catch_0
    move-object/from16 v0, p0

    goto :goto_4

    :cond_b
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/baidu/trace/api/analysis/StayPointResponse;->setStayPoints(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    :cond_c
    :goto_4
    invoke-interface {v3, v0}, Lcom/baidu/trace/api/analysis/OnAnalysisListener;->onStayPointCallback(Lcom/baidu/trace/api/analysis/StayPointResponse;)V

    return-void
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 16

    move/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const-string v8, "district_list"

    const-string v11, "district"

    const-string v12, "shape"

    const-string v13, "fence_name"

    const-string v14, "fence_id"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v2

    sget-object v1, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    new-instance v1, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;

    sget-object v3, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v9, v0, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/HistoryAlarmResponse;)V

    :cond_0
    invoke-interface {v10, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onHistoryAlarmCallback(Lcom/baidu/trace/api/fence/HistoryAlarmResponse;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v1, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    sget-object v3, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_1

    invoke-static {v9, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)V

    :cond_1
    invoke-interface {v10, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onMonitoredStatusByLocationCallback(Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;)V

    return-void

    :pswitch_2
    new-instance v1, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    sget-object v3, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_2

    invoke-static {v9, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)V

    :cond_2
    invoke-interface {v10, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onMonitoredStatusCallback(Lcom/baidu/trace/api/fence/MonitoredStatusResponse;)V

    return-void

    :pswitch_3
    new-instance v1, Lcom/baidu/trace/api/fence/FenceListResponse;

    sget-object v3, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/baidu/trace/api/fence/FenceListResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    check-cast v0, Lcom/baidu/trace/api/fence/FenceListRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/api/fence/FenceListRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object v0

    invoke-static {v9, v0, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceListResponse;)V

    :cond_3
    invoke-interface {v10, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onFenceListCallback(Lcom/baidu/trace/api/fence/FenceListResponse;)V

    return-void

    :pswitch_4
    new-instance v1, Lcom/baidu/trace/api/fence/DeleteFenceResponse;

    sget-object v3, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_4

    invoke-static {v9, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/api/fence/DeleteFenceResponse;)V

    :cond_4
    invoke-interface {v10, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onDeleteFenceCallback(Lcom/baidu/trace/api/fence/DeleteFenceResponse;)V

    return-void

    :pswitch_5
    move-object/from16 v1, p0

    check-cast v1, Lcom/baidu/trace/api/fence/UpdateFenceRequest;

    invoke-virtual {v1}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baidu/trace/api/fence/Fence;->getFenceName()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Lcom/baidu/trace/api/fence/UpdateFenceResponse;

    invoke-virtual {v11}, Lcom/baidu/trace/api/fence/Fence;->getFenceId()J

    move-result-wide v5

    sget-object v8, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v1, v12

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v8}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;-><init>(IILjava/lang/String;JLjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    instance-of v1, v11, Lcom/baidu/trace/api/fence/CircleFence;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    goto :goto_0

    :cond_5
    instance-of v1, v11, Lcom/baidu/trace/api/fence/PolygonFence;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    goto :goto_0

    :cond_6
    instance-of v1, v11, Lcom/baidu/trace/api/fence/PolylineFence;

    if-eqz v1, :cond_7

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    goto :goto_0

    :cond_7
    instance-of v1, v11, Lcom/baidu/trace/api/fence/DistrictFence;

    if-eqz v1, :cond_8

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    :cond_8
    :goto_0
    invoke-virtual {v12, v0}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V

    if-eqz p2, :cond_9

    invoke-static {v9, v12}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/api/fence/UpdateFenceResponse;)V

    :cond_9
    invoke-interface {v10, v12}, Lcom/baidu/trace/api/fence/OnFenceListener;->onUpdateFenceCallback(Lcom/baidu/trace/api/fence/UpdateFenceResponse;)V

    return-void

    :pswitch_6
    move-object/from16 v3, p0

    check-cast v3, Lcom/baidu/trace/api/fence/CreateFenceRequest;

    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/CreateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v3

    instance-of v4, v3, Lcom/baidu/trace/api/fence/PolygonFence;

    if-eqz v4, :cond_b

    sget-object v1, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    :cond_a
    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_b
    instance-of v4, v3, Lcom/baidu/trace/api/fence/PolylineFence;

    if-eqz v4, :cond_c

    sget-object v1, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    goto :goto_1

    :cond_c
    instance-of v4, v3, Lcom/baidu/trace/api/fence/DistrictFence;

    if-eqz v4, :cond_a

    sget-object v1, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/Fence;->getFenceName()Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/baidu/trace/api/fence/CreateFenceResponse;

    sget-object v7, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    move-object v1, v15

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/trace/api/fence/CreateFenceResponse;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/api/fence/FenceShape;Lcom/baidu/trace/api/fence/FenceType;)V

    if-eqz p2, :cond_13

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v15}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceId(J)V

    :cond_e
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceName(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-class v1, Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/trace/api/fence/FenceShape;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v15, v1}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V

    :cond_10
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setDistrict(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_12

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_12
    invoke-virtual {v15, v2}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setDistrictList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    :cond_13
    :goto_4
    invoke-interface {v10, v15}, Lcom/baidu/trace/api/fence/OnFenceListener;->onCreateFenceCallback(Lcom/baidu/trace/api/fence/CreateFenceResponse;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 10

    const-string v0, "points"

    const-string v1, "end_point"

    const-string v2, "start_point"

    const-string v3, "toll_distance"

    const-string v4, "size"

    const-string v5, "total"

    invoke-virtual {p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v6

    instance-of v7, p0, Lcom/baidu/trace/api/track/DistanceRequest;

    if-eqz v7, :cond_0

    move-object v7, p0

    check-cast v7, Lcom/baidu/trace/api/track/DistanceRequest;

    invoke-virtual {v7}, Lcom/baidu/trace/api/track/DistanceRequest;->getEntityName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    instance-of v7, p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;

    if-eqz v7, :cond_1

    move-object v7, p0

    check-cast v7, Lcom/baidu/trace/api/track/HistoryTrackRequest;

    invoke-virtual {v7}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getEntityName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    instance-of v7, p0, Lcom/baidu/trace/api/track/LatestPointRequest;

    if-eqz v7, :cond_2

    move-object v7, p0

    check-cast v7, Lcom/baidu/trace/api/track/LatestPointRequest;

    invoke-virtual {v7}, Lcom/baidu/trace/api/track/LatestPointRequest;->getEntityName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v7, ""

    :goto_0
    const/4 v8, 0x1

    const-string v9, "distance"

    if-eq p1, v8, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/baidu/trace/api/track/AddPointsResponse;

    invoke-direct {p0, v6, p3, p4}, Lcom/baidu/trace/api/track/AddPointsResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-static {p4, p0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/api/track/AddPointsResponse;)V

    :cond_4
    invoke-virtual {p5, p0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointsCallback(Lcom/baidu/trace/api/track/AddPointsResponse;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lcom/baidu/trace/api/track/AddPointResponse;

    invoke-direct {p0, v6, p3, p4}, Lcom/baidu/trace/api/track/AddPointResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-static {p4, p0}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    :cond_6
    invoke-virtual {p5, p0}, Lcom/baidu/trace/api/track/OnTrackListener;->onAddPointCallback(Lcom/baidu/trace/api/track/AddPointResponse;)V

    return-void

    :cond_7
    new-instance p1, Lcom/baidu/trace/api/track/LatestPointResponse;

    invoke-direct {p1, v6, p3, p4}, Lcom/baidu/trace/api/track/LatestPointResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_8

    check-cast p0, Lcom/baidu/trace/api/track/LatestPointRequest;

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/LatestPointRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p0

    invoke-static {p4, p0, p1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/track/LatestPointResponse;)V

    :cond_8
    invoke-virtual {p1, v7}, Lcom/baidu/trace/api/track/LatestPointResponse;->setEntityName(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcom/baidu/trace/api/track/OnTrackListener;->onLatestPointCallback(Lcom/baidu/trace/api/track/LatestPointResponse;)V

    return-void

    :cond_9
    new-instance p0, Lcom/baidu/trace/api/track/DistanceResponse;

    invoke-direct {p0, v6, p3, p4}, Lcom/baidu/trace/api/track/DistanceResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_b

    :try_start_0
    invoke-static {p4, p0}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/trace/api/track/DistanceResponse;->setDistance(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    :cond_b
    :goto_2
    invoke-virtual {p0, v7}, Lcom/baidu/trace/api/track/DistanceResponse;->setEntityName(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Lcom/baidu/trace/api/track/OnTrackListener;->onDistanceCallback(Lcom/baidu/trace/api/track/DistanceResponse;)V

    return-void

    :cond_c
    new-instance p1, Lcom/baidu/trace/api/track/HistoryTrackResponse;

    invoke-direct {p1, v6, p3, p4}, Lcom/baidu/trace/api/track/HistoryTrackResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_17

    check-cast p0, Lcom/baidu/trace/api/track/HistoryTrackRequest;

    invoke-virtual {p0}, Lcom/baidu/trace/api/track/HistoryTrackRequest;->getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    sget-object p0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_3
    :try_start_1
    invoke-static {p4, p1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_6

    :cond_e
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setTotal(I)V

    :cond_f
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setSize(I)V

    :cond_10
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setDistance(D)V

    :cond_11
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setTollDistance(D)V

    :cond_12
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    new-instance v2, Lcom/baidu/trace/model/Point;

    invoke-direct {v2, p4, p0}, Lcom/baidu/trace/model/Point;-><init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)V

    invoke-static {p3, v2, p4}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setStartPoint(Lcom/baidu/trace/model/Point;)V

    :cond_13
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    new-instance v1, Lcom/baidu/trace/model/Point;

    invoke-direct {v1, p4, p0}, Lcom/baidu/trace/model/Point;-><init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)V

    invoke-static {p3, v1, p4}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setEndPoint(Lcom/baidu/trace/model/Point;)V

    :cond_14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_16

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    new-instance v2, Lcom/baidu/trace/api/track/TrackPoint;

    invoke-direct {v2, p0}, Lcom/baidu/trace/api/track/TrackPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-static {v1, v2, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    invoke-virtual {p1, p3}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setTrackPoints(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    throw p0

    :catch_1
    :cond_17
    :goto_6
    invoke-virtual {p1, v7}, Lcom/baidu/trace/api/track/HistoryTrackResponse;->setEntityName(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcom/baidu/trace/api/track/OnTrackListener;->onHistoryTrackCallback(Lcom/baidu/trace/api/track/HistoryTrackResponse;)V

    return-void
.end method

.method private static a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;IJLjava/lang/String;JJZLcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/api/track/SupplementMode;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/model/SortType;IILjava/util/TreeMap;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/model/BaseRequest;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/baidu/trace/model/ProcessOption;",
            "Lcom/baidu/trace/api/track/SupplementMode;",
            "Lcom/baidu/trace/model/CoordType;",
            "Lcom/baidu/trace/model/SortType;",
            "II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/trace/api/track/OnTrackListener;",
            ")V"
        }
    .end annotation

    move-object v0, p5

    move-object/from16 v1, p17

    const-string v2, "entity_name"

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p5, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v2, p5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-lez v0, :cond_1

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "start_time"

    invoke-virtual {v1, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmp-long v0, p8, v2

    if-lez v0, :cond_2

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "end_time"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p10, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_processed"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p12, :cond_4

    invoke-virtual/range {p12 .. p12}, Lcom/baidu/trace/api/track/SupplementMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "supplement_mode"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p11

    invoke-static {v0, v1}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/ProcessOption;Ljava/util/TreeMap;)V

    if-eqz p13, :cond_5

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "coord_type_output"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p14, :cond_6

    invoke-virtual/range {p14 .. p14}, Lcom/baidu/trace/model/SortType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sort_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-lez p15, :cond_7

    invoke-static/range {p15 .. p15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "page_size"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-lez p16, :cond_8

    invoke-static/range {p16 .. p16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "page_index"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v0, 0x2

    sget-object v2, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    sget-object v3, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    move-wide v4, p3

    invoke-static {v1, p3, p4, v3}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v1

    move-object p3, p0

    move p4, v0

    move-object p5, p1

    move-object p6, v2

    move p7, p2

    move-object p8, v1

    move-object/from16 p9, p18

    invoke-static/range {p3 .. p9}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/baidu/trace/model/BaseRequest;Ljava/lang/String;JJJLjava/lang/String;IIIILcom/baidu/trace/api/analysis/ThresholdOption;Lcom/baidu/trace/model/ProcessOption;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p16

    const-string v3, "entity_name"

    invoke-static {p1}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v1, v0, Lcom/baidu/trace/api/analysis/StayPointRequest;

    const-string v3, "entityName\u53c2\u6570\u9519\u8bef"

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/baidu/trace/api/analysis/StayPointResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v0

    invoke-direct {v1, v0, v4, v3}, Lcom/baidu/trace/api/analysis/StayPointResponse;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/baidu/trace/api/analysis/OnAnalysisListener;->onStayPointCallback(Lcom/baidu/trace/api/analysis/StayPointResponse;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;

    invoke-virtual {p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v0

    invoke-direct {v1, v0, v4, v3}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/baidu/trace/api/analysis/OnAnalysisListener;->onDrivingBehaviorCallback(Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;)V

    :cond_1
    return-void

    :cond_2
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v4, v3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v1, p4, v5

    if-lez v1, :cond_3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "start_time"

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    cmp-long v1, p6, v5

    if-lez v1, :cond_4

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "end_time"

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-lez p10, :cond_5

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stay_time"

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-lez p11, :cond_6

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stay_radius"

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "speeding_threshold"

    if-eqz p13, :cond_a

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getSpeedingThreshold()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_7

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getSpeedingThreshold()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshAccelerationThreshold()D

    move-result-wide v5

    cmpl-double v3, v5, v7

    if-lez v3, :cond_8

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshAccelerationThreshold()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v5, "harsh_acceleration_threshold"

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshBreakingThreshold()D

    move-result-wide v5

    cmpg-double v3, v5, v7

    if-gez v3, :cond_9

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshBreakingThreshold()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v5, "harsh_breaking_threshold"

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshSteeringThreshold()D

    move-result-wide v5

    cmpl-double v3, v5, v7

    if-lez v3, :cond_a

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/trace/api/analysis/ThresholdOption;->getHarshSteeringThreshold()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v5, "harsh_steering_threshold"

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-lez p12, :cond_b

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v1, p14

    invoke-static {v1, v4}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/ProcessOption;Ljava/util/TreeMap;)V

    if-eqz p15, :cond_c

    invoke-virtual/range {p15 .. p15}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "coord_type_output"

    invoke-virtual {v4, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v1, 0x4

    sget-object v3, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    sget-object v5, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    move-wide v6, p2

    invoke-static {v4, p2, p3, v5}, Lcom/baidu/trace/a;->a(Ljava/util/TreeMap;JLcom/baidu/trace/c/a$c;)Ljava/lang/String;

    move-result-object v5

    move p1, v1

    move-object/from16 p2, p8

    move-object p3, v3

    move/from16 p4, p9

    move-object p5, v5

    move-object/from16 p6, p16

    invoke-static/range {p0 .. p6}, Lcom/baidu/trace/c/a;->a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/model/ProcessOption;Ljava/util/TreeMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/trace/model/ProcessOption;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "need_denoise="

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->isNeedDenoise()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    const-string v3, "=1"

    const-string v5, "=0"

    const-string v6, ",need_vacuate"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->isNeedVacuate()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v6, ",need_mapmatch"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->isNeedMapMatch()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v3, "="

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->getRadiusThreshold()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, ",radius_threshold"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->getRadiusThreshold()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->getTransportMode()Lcom/baidu/trace/model/TransportMode;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, ",transport_mode"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/trace/model/ProcessOption;->getTransportMode()Lcom/baidu/trace/model/TransportMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/trace/model/TransportMode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v3, 0x2c

    if-ne p0, v3, :cond_5

    invoke-virtual {v0, v4, v2, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "process_option"

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "INFO"

    invoke-static {v0, p0}, Lcom/baidu/trace/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/api/fence/DeleteFenceResponse;)V
    .locals 5

    const-string v0, "fence_ids"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;->setFenceIds(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/api/fence/UpdateFenceResponse;)V
    .locals 4

    const-string v0, "district_list"

    const-string v1, "district"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setDistrict(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setDistrictList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/api/track/AddPointsResponse;)V
    .locals 8

    const-string v0, "internal_error"

    const-string v1, "param_error"

    const-string v2, "fail_info"

    const-string v3, "success_num"

    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/track/AddPointsResponse;->setSuccessNum(I)V

    :cond_1
    new-instance p0, Lcom/baidu/trace/api/track/FailInfo;

    invoke-direct {p0}, Lcom/baidu/trace/api/track/FailInfo;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    new-instance v6, Lcom/baidu/trace/api/track/FailInfo$ParamError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, p0}, Lcom/baidu/trace/api/track/FailInfo$ParamError;-><init>(Lcom/baidu/trace/api/track/FailInfo;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/api/track/FailInfo$InternalError;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/baidu/trace/api/track/FailInfo;->setParamErrors(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_3

    new-instance v2, Lcom/baidu/trace/api/track/FailInfo$InternalError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0}, Lcom/baidu/trace/api/track/FailInfo$InternalError;-><init>(Lcom/baidu/trace/api/track/FailInfo;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/api/track/FailInfo$InternalError;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/baidu/trace/api/track/FailInfo;->setInternalErrors(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/track/AddPointsResponse;->setFailInfo(Lcom/baidu/trace/api/track/FailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)V
    .locals 9

    const-string v0, "monitored_status"

    const-string v1, "fence_id"

    const-string v2, "monitored_statuses"

    const-string v3, "size"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, p1, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;->setSize(I)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setSize(I)V

    :cond_2
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    new-instance v5, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;

    invoke-direct {v5}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;-><init>()V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->setFenceId(J)V

    :cond_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-class v7, Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/baidu/trace/api/fence/MonitoredStatus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-virtual {v5, v6}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->setMonitoredStatus(Lcom/baidu/trace/api/fence/MonitoredStatus;)V

    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;->setMonitoredStatusInfos(Ljava/util/List;)V

    return-void

    :cond_6
    instance-of v0, p1, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    invoke-virtual {p1, p0}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setMonitoredStatusInfos(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "speeding_points"

    const-string v3, "speeding_distance"

    const-string v4, "harsh_steering"

    const-string v5, "harsh_breaking"

    const-string v6, "harsh_acceleration"

    const-string v7, "speeding"

    const-string v8, "end_point"

    const-string v9, "start_point"

    const-string v10, "harsh_steering_num"

    const-string v11, "harsh_breaking_num"

    const-string v12, "harsh_acceleration_num"

    const-string v13, "speeding_num"

    const-string v14, "max_speed"

    const-string v15, "average_speed"

    move-object/from16 v16, v2

    const-string v2, "duration"

    move-object/from16 v17, v3

    const-string v3, "distance"

    if-eqz p1, :cond_0

    move-object/from16 v19, v4

    move-object/from16 v4, p1

    goto :goto_0

    :cond_0
    sget-object v18, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    :goto_0
    move-object/from16 v18, v5

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    move-object/from16 v20, v7

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setDistance(D)V

    goto :goto_1

    :cond_2
    move-object v0, v6

    move-object/from16 v20, v7

    :goto_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setDuration(I)V

    :cond_3
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setAverageSpeed(D)V

    :cond_4
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setMaxSpeed(D)V

    :cond_5
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setSpeedingNum(I)V

    :cond_6
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshAccelerationNum(I)V

    :cond_7
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshBreakingNum(I)V

    :cond_8
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshSteeringNum(I)V

    :cond_9
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v6, Lcom/baidu/trace/api/analysis/StartPoint;

    invoke-direct {v6, v4}, Lcom/baidu/trace/api/analysis/StartPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-static {v2, v6, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setStartPoint(Lcom/baidu/trace/api/analysis/StartPoint;)V

    :cond_a
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v6, Lcom/baidu/trace/api/analysis/EndPoint;

    invoke-direct {v6, v4}, Lcom/baidu/trace/api/analysis/EndPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-static {v2, v6, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setEndPoint(Lcom/baidu/trace/api/analysis/EndPoint;)V

    :cond_b
    const/4 v2, 0x4

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v6, v20

    filled-new-array {v6, v0, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_14

    aget-object v2, v9, v15

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    aget-object v2, v9, v15

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v19, v5

    if-ge v3, v14, :cond_13

    aget-object v5, v9, v15

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v20, v6

    new-instance v6, Lcom/baidu/trace/api/analysis/SpeedingInfo;

    invoke-direct {v6}, Lcom/baidu/trace/api/analysis/SpeedingInfo;-><init>()V

    move/from16 v21, v14

    move-object/from16 v14, v17

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v17, v12

    move-object/from16 v22, v13

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lcom/baidu/trace/api/analysis/SpeedingInfo;->setDistance(D)V

    goto :goto_4

    :cond_c
    move-object/from16 v17, v12

    move-object/from16 v22, v13

    :goto_4
    move-object/from16 v12, v16

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v12

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    move-object/from16 v23, v14

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_d

    move/from16 v24, v12

    new-instance v12, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    invoke-direct {v12, v4}, Lcom/baidu/trace/api/analysis/SpeedingPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-static {v1, v12, v5}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-static {v1, v12}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move/from16 v12, v24

    move-object/from16 v5, v25

    goto :goto_5

    :cond_d
    invoke-virtual {v6, v13}, Lcom/baidu/trace/api/analysis/SpeedingInfo;->setPoints(Ljava/util/List;)V

    goto :goto_6

    :cond_e
    move-object/from16 v16, v12

    move-object/from16 v23, v14

    :goto_6
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    move-object/from16 v20, v6

    move-object/from16 v22, v13

    move/from16 v21, v14

    move-object/from16 v23, v17

    move-object/from16 v17, v12

    aget-object v1, v9, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    invoke-direct {v1, v4}, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-static {v5, v1}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object/from16 v5, v17

    :cond_10
    :goto_8
    move-object/from16 v6, v22

    const/4 v12, 0x0

    goto :goto_9

    :cond_11
    aget-object v1, v9, v15

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    invoke-direct {v1, v4}, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-static {v5, v1}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;)V

    move-object/from16 v5, v17

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    move-object/from16 v5, v17

    aget-object v1, v9, v15

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    invoke-direct {v1, v4}, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v6, v1, v12}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-static {v6, v1}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;)V

    move-object/from16 v6, v22

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p2

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v14, v21

    move-object/from16 v17, v23

    goto/16 :goto_3

    :cond_13
    move-object/from16 v20, v6

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v23, v17

    const/4 v12, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object v3, v12

    move-object/from16 v6, v20

    const/4 v2, 0x4

    move-object v12, v5

    move-object/from16 v5, v19

    goto/16 :goto_2

    :cond_14
    move-object v5, v12

    move-object v6, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setSpeedings(Ljava/util/List;)V

    invoke-virtual {v0, v11}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshAccelerationPoints(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshBreakingPoints(Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->setHarshSteeringPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/CommonResponse;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "district_list"

    const-string v3, "entities"

    const-string v4, "size"

    const-string v5, "total"

    const-string v6, "latest_location"

    const-string v7, "modify_time"

    const-string v8, "create_time"

    const-string v9, "entity_desc"

    const-string v10, "entity_name"

    if-eqz p1, :cond_0

    move-object/from16 v11, p1

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_0
    :try_start_0
    invoke-static {v0, v1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v12

    if-nez v12, :cond_1

    return-void

    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/entity/CommonResponse;->setTotal(I)V

    :cond_2
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/entity/CommonResponse;->setSize(I)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_c

    new-instance v14, Lcom/baidu/trace/api/entity/EntityInfo;

    invoke-direct {v14}, Lcom/baidu/trace/api/entity/EntityInfo;-><init>()V

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 p1, v3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    goto :goto_2

    :cond_4
    move-object/from16 p1, v3

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/entity/EntityInfo;->setEntityName(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/entity/EntityInfo;->setEntityDesc(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/entity/EntityInfo;->setCreateTime(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/entity/EntityInfo;->setModifyTime(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v18, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v18

    goto :goto_3

    :cond_9
    move-object/from16 v18, v6

    new-instance v6, Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-direct {v6, v11}, Lcom/baidu/trace/api/entity/LatestLocation;-><init>(Lcom/baidu/trace/model/CoordType;)V

    invoke-static {v3, v6, v4}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {v14, v6}, Lcom/baidu/trace/api/entity/EntityInfo;->setLatestLocation(Lcom/baidu/trace/api/entity/LatestLocation;)V

    goto :goto_4

    :cond_a
    move/from16 v17, v4

    move-object/from16 v18, v6

    :goto_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/entity/EntityInfo;->setColumns(Ljava/util/Map;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p1

    move/from16 v4, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_c
    instance-of v3, v1, Lcom/baidu/trace/api/entity/DistrictSearchResponse;

    if-eqz v3, :cond_e

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_d

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    move-object v2, v1

    check-cast v2, Lcom/baidu/trace/api/entity/DistrictSearchResponse;

    invoke-virtual {v2, v4}, Lcom/baidu/trace/api/entity/DistrictSearchResponse;->setDistrictList(Ljava/util/List;)V

    :cond_e
    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/entity/CommonResponse;->setEntities(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/FenceListResponse;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "district"

    const-string v3, "denoise"

    const-string v4, "offset"

    const-string v5, "coord_type"

    const-string v6, "vertexes"

    const-string v7, "radius"

    const-string v8, "monitored_person"

    const-string v9, "fence_name"

    const-string v10, "shape"

    const-string v11, "modify_time"

    const-string v12, "create_time"

    const-string v13, "fence_id"

    const-string v14, "fences"

    const-string v15, "size"

    move-object/from16 v16, v2

    const-string v2, "longitude"

    move-object/from16 v17, v3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/fence/FenceListResponse;->setSize(I)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_15

    move/from16 v18, v14

    new-instance v14, Lcom/baidu/trace/api/fence/FenceInfo;

    invoke-direct {v14}, Lcom/baidu/trace/api/fence/FenceInfo;-><init>()V

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v19, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    :cond_2
    move-wide/from16 v21, v19

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v19, v3

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/fence/FenceInfo;->setCreateTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v19, v3

    :goto_1
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/fence/FenceInfo;->setModifyTime(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Lcom/baidu/trace/api/fence/FenceShape;

    move-object/from16 v20, v11

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/baidu/trace/api/fence/FenceShape;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v14, v3}, Lcom/baidu/trace/api/fence/FenceInfo;->setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V

    goto :goto_2

    :cond_5
    move-object/from16 v20, v11

    :goto_2
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, ""

    if-eqz v3, :cond_6

    :try_start_1
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_3

    :cond_6
    move-object/from16 v23, v11

    :goto_3
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_4

    :cond_7
    move-object/from16 v24, v11

    :goto_4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v25, 0x0

    move-object/from16 v30, v8

    const-string v8, "latitude"

    if-eqz v3, :cond_8

    :try_start_2
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/baidu/trace/model/LatLng;

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object/from16 v26, v11

    move-object/from16 v33, v12

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    goto :goto_5

    :cond_8
    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v26, v11

    move-object/from16 v33, v12

    move-object/from16 v3, v25

    :goto_5
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    :cond_9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move-object/from16 v34, v6

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object/from16 v35, v7

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_a

    move/from16 v25, v6

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v27, v12

    new-instance v12, Lcom/baidu/trace/model/LatLng;

    move-wide/from16 v28, v9

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-direct {v12, v9, v10, v13, v14}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v25

    move-object/from16 v12, v27

    move-wide/from16 v9, v28

    move-object/from16 v13, v36

    move-object/from16 v14, v37

    goto :goto_6

    :cond_a
    move-wide/from16 v28, v9

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    move-object/from16 v25, v11

    goto :goto_7

    :cond_b
    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-wide/from16 v28, v9

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    :goto_7
    if-eqz p1, :cond_c

    move-object/from16 v6, p1

    goto :goto_8

    :cond_c
    sget-object v6, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/trace/model/CoordType;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;

    move-result-object v6

    :cond_d
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    :goto_9
    move-object/from16 v8, v17

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    move-object/from16 v10, v16

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    :cond_10
    move-object/from16 v11, v26

    :goto_b
    invoke-virtual/range {v37 .. v37}, Lcom/baidu/trace/api/fence/FenceInfo;->getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;

    move-result-object v1

    sget-object v12, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v1, v12, :cond_11

    move-object/from16 v25, v3

    move-wide/from16 v26, v28

    move/from16 v28, v9

    move-object/from16 v29, v6

    invoke-static/range {v21 .. v29}, Lcom/baidu/trace/api/fence/CircleFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;DILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object v1

    move-object/from16 v3, v37

    invoke-virtual {v3, v1}, Lcom/baidu/trace/api/fence/FenceInfo;->setCircleFence(Lcom/baidu/trace/api/fence/CircleFence;)V

    goto :goto_c

    :cond_11
    move-object/from16 v3, v37

    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/FenceInfo;->getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;

    move-result-object v1

    sget-object v12, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v1, v12, :cond_12

    move/from16 v26, v9

    move-object/from16 v27, v6

    invoke-static/range {v21 .. v27}, Lcom/baidu/trace/api/fence/PolygonFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/PolygonFence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/baidu/trace/api/fence/FenceInfo;->setPolygonFence(Lcom/baidu/trace/api/fence/PolygonFence;)V

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/FenceInfo;->getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;

    move-result-object v1

    sget-object v12, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v1, v12, :cond_13

    move/from16 v26, v7

    move/from16 v27, v9

    move-object/from16 v28, v6

    invoke-static/range {v21 .. v28}, Lcom/baidu/trace/api/fence/PolylineFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IILcom/baidu/trace/model/CoordType;)Lcom/baidu/trace/api/fence/PolylineFence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/baidu/trace/api/fence/FenceInfo;->setPolylineFence(Lcom/baidu/trace/api/fence/PolylineFence;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v3}, Lcom/baidu/trace/api/fence/FenceInfo;->getFenceShape()Lcom/baidu/trace/api/fence/FenceShape;

    move-result-object v1

    sget-object v6, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    if-ne v1, v6, :cond_14

    const/16 v26, 0x0

    move/from16 v25, v9

    invoke-static/range {v21 .. v26}, Lcom/baidu/trace/api/fence/DistrictFence;->buildServerFence(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/baidu/trace/api/fence/DistrictFence;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/baidu/trace/api/fence/DistrictFence;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/baidu/trace/api/fence/FenceInfo;->setDistrictFence(Lcom/baidu/trace/api/fence/DistrictFence;)V

    :cond_14
    :goto_c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object/from16 v17, v8

    move-object/from16 v16, v10

    move/from16 v14, v18

    move-object/from16 v3, v19

    move-object/from16 v11, v20

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v12, v33

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    move-object/from16 v13, v36

    goto/16 :goto_0

    :cond_15
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/fence/FenceListResponse;->setFenceInfos(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/HistoryAlarmResponse;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "pre_point"

    const-string v3, "alarm_point"

    const-string v4, "action"

    const-string v5, "monitored_person"

    const-string v6, "fence_name"

    const-string v7, "fence_id"

    const-string v8, "alarms"

    const-string v9, "total"

    const-string v10, "size"

    if-eqz p1, :cond_0

    move-object/from16 v11, p1

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_0
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setSize(I)V

    :cond_2
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setTotal(I)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_a

    new-instance v12, Lcom/baidu/trace/api/fence/FenceAlarmInfo;

    invoke-direct {v12}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;-><init>()V

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setFenceId(J)V

    :cond_4
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setFenceName(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setMonitoredPerson(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-class v14, Lcom/baidu/trace/api/fence/MonitoredAction;

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/trace/api/fence/MonitoredAction;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v14

    check-cast v14, Lcom/baidu/trace/api/fence/MonitoredAction;

    invoke-virtual {v12, v14}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setMonitoredAction(Lcom/baidu/trace/api/fence/MonitoredAction;)V

    :cond_7
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v14, Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-direct {v14}, Lcom/baidu/trace/api/fence/AlarmPoint;-><init>()V

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v16, v3

    const-class v3, Ljava/lang/String;

    invoke-static {v15, v11, v14, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/AlarmPoint;Ljava/lang/Class;)V

    invoke-virtual {v12, v14}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setCurrentPoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V

    goto :goto_2

    :cond_8
    move-object/from16 v16, v3

    :goto_2
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-direct {v3}, Lcom/baidu/trace/api/fence/AlarmPoint;-><init>()V

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-class v14, Ljava/lang/String;

    invoke-static {v13, v11, v3, v14}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/AlarmPoint;Ljava/lang/Class;)V

    invoke-virtual {v12, v3}, Lcom/baidu/trace/api/fence/FenceAlarmInfo;->setPrePoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V

    :cond_9
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setFenceAlarmInfos(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/track/LatestPointResponse;)V
    .locals 5

    const-string v0, "limit_speed"

    const-string v1, "latest_point"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_0
    :try_start_0
    invoke-static {p0, p2}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/baidu/trace/api/track/LatestPoint;

    const/4 v3, 0x0

    invoke-direct {p0, v3, p1}, Lcom/baidu/trace/api/track/LatestPoint;-><init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p0, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {p2, p0}, Lcom/baidu/trace/api/track/LatestPointResponse;->setLatestPoint(Lcom/baidu/trace/api/track/LatestPoint;)V

    :cond_3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/baidu/trace/api/track/LatestPointResponse;->setLimitSpeed(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static a(Lorg/json/JSONObject;Lcom/baidu/trace/api/fence/CircleFence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "fenceName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/fence/CircleFence;->setFenceName(Ljava/lang/String;)V

    :cond_0
    const-string v0, "monitoredPerson"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/fence/CircleFence;->setMonitoredPerson(Ljava/lang/String;)V

    :cond_1
    const-string v0, "denoise"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/fence/CircleFence;->setDenoise(I)V

    :cond_2
    const-string v0, "radius"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/trace/api/fence/CircleFence;->setRadius(D)V

    :cond_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Lcom/baidu/trace/model/LatLng;

    invoke-direct {v0}, Lcom/baidu/trace/model/LatLng;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/trace/model/LatLng;->latitude:D

    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/trace/model/LatLng;->longitude:D

    :cond_4
    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/fence/CircleFence;->setCenter(Lcom/baidu/trace/model/LatLng;)V

    :cond_5
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/baidu/trace/api/track/FailInfo$InternalError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "entity_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/trace/api/track/FailInfo$InternalError;->setEntityName(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/baidu/trace/api/track/FailInfo$ParamError;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/baidu/trace/api/track/FailInfo$ParamError;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/track/FailInfo$ParamError;->setError(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/baidu/trace/api/track/TrackPoint;

    invoke-direct {v0}, Lcom/baidu/trace/api/track/TrackPoint;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/FailInfo$InternalError;->setTrackPoint(Lcom/baidu/trace/api/track/TrackPoint;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/AlarmPoint;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "loc_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/trace/api/fence/AlarmPoint;->setLocTime(J)V

    goto :goto_1

    :cond_0
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "create_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/trace/api/fence/AlarmPoint;->setCreateTime(J)V

    :cond_2
    const-string v0, "longitude"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {p2, v2}, Lcom/baidu/trace/api/fence/AlarmPoint;->setLocation(Lcom/baidu/trace/model/LatLng;)V

    :cond_3
    const-string v0, "radius"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/trace/api/fence/AlarmPoint;->setRadius(D)V

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_2
    const-string v0, "coord_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/trace/model/CoordType;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_8

    const/4 p1, 0x2

    if-eq p0, p1, :cond_7

    const/4 p1, 0x3

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    :cond_9
    :goto_3
    invoke-virtual {p2, p1}, Lcom/baidu/trace/api/fence/AlarmPoint;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "actual_speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/SpeedingPoint;->setActualSpeed(D)V

    :cond_0
    const-string v0, "limit_speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/SpeedingPoint;->setLimitSpeed(D)V

    :cond_1
    const-string v0, "acceleration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->setAcceleration(D)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;->setAcceleration(D)V

    :cond_3
    :goto_0
    const-string v0, "initial_speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->setInitialSpeed(D)V

    goto :goto_1

    :cond_4
    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;->setInitialSpeed(D)V

    :cond_5
    :goto_1
    const-string v0, "end_speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;->setEndSpeed(D)V

    goto :goto_2

    :cond_6
    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshBreakingPoint;->setEndSpeed(D)V

    :cond_7
    :goto_2
    const-string v0, "centripetal_acceleration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->setCentripetalAcceleration(D)V

    :cond_8
    const-string v0, "turn_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    const-class v2, Lcom/baidu/trace/api/analysis/TurnType;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/trace/api/analysis/TurnType;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/api/analysis/TurnType;

    invoke-virtual {v1, v0}, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->setTurnType(Lcom/baidu/trace/api/analysis/TurnType;)V

    :cond_9
    const-string v0, "speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/trace/api/analysis/HarshSteeringPoint;->setTurnSpeed(D)V

    :cond_a
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/baidu/trace/model/Point;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/trace/model/Point;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "longitude"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "latitude"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcom/baidu/trace/model/Point;->setLocation(Lcom/baidu/trace/model/LatLng;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "coord_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/model/CoordType;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/trace/model/Point;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    if-eqz p2, :cond_4

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "coord_type_input"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/model/CoordType;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/trace/model/Point;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, p1, Lcom/baidu/trace/api/analysis/StartPoint;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/StartPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/StartPoint;->setAddress(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    instance-of v1, p1, Lcom/baidu/trace/api/analysis/EndPoint;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/analysis/EndPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/analysis/EndPoint;->setAddress(Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    const-string v0, "radius"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/baidu/trace/model/Point;->setRadius(D)V

    if-eqz p2, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "loc_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/baidu/trace/model/Point;->setLocTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-eqz p2, :cond_9

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    const-string v0, "create_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p1, Lcom/baidu/trace/api/track/TrackPoint;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/track/TrackPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/TrackPoint;->setCreateTime(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    const-string v0, "direction"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/baidu/trace/model/Point;->setDirection(I)V

    if-eqz p2, :cond_b

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    const-string v0, "speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/baidu/trace/model/Point;->setSpeed(D)V

    if-eqz p2, :cond_c

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/baidu/trace/model/Point;->setHeight(D)V

    if-eqz p2, :cond_d

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    instance-of v1, p1, Lcom/baidu/trace/api/entity/LatestLocation;

    if-eqz v1, :cond_e

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/trace/api/entity/LatestLocation;->setDistance(D)V

    if-eqz p2, :cond_e

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_e
    const-string v0, "floor"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    instance-of v1, p1, Lcom/baidu/trace/api/entity/LatestLocation;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/entity/LatestLocation;->setFloor(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    instance-of v1, p1, Lcom/baidu/trace/api/track/LatestPoint;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/track/LatestPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/LatestPoint;->setFloor(Ljava/lang/String;)V

    :cond_10
    :goto_4
    if-eqz p2, :cond_11

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_11
    const-string v0, "object_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    instance-of v1, p1, Lcom/baidu/trace/api/entity/LatestLocation;

    if-eqz v1, :cond_12

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/entity/LatestLocation;->setObjectName(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    instance-of v1, p1, Lcom/baidu/trace/api/track/TrackPoint;

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/track/TrackPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/TrackPoint;->setObjectName(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    instance-of v1, p1, Lcom/baidu/trace/api/track/LatestPoint;

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lcom/baidu/trace/api/track/LatestPoint;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/trace/api/track/LatestPoint;->setObjectName(Ljava/lang/String;)V

    :cond_14
    :goto_5
    if-eqz p2, :cond_15

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_16
    instance-of p0, p1, Lcom/baidu/trace/api/entity/LatestLocation;

    if-eqz p0, :cond_17

    check-cast p1, Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/entity/LatestLocation;->setColumns(Ljava/util/Map;)V

    return-void

    :cond_17
    instance-of p0, p1, Lcom/baidu/trace/api/track/TrackPoint;

    if-eqz p0, :cond_18

    check-cast p1, Lcom/baidu/trace/api/track/TrackPoint;

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/TrackPoint;->setColumns(Ljava/util/Map;)V

    return-void

    :cond_18
    instance-of p0, p1, Lcom/baidu/trace/api/track/LatestPoint;

    if-eqz p0, :cond_19

    check-cast p1, Lcom/baidu/trace/api/track/LatestPoint;

    invoke-virtual {p1, v0}, Lcom/baidu/trace/api/track/LatestPoint;->setColumns(Ljava/util/Map;)V

    :cond_19
    return-void
.end method

.method protected static a(DLjava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p3, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u53c2\u6570\u9519\u8bef"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static a(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/TreeMap;Lcom/baidu/trace/api/entity/OnEntityListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/trace/api/entity/OnEntityListener;",
            ")Z"
        }
    .end annotation

    const-string v0, "entity_desc"

    const-string v1, "entity_name"

    const-string v2, "UTF-8"

    invoke-static {p2}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v3, :cond_3

    const-string p2, "entityName\u53c2\u6570\u9519\u8bef"

    if-nez p0, :cond_0

    new-instance p0, Lcom/baidu/trace/api/entity/AddEntityResponse;

    invoke-direct {p0, p1, v6, p2}, Lcom/baidu/trace/api/entity/AddEntityResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onAddEntityCallback(Lcom/baidu/trace/api/entity/AddEntityResponse;)V

    goto :goto_0

    :cond_0
    if-ne v5, p0, :cond_1

    new-instance p0, Lcom/baidu/trace/api/entity/UpdateEntityResponse;

    invoke-direct {p0, p1, v6, p2}, Lcom/baidu/trace/api/entity/UpdateEntityResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onUpdateEntityCallback(Lcom/baidu/trace/api/entity/UpdateEntityResponse;)V

    goto :goto_0

    :cond_1
    if-ne v6, p0, :cond_2

    new-instance p0, Lcom/baidu/trace/api/entity/DeleteEntityResponse;

    invoke-direct {p0, p1, v6, p2}, Lcom/baidu/trace/api/entity/DeleteEntityResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onDeleteEntityCallback(Lcom/baidu/trace/api/entity/DeleteEntityResponse;)V

    :cond_2
    :goto_0
    return v4

    :cond_3
    :try_start_0
    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p5, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    :try_start_1
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {p5, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-eqz p4, :cond_a

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Lcom/baidu/trace/c/e;->b(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p2, "column_key\u53c2\u6570\u9519\u8bef"

    if-nez p0, :cond_7

    new-instance p0, Lcom/baidu/trace/api/entity/AddEntityResponse;

    invoke-direct {p0, p1, v6, p2}, Lcom/baidu/trace/api/entity/AddEntityResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onAddEntityCallback(Lcom/baidu/trace/api/entity/AddEntityResponse;)V

    goto :goto_4

    :cond_7
    if-ne v5, p0, :cond_8

    new-instance p0, Lcom/baidu/trace/api/entity/UpdateEntityResponse;

    invoke-direct {p0, p1, v6, p2}, Lcom/baidu/trace/api/entity/UpdateEntityResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/baidu/trace/api/entity/OnEntityListener;->onUpdateEntityCallback(Lcom/baidu/trace/api/entity/UpdateEntityResponse;)V

    :cond_8
    :goto_4
    return v4

    :cond_9
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    :try_start_2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5, p4, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    :goto_5
    return v5
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/fence/OnFenceListener;)Z
    .locals 9

    new-instance v6, Lcom/baidu/trace/api/fence/DeleteFenceResponse;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getTag()I

    move-result v1

    sget-object v5, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;-><init>(IILjava/lang/String;Ljava/util/List;Lcom/baidu/trace/api/fence/FenceType;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/DeleteFenceRequest;->getFenceIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {p0, v7, v8, v1}, Lcom/baidu/trace/am;->a(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    invoke-static {p0, v1}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x3a9b

    invoke-virtual {v6, p0}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;->setStatus(I)V

    const-string p0, "\u5220\u9664\u672c\u5730\u56f4\u680f\u5931\u8d25"

    invoke-virtual {v6, p0}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;->setFenceIds(Ljava/util/List;)V

    invoke-static {v3, p1, v6, p4}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    invoke-virtual {v6, v0}, Lcom/baidu/trace/api/fence/DeleteFenceResponse;->setFenceIds(Ljava/util/List;)V

    invoke-static {v3, p1, v6, p4}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/baidu/trace/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/a;->b()Z

    move-result p0

    return p0
.end method

.method protected static a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BaiduTraceSDK"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", request object is null!"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", listener is null!"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z
    .locals 0

    invoke-static {p0}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u53c2\u6570\u9519\u8bef"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected static a(Ljava/util/Map;Ljava/lang/StringBuffer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/track/TrackPoint;",
            ">;>;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/trace/api/track/TrackPoint;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "entity_name"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "loc_time"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getLocTime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "latitude"

    invoke-virtual {v6}, Lcom/baidu/trace/model/LatLng;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "longitude"

    invoke-virtual {v6}, Lcom/baidu/trace/model/LatLng;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v6, "coord_type_input"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/trace/model/CoordType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v6, "speed"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getSpeed()D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "direction"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getDirection()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "height"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getHeight()D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "radius"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getRadius()D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "object_name"

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getObjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/baidu/trace/api/track/TrackPoint;->getColumns()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/baidu/trace/a;->a(Ljava/util/Map;Ljava/util/TreeMap;Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_8
    :goto_2
    return v0
.end method

.method protected static a(Ljava/util/Map;Ljava/util/TreeMap;Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/trace/c/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Handler;ILcom/baidu/trace/api/fence/Fence;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v2, "\u521b\u5efa\u672c\u5730\u56f4\u680f\u5931\u8d25"

    new-instance v3, Lcom/baidu/trace/api/fence/CreateFenceResponse;

    sget-object v4, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v5, 0x0

    const-string v6, "\u6210\u529f"

    move/from16 v7, p2

    invoke-direct {v3, v7, v5, v6, v4}, Lcom/baidu/trace/api/fence/CreateFenceResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p3, :cond_0

    invoke-virtual {v3, v4}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setStatus(I)V

    const-string v2, "fence\u53c2\u6570\u9519\u8bef"

    :goto_0
    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setMessage(Ljava/lang/String;)V

    :goto_1
    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v6

    :cond_0
    move-object/from16 v8, p3

    check-cast v8, Lcom/baidu/trace/api/fence/CircleFence;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceName(Ljava/lang/String;)V

    sget-object v9, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v3, v9}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceShape(Lcom/baidu/trace/api/fence/FenceShape;)V

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;)Z

    move-result v9

    const-string v10, "center\u53c2\u6570\u9519\u8bef"

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v11

    if-eq v9, v11, :cond_5

    sget-object v9, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v11

    if-ne v9, v11, :cond_1

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v11, v9, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v13, v9, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v11, v12, v13, v14}, Lcom/baidu/trace/TraceJniInterface;->wgsToBaidu(DD)[D

    move-result-object v9

    goto :goto_2

    :cond_1
    sget-object v9, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v11

    if-ne v9, v11, :cond_2

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v11, v9, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v13, v9, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v11, v12, v13, v14}, Lcom/baidu/trace/TraceJniInterface;->gcjToBaidu(DD)[D

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    if-nez v9, :cond_4

    :cond_3
    invoke-virtual {v3, v4}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setStatus(I)V

    invoke-virtual {v3, v10}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/baidu/trace/model/LatLng;

    aget-wide v10, v9, v5

    aget-wide v12, v9, v7

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {v8, v4}, Lcom/baidu/trace/api/fence/CircleFence;->setCenter(Lcom/baidu/trace/model/LatLng;)V

    :cond_5
    sget-object v4, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8, v4}, Lcom/baidu/trace/api/fence/CircleFence;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fenceName"

    invoke-static {v4, v5, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v4

    const-string v5, "monitoredPerson"

    invoke-static {v4, v5, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v4

    int-to-double v4, v4

    const-string v9, "denoise"

    invoke-static {v4, v5, v9, v3}, Lcom/baidu/trace/a;->a(DLjava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v4

    const-string v9, "radius"

    invoke-static {v4, v5, v9, v3}, Lcom/baidu/trace/a;->a(DLjava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v9, 0x3a99

    :try_start_0
    invoke-static {v8, v5, v4}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/fence/CircleFence;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v13

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v14

    sget-object v15, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/FenceShape;Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v4, v12, v10

    if-eqz v4, :cond_7

    invoke-virtual {v8, v10, v11}, Lcom/baidu/trace/api/fence/CircleFence;->setFenceId(J)V

    invoke-virtual {v3, v10, v11}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setFenceId(J)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_7
    invoke-virtual {v3, v9}, Lcom/baidu/trace/api/fence/CreateFenceResponse;->setStatus(I)V

    goto/16 :goto_0

    :cond_8
    :goto_3
    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v6
.end method

.method private static b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "\u66f4\u65b0\u672c\u5730\u56f4\u680f\u5931\u8d25"

    new-instance v3, Lcom/baidu/trace/api/fence/UpdateFenceResponse;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getTag()I

    move-result v4

    sget-object v5, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v6, 0x0

    const-string v7, "\u6210\u529f"

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_0

    invoke-virtual {v3, v7}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setStatus(I)V

    const-string v2, "fence\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/trace/api/fence/Fence;->getFenceId()J

    move-result-wide v14

    move-object/from16 v4, p0

    invoke-static {v4, v14, v15}, Lcom/baidu/trace/am;->a(Landroid/content/Context;J)Lcom/baidu/trace/api/fence/CircleFence;

    move-result-object v13

    if-nez v13, :cond_1

    const/16 v2, 0x3a98

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setStatus(I)V

    const-string v2, "\u6307\u5b9afenceId\u4e0d\u5b58\u5728"

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/UpdateFenceRequest;->getFence()Lcom/baidu/trace/api/fence/Fence;

    move-result-object v8

    check-cast v8, Lcom/baidu/trace/api/fence/CircleFence;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "fenceName"

    invoke-static {v9, v10, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/baidu/trace/api/fence/CircleFence;->setFenceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_3
    :goto_0
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v9

    const-string v10, "monitoredPerson"

    invoke-static {v9, v10, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/baidu/trace/api/fence/CircleFence;->setMonitoredPerson(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v9

    if-eqz v9, :cond_a

    sget-object v9, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v10

    if-ne v9, v10, :cond_6

    goto :goto_3

    :cond_6
    sget-object v9, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v10

    if-ne v9, v10, :cond_7

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v9, v9, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v11

    iget-wide v11, v11, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/baidu/trace/TraceJniInterface;->wgsToBaidu(DD)[D

    move-result-object v9

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v10

    if-ne v9, v10, :cond_8

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v9

    iget-wide v9, v9, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v11

    iget-wide v11, v11, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/baidu/trace/TraceJniInterface;->gcjToBaidu(DD)[D

    move-result-object v9

    goto :goto_2

    :cond_8
    move-object v9, v5

    :goto_2
    if-nez v9, :cond_9

    invoke-virtual {v3, v7}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setStatus(I)V

    const-string v2, "center\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_9
    new-instance v10, Lcom/baidu/trace/model/LatLng;

    aget-wide v11, v9, v6

    const/4 v6, 0x1

    aget-wide v5, v9, v6

    invoke-direct {v10, v11, v12, v5, v6}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {v13, v10}, Lcom/baidu/trace/api/fence/CircleFence;->setCenter(Lcom/baidu/trace/model/LatLng;)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getCenter()Lcom/baidu/trace/model/LatLng;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/baidu/trace/api/fence/CircleFence;->setCenter(Lcom/baidu/trace/model/LatLng;)V

    :goto_4
    sget-object v5, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v13, v5}, Lcom/baidu/trace/api/fence/CircleFence;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    :cond_b
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v5

    int-to-double v5, v5

    const-string v9, "denoise"

    invoke-static {v5, v6, v9, v3}, Lcom/baidu/trace/a;->a(DLjava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v5

    const-string v9, "radius"

    invoke-static {v5, v6, v9, v3}, Lcom/baidu/trace/a;->a(DLjava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/baidu/trace/api/fence/CircleFence;->setDenoise(I)V

    :cond_d
    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-lez v11, :cond_e

    invoke-virtual {v8}, Lcom/baidu/trace/api/fence/CircleFence;->getRadius()D

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lcom/baidu/trace/api/fence/CircleFence;->setRadius(D)V

    :cond_e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v12, 0x3a9a

    :try_start_0
    invoke-static {v13, v6, v5}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/fence/CircleFence;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v13}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lcom/baidu/trace/api/fence/CircleFence;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13}, Lcom/baidu/trace/api/fence/CircleFence;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v17

    invoke-virtual {v13}, Lcom/baidu/trace/api/fence/CircleFence;->getDenoise()I

    move-result v18

    sget-object v19, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p0

    move-wide v9, v14

    const/16 v4, 0x3a9a

    move-object/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    move-wide/from16 v21, v14

    move/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v5

    invoke-static/range {v8 .. v16}, Lcom/baidu/trace/am;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/model/CoordType;ILcom/baidu/trace/api/fence/FenceShape;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/trace/api/fence/CircleFence;->getFenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setFenceName(Ljava/lang/String;)V

    move-wide/from16 v8, v21

    invoke-virtual {v3, v8, v9}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setFenceId(J)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {v3, v4}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setStatus(I)V

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    const/4 v5, 0x0

    return-object v5

    :catch_0
    move-wide v8, v14

    const/16 v4, 0x3a9a

    const/4 v5, 0x0

    invoke-virtual {v3, v4}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setStatus(I)V

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Lcom/baidu/trace/api/fence/UpdateFenceResponse;->setFenceId(J)V

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5

    :cond_10
    :goto_5
    const/4 v5, 0x0

    invoke-static {v7, v0, v3, v1}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-object v5
.end method

.method protected static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/model/LatLng;

    iget-wide v2, v1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, v1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    const-string v5, "="

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_1

    const-string v1, "UTF-8"

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/FenceListRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    new-instance v7, Lcom/baidu/trace/api/fence/FenceListResponse;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getTag()I

    move-result v1

    sget-object v5, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/FenceListResponse;-><init>(IILjava/lang/String;ILcom/baidu/trace/api/fence/FenceType;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/FenceListRequest;->getFenceIds()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, v1, p2, v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/baidu/trace/api/fence/FenceListResponse;->setSize(I)V

    invoke-virtual {v7, v0}, Lcom/baidu/trace/api/fence/FenceListResponse;->setFenceInfos(Ljava/util/List;)V

    const/4 p0, 0x4

    invoke-static {p0, p1, v7, p3}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 9

    new-instance v8, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/HistoryAlarmRequest;->getTag()I

    move-result v1

    sget-object v6, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;-><init>(IILjava/lang/String;IILcom/baidu/trace/api/fence/FenceType;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p2, v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v8, p0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setTotal(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v8, p0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setSize(I)V

    invoke-virtual {v8, v0}, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;->setFenceAlarmInfos(Ljava/util/List;)V

    const/4 p0, 0x7

    invoke-static {p0, p1, v8, p3}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getTag()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getLatLng()Lcom/baidu/trace/model/LatLng;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v6

    new-instance v7, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    sget-object v8, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v9, 0x0

    const-string v10, "\u6210\u529f"

    invoke-direct {v7, v3, v9, v10, v8}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;-><init>(IILjava/lang/String;Lcom/baidu/trace/api/fence/FenceType;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x2

    const/4 v10, 0x6

    if-eqz v3, :cond_0

    invoke-virtual {v7, v8}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setStatus(I)V

    const-string v0, "monitored_person\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v7, v0}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setMessage(Ljava/lang/String;)V

    :goto_0
    invoke-static {v10, v1, v7, v2}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_0
    invoke-static {v5}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/LatLng;)Z

    move-result v3

    const-string v11, "location\u53c2\u6570\u9519\u8bef"

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v7, v8}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setStatus(I)V

    invoke-virtual {v7, v11}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    if-eqz v6, :cond_5

    sget-object v12, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    if-eq v12, v6, :cond_5

    sget-object v12, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    if-ne v12, v6, :cond_2

    iget-wide v12, v5, Lcom/baidu/trace/model/LatLng;->latitude:D

    iget-wide v14, v5, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v12, v13, v14, v15}, Lcom/baidu/trace/TraceJniInterface;->wgsToBaidu(DD)[D

    move-result-object v6

    goto :goto_2

    :cond_2
    sget-object v12, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    if-ne v12, v6, :cond_3

    iget-wide v12, v5, Lcom/baidu/trace/model/LatLng;->latitude:D

    iget-wide v14, v5, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v12, v13, v14, v15}, Lcom/baidu/trace/TraceJniInterface;->gcjToBaidu(DD)[D

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    aget-wide v8, v6, v9

    iput-wide v8, v5, Lcom/baidu/trace/model/LatLng;->latitude:D

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    iput-wide v8, v5, Lcom/baidu/trace/model/LatLng;->longitude:D

    :cond_5
    sget-object v6, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-nez v6, :cond_6

    new-instance v6, Lcom/baidu/trace/aj;

    invoke-direct {v6, v0}, Lcom/baidu/trace/aj;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    :cond_6
    invoke-static {v0, v3, v3}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v0}, Lcom/baidu/trace/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v10, v1, v7, v2}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceIds()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;->getFenceIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_8

    sget-object v9, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/baidu/trace/aj;->b(J)Lcom/baidu/trace/api/fence/Fence;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-static {v8, v4, v5, v0}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/fence/Fence;Ljava/lang/String;Lcom/baidu/trace/model/LatLng;Ljava/util/List;)V

    goto :goto_3

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    invoke-virtual {v3, v4, v5, v0}, Lcom/baidu/trace/aj;->a(Ljava/lang/String;Lcom/baidu/trace/model/LatLng;Ljava/util/List;)V

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setSize(I)V

    invoke-virtual {v7, v0}, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;->setMonitoredStatusInfos(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 8

    new-instance v7, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getTag()I

    move-result v1

    sget-object v5, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;-><init>(IILjava/lang/String;ILcom/baidu/trace/api/fence/FenceType;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getMonitoredPerson()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/trace/api/fence/MonitoredStatusRequest;->getFenceIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;

    invoke-direct {v2}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->setFenceId(J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;->setSize(I)V

    invoke-virtual {v7, v0}, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;->setMonitoredStatusInfos(Ljava/util/List;)V

    const/4 p0, 0x5

    invoke-static {p0, p1, v7, p3}, Lcom/baidu/trace/a;->a(ILandroid/os/Handler;Lcom/baidu/trace/model/BaseResponse;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "status"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "token"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/d;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Lcom/baidu/trace/a;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/trace/a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z
    .locals 7

    const-string v0, "message"

    const-string v1, "status_sp"

    const-string v2, "status"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\u670d\u52a1\u5185\u90e8\u9519\u8bef"

    const/4 v6, 0x1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v6, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x36b1

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    const-string p0, "\u8bf7\u6c42\u5931\u8d25"

    :goto_0
    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/baidu/trace/d;->a()V

    const/16 p0, 0x36b4

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    const-string p0, "\u9274\u6743\u5931\u8d25"

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/baidu/trace/d;->a()V

    const/16 p0, 0x36b3

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    const-string p0, "\u9274\u6743\u672a\u5b8c\u6210"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    invoke-virtual {p1, v5}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    :goto_1
    return v3

    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v5}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, "\u6210\u529f"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    :goto_3
    return v6

    :catch_0
    const/16 p0, 0x36b0

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setStatus(I)V

    const-string p0, "\u54cd\u5e94\u89e3\u6790\u5931\u8d25"

    invoke-virtual {p1, p0}, Lcom/baidu/trace/model/BaseResponse;->setMessage(Ljava/lang/String;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/baidu/trace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-char v1, p0, Lcom/baidu/trace/a;->e:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/a;->c:I

    const/16 v2, 0x1cc

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/trace/a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/trace/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/trace/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "h%xh%xh%x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
