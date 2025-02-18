.class public final Lcom/baidu/trace/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/trace/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static b()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/c;->a:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/baidu/trace/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/trace/c;->a:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/TraceJniInterface;->clearAttributeData()V

    sget-object v0, Lcom/baidu/trace/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/a/e;

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/trace/a/e;->a:[B

    iget-object v1, v1, Lcom/baidu/trace/a/e;->b:[B

    invoke-virtual {v2, v3, v1}, Lcom/baidu/trace/TraceJniInterface;->addAttributeData([B[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    new-instance p1, Lcom/baidu/trace/a/b;

    invoke-direct {p1}, Lcom/baidu/trace/a/b;-><init>()V

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    invoke-static {}, Lcom/baidu/trace/bc;->b()V

    return-void
.end method
