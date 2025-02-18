.class final Lcom/baidu/trace/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/baidu/trace/api/bos/OnBosListener;

.field private synthetic b:Lcom/baidu/trace/api/bos/BosPutObjectResponse;


# direct methods
.method constructor <init>(Lcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/l;->a:Lcom/baidu/trace/api/bos/OnBosListener;

    iput-object p2, p0, Lcom/baidu/trace/l;->b:Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/l;->a:Lcom/baidu/trace/api/bos/OnBosListener;

    iget-object v1, p0, Lcom/baidu/trace/l;->b:Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/bos/OnBosListener;->onPutObjectCallback(Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V

    return-void
.end method
