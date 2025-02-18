.class Lcom/baidu/lbsapi/auth/tracesdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Hashtable;

.field final synthetic f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iput p2, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->a:I

    iput-boolean p3, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->b:Z

    iput-object p4, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->e:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; forced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "checkAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->a:I

    const/16 v1, 0x259

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->b:Z

    if-nez v1, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x25a

    iget v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->a:I

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "authenticate wait  "

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->c()Lcom/baidu/lbsapi/auth/tracesdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/tracesdk/l;->b()V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "authenticate else  "

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "authenticate sendAuthRequest"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/b;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authStrings.length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_7
    if-eqz v5, :cond_9

    array-length v0, v5

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    sget-boolean v0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "more sha1 auth"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iget-boolean v2, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->b:Z

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->e:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->f:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->b:Z

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->e:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/tracesdk/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method
