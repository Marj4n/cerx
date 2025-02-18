.class public Lcom/baidu/trace/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    sput v0, Lcom/baidu/trace/az;->a:I

    new-instance v1, Lcom/baidu/trace/a/d;

    invoke-direct {v1}, Lcom/baidu/trace/a/d;-><init>()V

    :try_start_0
    const-string v2, "operat_result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, v1, Lcom/baidu/trace/a/d;->a:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/d;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iput-byte v0, v1, Lcom/baidu/trace/a/d;->a:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/d;)V

    throw p1
.end method
