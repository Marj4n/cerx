.class final Lcom/baidu/trace/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/baidu/trace/api/bos/OnBosListener;

.field private synthetic c:Lcom/baidu/trace/api/bos/BosObjectResponse;


# direct methods
.method constructor <init>(ILcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosObjectResponse;)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/k;->a:I

    iput-object p2, p0, Lcom/baidu/trace/k;->b:Lcom/baidu/trace/api/bos/OnBosListener;

    iput-object p3, p0, Lcom/baidu/trace/k;->c:Lcom/baidu/trace/api/bos/BosObjectResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/baidu/trace/k;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/k;->b:Lcom/baidu/trace/api/bos/OnBosListener;

    iget-object v1, p0, Lcom/baidu/trace/k;->c:Lcom/baidu/trace/api/bos/BosObjectResponse;

    check-cast v1, Lcom/baidu/trace/api/bos/BosGetObjectResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/bos/OnBosListener;->onGetObjectCallback(Lcom/baidu/trace/api/bos/BosGetObjectResponse;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/k;->b:Lcom/baidu/trace/api/bos/OnBosListener;

    iget-object v1, p0, Lcom/baidu/trace/k;->c:Lcom/baidu/trace/api/bos/BosObjectResponse;

    check-cast v1, Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/bos/OnBosListener;->onPutObjectCallback(Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V

    return-void
.end method
