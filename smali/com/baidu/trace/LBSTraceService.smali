.class public final Lcom/baidu/trace/LBSTraceService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/LBSTraceService$ServiceBinder;,
        Lcom/baidu/trace/LBSTraceService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/trace/LBSTraceService$a;

.field private b:Lcom/baidu/trace/LBSTraceService$ServiceBinder;

.field private c:Lcom/baidu/trace/b/d;

.field private d:Lcom/baidu/trace/bd;

.field private e:Landroid/content/Context;

.field private f:Lcom/baidu/trace/s;

.field private g:Z

.field private h:Lcom/baidu/trace/IListener;

.field private i:Z

.field private j:Z

.field private k:Lcom/baidu/trace/b/c;

.field private l:I

.field private m:I

.field private n:Lcom/baidu/trace/c/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/baidu/trace/LBSTraceService$a;

    invoke-direct {v0, p0}, Lcom/baidu/trace/LBSTraceService$a;-><init>(Lcom/baidu/trace/LBSTraceService;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->a:Lcom/baidu/trace/LBSTraceService$a;

    new-instance v0, Lcom/baidu/trace/LBSTraceService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/baidu/trace/LBSTraceService$ServiceBinder;-><init>(Lcom/baidu/trace/LBSTraceService;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->b:Lcom/baidu/trace/LBSTraceService$ServiceBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceService;->g:Z

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceService;->i:Z

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    new-instance v0, Lcom/baidu/trace/b/c;

    invoke-direct {v0}, Lcom/baidu/trace/b/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->k:Lcom/baidu/trace/b/c;

    sget-object v0, Lcom/baidu/trace/model/LocationMode;->High_Accuracy:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v0}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/trace/LBSTraceService;->l:I

    sget-object v0, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    invoke-virtual {v0}, Lcom/baidu/trace/model/ProtocolType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/trace/LBSTraceService;->m:I

    sget-object v0, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "-\\|-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "ak"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const-string v2, "entityName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v1, p0, v1

    const-string v2, "mcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v1, p0, v1

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    aget-object v1, p0, v1

    const-string v2, "md"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    aget-object v1, p0, v1

    const-string v2, "locationMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    aget-object v1, p0, v1

    const-string v2, "protocolType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    aget-object p0, p0, v1

    const-string v1, "isNeedObjectStorage"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/baidu/trace/LBSTraceService;I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "accessKey"

    sget-object v3, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "secretKey"

    sget-object v3, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    sget-object v3, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expireTime"

    sget-wide v3, Lcom/baidu/trace/g;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0, p1, v0}, Lcom/baidu/trace/IListener;->extendedOperationCallback(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    sget v0, Lcom/baidu/trace/Trace;->b:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/baidu/trace/Trace;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/trace/Trace;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/baidu/trace/bd;->i:I

    :cond_0
    sget v0, Lcom/baidu/trace/Trace;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget v0, Lcom/baidu/trace/Trace;->a:I

    sget v1, Lcom/baidu/trace/ar;->c:I

    if-lt v0, v1, :cond_1

    sget v0, Lcom/baidu/trace/Trace;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/baidu/trace/ar;->b:I

    :cond_1
    invoke-static {}, Lcom/baidu/trace/bd;->d()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/trace/bd;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/trace/bd;->a(ZZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v0}, Lcom/baidu/trace/bd;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    :cond_3
    new-instance v0, Lcom/baidu/trace/bd;

    invoke-direct {v0, p0}, Lcom/baidu/trace/bd;-><init>(Lcom/baidu/trace/LBSTraceService;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/trace/bd;->a(ZZ)V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {p1}, Lcom/baidu/trace/bd;->start()V

    return-void
.end method

.method private a(IJ)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v5, "pushInfo"

    invoke-virtual {v4, v5}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    const/4 v7, 0x1

    const-string v8, ";"

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v2, v5, v1}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v1}, Lcom/baidu/trace/s;->a()V

    return v7

    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_5

    aget-object v13, v9, v12

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    return v7

    :cond_1
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    const/4 v7, 0x2

    const-string v11, ""

    if-ge v15, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :try_start_0
    aget-object v15, v14, v7

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v7, 0x1

    aget-object v14, v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v7, :cond_3

    const/4 v7, 0x0

    return v7

    :cond_3
    sub-long v14, v2, v16

    const-wide/16 v16, 0x384

    cmp-long v7, v14, v16

    if-ltz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    return v1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v2, v5, v1}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v1}, Lcom/baidu/trace/s;->a()V

    const/4 v1, 0x1

    return v1
.end method

.method static synthetic a(Lcom/baidu/trace/LBSTraceService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/trace/LBSTraceService;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/trace/LBSTraceService;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/LBSTraceService;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/trace/LBSTraceService;)I
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-nez v0, :cond_0

    const/16 p0, 0x39

    return p0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_gather"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {p0}, Lcom/baidu/trace/s;->a()V

    const/16 p0, 0x37

    return p0

    :cond_1
    const/16 p0, 0x38

    return p0
.end method

.method private b(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/trace/bd;->a(ZZ)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/trace/LBSTraceService;->a(ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/trace/LBSTraceService;)I
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x36

    return p0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_gather"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {p0}, Lcom/baidu/trace/s;->a()V

    const/16 p0, 0x34

    return p0

    :cond_1
    const/16 p0, 0x35

    return p0
.end method

.method static synthetic d(Lcom/baidu/trace/LBSTraceService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/trace/LBSTraceService;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/baidu/trace/LBSTraceService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    return-object p0
.end method

.method private f(I)V
    .locals 2

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/16 v1, 0x13

    :try_start_0
    invoke-interface {p1, v1}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/trace/LBSTraceService;->i:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->i:Z

    :goto_0
    sget-object p1, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-boolean p1, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.baidu.trace.action.SOCKET_RECONNECT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->k:Lcom/baidu/trace/b/c;

    invoke-virtual {p0, v1, p1}, Lcom/baidu/trace/LBSTraceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    return-void
.end method

.method private i()V
    .locals 1

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/TraceJniInterface;->socketDisconnection()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceService;->i()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->k:Lcom/baidu/trace/b/c;

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    :cond_1
    invoke-static {v1}, Lcom/baidu/trace/b/d;->a(Z)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/bd;->a(J)V

    :cond_2
    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceService;->i()V

    return-void

    :cond_3
    invoke-static {}, Lcom/baidu/trace/ax;->a()V

    invoke-static {}, Lcom/baidu/trace/aw;->b()V

    const/16 v0, 0x10

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    sget-object v2, Lcom/baidu/trace/c/f$a;->a:Lcom/baidu/trace/c/f$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->a(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->g()Z

    :cond_5
    return-void
.end method

.method protected final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    sget-object p1, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/trace/TraceJniInterface;->socketDisconnection()V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/trace/b/d;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/trace/LBSTraceService;->g()V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/baidu/trace/bd;->a()V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    iget-object p1, p1, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    iget-object p1, p1, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    invoke-virtual {p1}, Lcom/baidu/trace/ar;->c()V

    :cond_2
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {p1}, Lcom/baidu/trace/bd;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    :cond_3
    invoke-static {}, Lcom/baidu/trace/bd;->b()V

    return-void
.end method

.method protected final a(II)V
    .locals 3

    sget v0, Lcom/baidu/trace/ar;->c:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    mul-int/lit16 v0, p1, 0x3e8

    sput v0, Lcom/baidu/trace/ar;->b:I

    mul-int/lit16 v0, p2, 0x3e8

    sput v0, Lcom/baidu/trace/bd;->i:I

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gather_interval"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pack_interval"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0}, Lcom/baidu/trace/s;->a()V

    :cond_0
    invoke-static {}, Lcom/baidu/trace/bd;->d()V

    invoke-static {p1, p2}, Lcom/baidu/trace/Trace;->a(II)Z

    return-void
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pushId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "infoType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    const-string v2, "infoContent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timeStamp"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result p1

    const/16 v5, 0xd

    invoke-static {v5, p1}, Lcom/baidu/trace/ax;->a(SI)[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/baidu/trace/b/d;->a([BLcom/baidu/trace/c/f$a;)V

    :cond_0
    invoke-direct {p0, v0, v3, v4}, Lcom/baidu/trace/LBSTraceService;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/baidu/trace/IListener;->pushCallback(BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected final a(SILcom/baidu/trace/c/f$a;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/baidu/trace/ax;->a(SI)[B

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Lcom/baidu/trace/b/d;->a([BLcom/baidu/trace/c/f$a;)V

    :cond_2
    return v0
.end method

.method protected final b()V
    .locals 3

    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceService;->i()V

    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    sget-object v2, Lcom/baidu/trace/c/f$a;->b:Lcom/baidu/trace/c/f$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->a(I)V

    :cond_1
    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/baidu/trace/IListener;->pushCallback(BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final b(I)Z
    .locals 2

    invoke-static {p1}, Lcom/baidu/trace/am;->a(I)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cacheSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method protected final c()V
    .locals 3

    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceService;->i()V

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/f$b;->c:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->f()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    sget-object v1, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/b/d;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/trace/bd;->a(ZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/baidu/trace/LBSTraceService;->a(ZZ)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_3

    const/16 v1, 0x7c

    :try_start_0
    invoke-interface {v0, v1}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->g:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    :cond_4
    return-void
.end method

.method protected final c(I)Z
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/baidu/trace/Trace;->b(I)Z

    sput p1, Lcom/baidu/trace/ar;->d:I

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "loc_time_offset"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {p1}, Lcom/baidu/trace/s;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method protected final d()V
    .locals 3

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/TraceJniInterface;->socketDisconnection()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    sget-object v1, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->e(I)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/trace/LBSTraceService;->b(ZZ)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->c()V

    return-void

    :cond_2
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/baidu/trace/LBSTraceService;->f(I)V

    return-void
.end method

.method protected final d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    iget-object v0, v0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    invoke-virtual {v0, p1}, Lcom/baidu/trace/ar;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final e()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Z)V

    sget-object v1, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->e(I)V

    return-void

    :cond_0
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/baidu/trace/LBSTraceService;->f(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/trace/LBSTraceService;->b(ZZ)V

    return-void
.end method

.method protected final e(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/trace/LBSTraceService;->g()V

    iget-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->k:Lcom/baidu/trace/b/c;

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    sput v1, Lcom/baidu/trace/c/e;->d:I

    invoke-static {}, Lcom/baidu/trace/bd;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-static {v1}, Lcom/baidu/trace/am;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "same_process"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/trace/am;->a()V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_5

    const/16 v0, 0x8f

    if-eq v0, p1, :cond_4

    sget-boolean v1, Lcom/baidu/trace/bd;->h:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8d

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    const/16 v0, 0x8e

    :goto_0
    invoke-interface {p1, v0}, Lcom/baidu/trace/IListener;->stopTraceCallback(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/trace/LBSTraceService;->stopSelf()V

    return-void
.end method

.method protected final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/baidu/trace/IListener;->stopTraceCallback(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->e()V

    :cond_2
    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v0, v2, v2}, Lcom/baidu/trace/bd;->a(ZZ)V

    sput-boolean v2, Lcom/baidu/trace/bd;->d:Z

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    const/16 v1, 0xb6

    invoke-interface {v0, v1}, Lcom/baidu/trace/IListener;->stopTraceCallback(I)V

    :cond_3
    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v0, v2, v2}, Lcom/baidu/trace/bd;->a(ZZ)V

    sput-boolean v2, Lcom/baidu/trace/bd;->d:Z

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/trace/bd;->e:Z

    return-void
.end method

.method protected final g()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v1, "client"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v1, "gather_interval"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v1, "pack_interval"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v1, "loc_time_offset"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0}, Lcom/baidu/trace/s;->a()V

    return-void
.end method

.method public final getClientListener()Lcom/baidu/trace/IListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    return-object v0
.end method

.method public final getLocationMode()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/LBSTraceService;->l:I

    return v0
.end method

.method public final getServiceContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final getTraceHandler()Lcom/baidu/trace/LBSTraceService$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->a:Lcom/baidu/trace/LBSTraceService$a;

    return-object v0
.end method

.method protected final h()V
    .locals 2

    sget-object v0, Lcom/baidu/trace/c/f$b;->c:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceService;->b:Lcom/baidu/trace/LBSTraceService$ServiceBinder;

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/baidu/trace/LBSTraceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    new-instance v1, Lcom/baidu/trace/s;

    invoke-direct {v1, v0}, Lcom/baidu/trace/s;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/av;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->a:Lcom/baidu/trace/LBSTraceService$a;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bc;->a(Landroid/os/Handler;)V

    invoke-static {}, Lcom/baidu/trace/b/d;->a()Lcom/baidu/trace/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->a:Lcom/baidu/trace/LBSTraceService$a;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/b/d;->a(Landroid/os/Handler;Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-static {v0, v1}, Lcom/baidu/trace/q;->a(Landroid/content/Context;Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cacheSize"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/trace/am;->a(I)V

    :cond_1
    sget-object v0, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/trace/c/h;->b()V

    sget-object v0, Lcom/baidu/trace/d;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/trace/d;->a()V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService;->k:Lcom/baidu/trace/b/c;

    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/LBSTraceService;->j:Z

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/baidu/trace/LBSTraceService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/trace/bd;->a()V

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    iget-object v1, v1, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    iget-object v1, v1, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    invoke-virtual {v1}, Lcom/baidu/trace/ar;->c()V

    :cond_2
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    invoke-virtual {v1}, Lcom/baidu/trace/bd;->c()V

    iput-object v2, p0, Lcom/baidu/trace/LBSTraceService;->d:Lcom/baidu/trace/bd;

    :cond_3
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/baidu/trace/b/d;->b()V

    iput-object v2, p0, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    :cond_4
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/baidu/trace/s;->b()V

    iput-object v2, p0, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    :cond_5
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "same_process"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/baidu/trace/d;->b()V

    :cond_6
    invoke-static {}, Lcom/baidu/trace/ax;->b()V

    invoke-static {}, Lcom/baidu/trace/c;->b()V

    invoke-static {}, Lcom/baidu/trace/g;->b()V

    invoke-static {}, Lcom/baidu/trace/aw;->d()V

    invoke-static {}, Lcom/baidu/trace/bd;->b()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "client"

    const-string v3, "isNeedObjectStorage"

    const-string v4, "pcn"

    const-string v5, "mcode"

    const-string v6, "entityName"

    const-string v7, "serviceId"

    const-string v8, "ak"

    const-string v9, "protocolType"

    const-string v10, "locationMode"

    const-string v11, "is_gather"

    const/4 v15, 0x0

    if-eqz v0, :cond_17

    const-string v12, "processID"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    iget-object v13, v1, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-object/from16 v17, v11

    const-string v11, "same_process"

    if-eq v12, v14, :cond_0

    invoke-interface {v13, v11, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    invoke-interface {v13, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    move-object/from16 v17, v11

    :goto_1
    const-string v11, "operateType"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v0, v11, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_16

    const/4 v12, 0x2

    if-nez v0, :cond_3

    :goto_3
    new-array v0, v12, [Z

    fill-array-data v0, :array_0

    goto/16 :goto_a

    :cond_3
    const-string v13, "initData"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v12, "notification"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/app/Notification;

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v12}, Lcom/baidu/trace/LBSTraceService;->startForeground(ILandroid/app/Notification;)V

    :cond_6
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/baidu/trace/LBSTraceService;->l:I

    :cond_7
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/baidu/trace/LBSTraceService;->m:I

    :cond_8
    const-string v9, "gatherInterval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/baidu/trace/Trace;->a:I

    :cond_9
    const-string v9, "packInterval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "packInterval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/baidu/trace/Trace;->b:I

    :cond_a
    const-string v9, "cacheSize"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "cacheSize"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/baidu/trace/Trace;->c:I

    sget v9, Lcom/baidu/trace/Trace;->c:I

    invoke-virtual {v1, v9}, Lcom/baidu/trace/LBSTraceService;->b(I)Z

    :cond_b
    const-string v9, "locTimeOffset"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "locTimeOffset"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/baidu/trace/ar;->d:I

    :cond_c
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_d

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_d
    move-object v8, v10

    :goto_5
    const-wide/16 v12, 0x0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    :cond_e
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_f
    move-object v6, v10

    :goto_6
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_10
    move-object v5, v10

    :goto_7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_11
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v3, v1, Lcom/baidu/trace/LBSTraceService;->g:Z

    iput-boolean v0, v1, Lcom/baidu/trace/LBSTraceService;->g:Z

    if-eqz v3, :cond_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    sget-object v3, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-wide v3, Lcom/baidu/trace/z;->b:J

    cmp-long v7, v12, v3

    if-eqz v7, :cond_14

    goto :goto_8

    :cond_14
    const/4 v3, 0x2

    new-array v2, v3, [Z

    aput-boolean v15, v2, v15

    const/4 v3, 0x1

    aput-boolean v0, v2, v3

    goto/16 :goto_9

    :cond_15
    :goto_8
    sput-object v8, Lcom/baidu/trace/z;->a:Ljava/lang/String;

    sput-wide v12, Lcom/baidu/trace/z;->b:J

    sput-object v6, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    sput-object v5, Lcom/baidu/trace/z;->d:Ljava/lang/String;

    sput-object v10, Lcom/baidu/trace/z;->e:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/c/f;->a:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->l:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/c/f;->b:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/LBSTraceService;->g()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lcom/baidu/trace/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-|-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v4, Lcom/baidu/trace/z;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/trace/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/trace/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/trace/z;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/trace/z;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v1, Lcom/baidu/trace/LBSTraceService;->l:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v1, Lcom/baidu/trace/LBSTraceService;->m:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, v1, Lcom/baidu/trace/LBSTraceService;->g:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v3, v2, v0}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0}, Lcom/baidu/trace/s;->a()V

    const/4 v0, 0x2

    new-array v2, v0, [Z

    fill-array-data v2, :array_1

    :goto_9
    move-object v0, v2

    :goto_a
    aget-boolean v2, v0, v15

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    move-object/from16 v3, v17

    goto/16 :goto_12

    :cond_16
    move-object/from16 v3, v17

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_17
    move-object/from16 v17, v11

    :try_start_0
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceService;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_1b

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v11, 0xa

    if-lt v0, v11, :cond_1b

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Lcom/baidu/trace/z;->b:J

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->d:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->e:Ljava/lang/String;

    const-string v0, "md"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->l:Ljava/lang/String;

    const-string v0, "cpu"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/z;->m:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/trace/LBSTraceService;->l:I

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/trace/LBSTraceService;->m:I

    if-nez v0, :cond_19

    sget-object v0, Lcom/baidu/trace/model/ProtocolType;->HTTP:Lcom/baidu/trace/model/ProtocolType;

    goto :goto_c

    :cond_19
    sget-object v0, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    :goto_c
    sput-object v0, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/baidu/trace/LBSTraceService;->g:Z

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, v17

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0, v3}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v4, "gather_interval"

    invoke-virtual {v0, v4}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v5, "pack_interval"

    invoke-virtual {v4, v5}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/baidu/trace/Trace;->a(II)Z

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    const-string v4, "loc_time_offset"

    invoke-virtual {v0, v4}, Lcom/baidu/trace/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/trace/ar;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :catch_0
    nop

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto :goto_f

    :catch_1
    move-object/from16 v3, v17

    goto :goto_10

    :cond_1b
    move-object/from16 v3, v17

    :goto_e
    if-eqz v2, :cond_1d

    goto :goto_11

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    :goto_f
    if-eqz v12, :cond_1c

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    :cond_1c
    throw v0

    :catch_2
    move-object/from16 v3, v17

    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_1d

    :goto_11
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1d
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_25

    const/4 v4, 0x1

    if-eq v11, v4, :cond_22

    const/4 v0, 0x2

    if-eq v11, v0, :cond_1f

    :catch_3
    :cond_1e
    :goto_13
    const/4 v0, 0x1

    goto/16 :goto_1b

    :cond_1f
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x37

    goto :goto_14

    :cond_20
    const/16 v0, 0x39

    :goto_14
    :try_start_3
    iget-object v2, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    invoke-interface {v2, v0}, Lcom/baidu/trace/IListener;->startGatherCallback(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    :cond_21
    sput-boolean v15, Lcom/baidu/trace/bd;->d:Z

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_22
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-eqz v0, :cond_23

    const/16 v0, 0x36

    goto :goto_15

    :cond_23
    const/16 v0, 0x34

    :goto_15
    :try_start_4
    iget-object v2, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    invoke-interface {v2, v0}, Lcom/baidu/trace/IListener;->startGatherCallback(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    iget-object v2, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/trace/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->f:Lcom/baidu/trace/s;

    invoke-virtual {v0}, Lcom/baidu/trace/s;->a()V

    goto :goto_13

    :cond_25
    iget-object v3, v1, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/trace/z;->a(Landroid/content/Context;)V

    :try_start_5
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v4

    sget-object v3, Lcom/baidu/trace/z;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sget-object v3, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-wide v7, Lcom/baidu/trace/z;->b:J

    sget-object v3, Lcom/baidu/trace/z;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    sget-object v3, Lcom/baidu/trace/z;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/trace/TraceJniInterface;->setAppInfo([B[BJ[B[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_17

    :catch_6
    new-array v3, v15, [B

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v17

    sget-wide v20, Lcom/baidu/trace/z;->b:J

    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v22, v3

    move-object/from16 v23, v3

    invoke-virtual/range {v17 .. v23}, Lcom/baidu/trace/TraceJniInterface;->setAppInfo([B[BJ[B[B)V

    :goto_17
    :try_start_6
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v4

    sget-object v3, Lcom/baidu/trace/z;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sget-object v3, Lcom/baidu/trace/z;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-object v3, Lcom/baidu/trace/z;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget-object v3, Lcom/baidu/trace/z;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget-object v3, Lcom/baidu/trace/z;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    sget-object v3, Lcom/baidu/trace/z;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    sget-object v3, Lcom/baidu/trace/z;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    sget-object v3, Lcom/baidu/trace/z;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual/range {v4 .. v12}, Lcom/baidu/trace/TraceJniInterface;->setDeviceInfo([B[B[B[B[B[B[B[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_18

    :catch_7
    new-array v3, v15, [B

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v17 .. v25}, Lcom/baidu/trace/TraceJniInterface;->setDeviceInfo([B[B[B[B[B[B[B[B)V

    :goto_18
    sget-object v3, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    iget-object v4, v1, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    invoke-direct {v1, v3, v15}, Lcom/baidu/trace/LBSTraceService;->b(ZZ)V

    sget-object v4, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-nez v4, :cond_26

    new-instance v4, Lcom/baidu/trace/aj;

    iget-object v5, v1, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/baidu/trace/aj;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    :cond_26
    new-instance v4, Lcom/baidu/trace/am;

    sget-object v5, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/baidu/trace/am;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4}, Lcom/baidu/trace/am;->start()V

    :cond_27
    if-eqz v2, :cond_28

    invoke-static {v15}, Lcom/baidu/trace/bd;->a(Z)V

    sget-object v3, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/baidu/trace/aq;

    invoke-direct {v4, v1}, Lcom/baidu/trace/aq;-><init>(Lcom/baidu/trace/LBSTraceService;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_28
    iget-object v3, v1, Lcom/baidu/trace/LBSTraceService;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v0, "BaiduTraceSDK"

    const-string v2, "current network is not available"

    invoke-static {v0, v2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/LBSTraceService;->e()V

    goto/16 :goto_13

    :cond_29
    if-eqz v2, :cond_2b

    sget-object v0, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    iput-object v0, v1, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    :cond_2a
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/TraceJniInterface;->socketDisconnection()V

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_1e

    goto :goto_1a

    :cond_2b
    sget-object v2, Lcom/baidu/trace/LBSTraceService$1;->a:[I

    iget-object v3, v1, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    invoke-virtual {v3}, Lcom/baidu/trace/c/f$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_30

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2c

    goto/16 :goto_13

    :cond_2c
    iget-object v2, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v2, :cond_2d

    const/16 v3, 0x19

    :try_start_7
    invoke-interface {v2, v3}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_19

    :catch_8
    nop

    :cond_2d
    :goto_19
    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/baidu/trace/LBSTraceService;->g:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x12

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    goto/16 :goto_13

    :cond_2e
    sget-object v0, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    iput-object v0, v1, Lcom/baidu/trace/LBSTraceService;->n:Lcom/baidu/trace/c/f$b;

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->b()V

    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->c:Lcom/baidu/trace/b/d;

    :goto_1a
    invoke-virtual {v0}, Lcom/baidu/trace/b/d;->c()V

    goto/16 :goto_13

    :cond_2f
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_1e

    const/16 v2, 0xb5

    :try_start_8
    invoke-interface {v0, v2}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_13

    :cond_30
    iget-object v0, v1, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    if-eqz v0, :cond_1e

    const/16 v2, 0x16

    :try_start_9
    invoke-interface {v0, v2}, Lcom/baidu/trace/IListener;->startTraceCallback(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_13

    :goto_1b
    return v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final setClientListener(Lcom/baidu/trace/IListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceService;->h:Lcom/baidu/trace/IListener;

    return-void
.end method
