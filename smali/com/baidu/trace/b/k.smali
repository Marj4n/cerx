.class public final Lcom/baidu/trace/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/b/b;


# instance fields
.field private a:Ljava/net/DatagramSocket;

.field private b:Ljava/net/DatagramPacket;

.field private c:Ljava/net/InetAddress;

.field private d:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    iput-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    iput-object v0, p0, Lcom/baidu/trace/b/k;->c:Ljava/net/InetAddress;

    const/16 v0, 0x206c

    iput v0, p0, Lcom/baidu/trace/b/k;->d:I

    iput p1, p0, Lcom/baidu/trace/b/k;->d:I

    return-void
.end method

.method protected static a(I)Lcom/baidu/trace/b/k;
    .locals 1

    new-instance v0, Lcom/baidu/trace/b/k;

    invoke-direct {v0, p0}, Lcom/baidu/trace/b/k;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    iput-object v0, p0, Lcom/baidu/trace/b/k;->c:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    throw v1

    :catch_0
    iput-object v0, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    return-void
.end method

.method public final a(Lcom/baidu/trace/b/e;)V
    .locals 4

    :try_start_0
    new-instance p1, Ljava/net/DatagramSocket;

    iget v0, p0, Lcom/baidu/trace/b/k;->d:I

    invoke-direct {p1, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object p1, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    const-string p1, "gateway.yingyan.baidu.com"

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/b/k;->c:Ljava/net/InetAddress;

    new-instance p1, Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/trace/b/k;->c:Ljava/net/InetAddress;

    const/16 v3, 0x206c

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object p1, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "udp socket connect failed"

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/baidu/trace/b/k;->c:Ljava/net/InetAddress;

    const/16 v3, 0x206c

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    iget-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setLength(I)V

    :goto_0
    iget-object p1, p0, Lcom/baidu/trace/b/k;->a:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/baidu/trace/b/k;->b:Ljava/net/DatagramPacket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/b/k;->d:I

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
