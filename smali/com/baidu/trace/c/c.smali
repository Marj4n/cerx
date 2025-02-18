.class final Lcom/baidu/trace/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/StringBuffer;

.field private synthetic b:Lcom/baidu/trace/c/a$d;


# direct methods
.method constructor <init>(Lcom/baidu/trace/c/a$d;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iput-object p2, p0, Lcom/baidu/trace/c/c;->a:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/trace/c/c;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget v0, v0, Lcom/baidu/trace/c/a$d;->a:I

    iget-object v1, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget-object v1, v1, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    iget-object v2, p0, Lcom/baidu/trace/c/c;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget v3, v3, Lcom/baidu/trace/c/a$d;->b:I

    iget-object v4, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget-object v4, v4, Lcom/baidu/trace/c/a$d;->g:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/trace/c/a$d;->a(ILcom/baidu/trace/model/BaseRequest;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget v1, v0, Lcom/baidu/trace/c/a$d;->a:I

    iget-object v0, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget-object v2, v0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    const/16 v3, 0x36b1

    iget-object v0, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget v5, v0, Lcom/baidu/trace/c/a$d;->b:I

    iget-object v0, p0, Lcom/baidu/trace/c/c;->b:Lcom/baidu/trace/c/a$d;

    iget-object v6, v0, Lcom/baidu/trace/c/a$d;->g:Ljava/lang/Object;

    const-string v4, "\u8bf7\u6c42\u5931\u8d25"

    invoke-static/range {v1 .. v6}, Lcom/baidu/trace/c/a$d;->a(ILcom/baidu/trace/model/BaseRequest;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
