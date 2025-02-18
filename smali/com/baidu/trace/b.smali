.class public Lcom/baidu/trace/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field protected static a:B


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
    .locals 2

    new-instance v0, Lcom/baidu/trace/a/a;

    invoke-direct {v0}, Lcom/baidu/trace/a/a;-><init>()V

    :try_start_0
    const-string v1, "operat_result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/baidu/trace/a/a;->a:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/a;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :try_start_1
    iput-byte p1, v0, Lcom/baidu/trace/a/a;->a:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/a;)V

    throw p1
.end method
