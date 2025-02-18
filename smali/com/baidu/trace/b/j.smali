.class public final Lcom/baidu/trace/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/b/b;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/DataOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    return-void
.end method

.method protected static e()Lcom/baidu/trace/b/j;
    .locals 1

    new-instance v0, Lcom/baidu/trace/b/j;

    invoke-direct {v0}, Lcom/baidu/trace/b/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    iget-object v1, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_1
    iput-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    throw v1
.end method

.method public final a(Lcom/baidu/trace/b/e;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "gateway.yingyan.baidu.com"

    const/16 v3, 0x206c

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    invoke-virtual {p0}, Lcom/baidu/trace/b/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/trace/b/e;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/trace/b/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    sget-object v0, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    invoke-static {}, Lcom/baidu/trace/b/a;->a()Lcom/baidu/trace/b/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/trace/b/e;->b()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    nop

    sget-object v0, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    invoke-static {}, Lcom/baidu/trace/b/a;->a()Lcom/baidu/trace/b/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/trace/b/e;->b()V

    :cond_2
    return-void
.end method

.method public final a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/baidu/trace/b/j;->b:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/b/j;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
