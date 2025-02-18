.class final Lcom/baidu/trace/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/baidu/trace/ar;


# direct methods
.method constructor <init>(Lcom/baidu/trace/ar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    iput-object p2, p0, Lcom/baidu/trace/au;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    invoke-static {v0}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;)Lcom/baidu/trace/ak;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    new-instance v1, Lcom/baidu/trace/ak;

    iget-object v2, p0, Lcom/baidu/trace/au;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/trace/ak;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;Lcom/baidu/trace/ak;)Lcom/baidu/trace/ak;

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/au;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/c/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    invoke-static {v0}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;)Lcom/baidu/trace/ak;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/baidu/trace/ak;->a(I)Z

    return-void

    :cond_1
    const-string v0, "BaiduTraceSDK"

    const-string v1, "Need ACCESS_FINE_LOCATION permission to get gps information"

    invoke-static {v0, v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    invoke-virtual {v0}, Lcom/baidu/trace/ar;->d()V

    sget v0, Lcom/baidu/trace/ak;->a:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/au;->b:Lcom/baidu/trace/ar;

    invoke-static {v0}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;)Lcom/baidu/trace/ak;

    move-result-object v0

    const-string v2, "\u672a\u6388\u4e88GPS\u5b9a\u4f4d\u6240\u9700\u6743\u9650"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/ak;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
