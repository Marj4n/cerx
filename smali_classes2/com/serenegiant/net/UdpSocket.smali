.class public Lcom/serenegiant/net/UdpSocket;
.super Ljava/lang/Object;
.source "UdpSocket.java"


# instance fields
.field private final broadcast:Ljava/net/InetSocketAddress;

.field private channel:Ljava/nio/channels/DatagramChannel;

.field private localAddress:Ljava/lang/String;

.field private remoteAddress:Ljava/lang/String;

.field private remotePort:I

.field private sender:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 55
    iget-object v1, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 60
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 63
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 64
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 66
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 71
    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 72
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    move-object v0, v6

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/net/UdpSocket;->localAddress:Ljava/lang/String;

    .line 78
    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v5, 0x4

    new-array v5, v5, [B

    aput-byte v2, v5, v2

    aput-byte v2, v5, v3

    const/4 v3, 0x2

    aput-byte v2, v5, v3

    const/4 v3, 0x3

    aput-byte v2, v5, v3

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v4, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 79
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, -0x1

    .line 81
    aput-byte v1, v0, v3

    .line 82
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/serenegiant/net/UdpSocket;->broadcast:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UdpSocket#constructor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public broadcast(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/serenegiant/net/UdpSocket;->broadcast:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    return-void

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public broadcast([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 248
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/net/UdpSocket;->broadcast(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public channel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public getBroadcast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getBroadcast()Z

    move-result v0

    return v0

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    return v0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public local()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->localAddress:Ljava/lang/String;

    return-object v0
.end method

.method public receive(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/net/UdpSocket;->sender:Ljava/net/SocketAddress;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 267
    :cond_0
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 268
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/net/UdpSocket;->remoteAddress:Ljava/lang/String;

    .line 269
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lcom/serenegiant/net/UdpSocket;->remotePort:I

    .line 270
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 260
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    .line 96
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/UdpSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public remote()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public remotePort()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/serenegiant/net/UdpSocket;->remotePort:I

    return v0
.end method

.method public setBroadcast(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    :cond_1
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    :cond_1
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    :cond_1
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    :cond_1
    return-void
.end method

.method public socket()Ljava/net/DatagramSocket;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/serenegiant/net/UdpSocket;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method
