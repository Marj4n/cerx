.class public final Lcom/baidu/trace/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:J

.field protected static c:Ljava/lang/String;

.field protected static d:Ljava/lang/String;


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

.method protected static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "token"

    const-string v1, "secret_key"

    const-string v2, "expire_time"

    const-string v3, "access_key"

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/trace/g;->b:J

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/trace/h;->a()V

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/trace/bc;->a(I)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/trace/g;->b()V

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/baidu/trace/bc;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/baidu/trace/g;->b()V

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/baidu/trace/bc;->a(I)V

    return-void
.end method
