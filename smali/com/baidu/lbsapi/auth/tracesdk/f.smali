.class Lcom/baidu/lbsapi/auth/tracesdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/tracesdk/e;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/tracesdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/f;->a:Lcom/baidu/lbsapi/auth/tracesdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/f;->a:Lcom/baidu/lbsapi/auth/tracesdk/e;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/e;->a(Lcom/baidu/lbsapi/auth/tracesdk/e;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/lbsapi/auth/tracesdk/e;->a(Lcom/baidu/lbsapi/auth/tracesdk/e;Ljava/util/List;)V

    return-void
.end method
