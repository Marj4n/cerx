.class Lcom/baidu/lbsapi/auth/tracesdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/tracesdk/c;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/tracesdk/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/d;->a:Lcom/baidu/lbsapi/auth/tracesdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postWithHttps start Thread id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/lbsapi/auth/tracesdk/g;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/d;->a:Lcom/baidu/lbsapi/auth/tracesdk/c;

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/c;->a(Lcom/baidu/lbsapi/auth/tracesdk/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/lbsapi/auth/tracesdk/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/d;->a:Lcom/baidu/lbsapi/auth/tracesdk/c;

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/c;->b(Lcom/baidu/lbsapi/auth/tracesdk/c;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/lbsapi/auth/tracesdk/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/d;->a:Lcom/baidu/lbsapi/auth/tracesdk/c;

    invoke-static {v1, v0}, Lcom/baidu/lbsapi/auth/tracesdk/c;->a(Lcom/baidu/lbsapi/auth/tracesdk/c;Ljava/lang/String;)V

    return-void
.end method
