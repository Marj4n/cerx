.class final Lcom/baidu/trace/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/baidu/trace/c/a$d;


# direct methods
.method constructor <init>(Lcom/baidu/trace/c/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/c/b;->a:Lcom/baidu/trace/c/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/trace/c/b;->a:Lcom/baidu/trace/c/a$d;

    iget v1, v0, Lcom/baidu/trace/c/a$d;->a:I

    iget-object v0, p0, Lcom/baidu/trace/c/b;->a:Lcom/baidu/trace/c/a$d;

    iget-object v2, v0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    iget-object v0, p0, Lcom/baidu/trace/c/b;->a:Lcom/baidu/trace/c/a$d;

    iget v5, v0, Lcom/baidu/trace/c/a$d;->b:I

    iget-object v0, p0, Lcom/baidu/trace/c/b;->a:Lcom/baidu/trace/c/a$d;

    iget-object v6, v0, Lcom/baidu/trace/c/a$d;->g:Ljava/lang/Object;

    const/16 v3, 0x36b2

    const-string v4, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static/range {v1 .. v6}, Lcom/baidu/trace/c/a$d;->a(ILcom/baidu/trace/model/BaseRequest;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
