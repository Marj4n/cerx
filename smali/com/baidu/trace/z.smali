.class public Lcom/baidu/trace/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field protected static a:Ljava/lang/String; = ""

.field protected static b:J = 0x0L

.field protected static c:Ljava/lang/String; = ""

.field protected static d:Ljava/lang/String; = ""

.field protected static e:Ljava/lang/String; = ""

.field protected static f:Ljava/lang/String; = ""

.field protected static g:Ljava/lang/String; = ""

.field protected static h:Ljava/lang/String; = ""

.field protected static i:Ljava/lang/String; = ""

.field protected static j:Ljava/lang/String; = ""

.field protected static k:Ljava/lang/String; = ""

.field protected static l:Ljava/lang/String; = ""

.field protected static m:Ljava/lang/String; = ""

.field protected static n:B = 0x0t

.field protected static o:B = 0x0t

.field protected static p:B = 0xft

.field protected static q:B = 0x1et

.field protected static r:B = 0x0t

.field protected static s:B = 0x1t

.field protected static t:B = 0x0t

.field protected static u:B = 0x0t

.field protected static v:B = 0x0t

.field protected static w:B = 0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getCUID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/trace/z;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/trace/z;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getIMEI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/z;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/trace/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/z;->j:Ljava/lang/String;

    sget-object p0, Lcom/baidu/trace/c/f;->c:Ljava/lang/String;

    sput-object p0, Lcom/baidu/trace/z;->f:Ljava/lang/String;

    const-string p0, "3.0.7"

    sput-object p0, Lcom/baidu/trace/z;->g:Ljava/lang/String;

    sget-object p0, Lcom/baidu/trace/c/f;->a:Ljava/lang/String;

    sput-object p0, Lcom/baidu/trace/z;->l:Ljava/lang/String;

    sget-object p0, Lcom/baidu/trace/c/f;->b:Ljava/lang/String;

    sput-object p0, Lcom/baidu/trace/z;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/az;->b:I

    new-instance v1, Lcom/baidu/trace/a/f;

    invoke-direct {v1}, Lcom/baidu/trace/a/f;-><init>()V

    :try_start_0
    const-string v2, "operat_result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->a:B

    const-string v2, "is_activated"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->i:B

    const-string v2, "heartbeat_period"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->b:B

    const-string v2, "packed_data_transmit_period"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->c:B

    const-string v2, "packed_data_capacity"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->d:B

    const-string v2, "packed_data_need_response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->e:B

    const-string v2, "module_switch"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->f:B

    const-string v2, "sensor_wakeup_threshold"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->g:B

    const-string v2, "volume_size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/baidu/trace/a/f;->h:B

    const-string v2, "location_info_sample_period"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->j:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iput-byte v0, v1, Lcom/baidu/trace/a/f;->a:B

    const/16 p1, 0xf

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->b:B

    const/16 p1, 0x1f

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->f:B

    const/16 p1, 0x60

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->d:B

    const/4 p1, 0x1

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->e:B

    const/16 p1, 0x1e

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->c:B

    const/4 p1, 0x5

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->j:B

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->g:B

    const/16 p1, 0x32

    iput-byte p1, v1, Lcom/baidu/trace/a/f;->h:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/f;)V

    throw p1
.end method
