.class public Lcom/baidu/trace/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field protected static a:B

.field protected static b:I

.field protected static c:[B

.field protected static d:B

.field protected static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/trace/ay;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    sget v1, Lcom/baidu/trace/ay;->b:I

    sget-byte v2, Lcom/baidu/trace/ay;->a:B

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/TraceJniInterface;->setPushResult(IB)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Lcom/baidu/trace/a/i;

    invoke-direct {v0}, Lcom/baidu/trace/a/i;-><init>()V

    :try_start_0
    const-string v1, "ak"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/trace/a/i;->a:Ljava/lang/String;

    const-string v1, "msg_flag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/trace/a/i;->b:I

    const-string v1, "info_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/baidu/trace/a/i;->c:B

    const-string v1, "info_content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/trace/a/i;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v1

    const-string v2, "time_flag"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/i;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    return-void
.end method
