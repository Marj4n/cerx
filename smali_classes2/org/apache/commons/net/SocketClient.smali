.class public abstract Lorg/apache/commons/net/SocketClient;
.super Ljava/lang/Object;
.source "SocketClient.java"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x0

.field public static final NETASCII_EOL:Ljava/lang/String; = "\r\n"

.field private static final __DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

.field private static final __DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;


# instance fields
.field private __commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _defaultPort_:I

.field protected _hostname_:Ljava/lang/String;

.field protected _input_:Ljava/io/InputStream;

.field protected _output_:Ljava/io/OutputStream;

.field protected _serverSocketFactory_:Ljavax/net/ServerSocketFactory;

.field protected _socketFactory_:Ljavax/net/SocketFactory;

.field protected _socket_:Ljava/net/Socket;

.field protected _timeout_:I

.field private charset:Ljava/nio/charset/Charset;

.field private connProxy:Ljava/net/Proxy;

.field protected connectTimeout:I

.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    .line 68
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    .line 109
    iput v1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    .line 117
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 129
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 131
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 132
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    .line 133
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    .line 134
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 135
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 345
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 335
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 772
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/lang/String;I)V

    .line 307
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    .line 210
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 268
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    return-void
.end method

.method public connect(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 287
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 182
    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 185
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 186
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 235
    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 236
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 238
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 239
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 242
    iget-object p3, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance p4, Ljava/net/InetSocketAddress;

    invoke-direct {p4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {p3, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    return-void
.end method

.method protected createCommandSupport()V
    .locals 1

    .line 815
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/net/Socket;)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 327
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 329
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method protected fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 806
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .locals 1

    .line 793
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 869
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 826
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 752
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 435
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return v0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .line 465
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 847
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected getReceiveBufferSize()I
    .locals 1

    .line 524
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method protected getSendBufferSize()I
    .locals 1

    .line 504
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return v0
.end method

.method public getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 761
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 388
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 394
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 397
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 401
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 402
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_6
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 782
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 743
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return-void
.end method

.method public setDefaultPort(I)V
    .locals 0

    .line 424
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0

    .line 452
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1

    .line 838
    new-instance v0, Lorg/apache/commons/net/DefaultSocketFactory;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 839
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 515
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 495
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 730
    sget-object p1, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    goto :goto_0

    .line 732
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    :goto_0
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 709
    sget-object p1, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    goto :goto_0

    .line 711
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    :goto_0
    const/4 p1, 0x0

    .line 716
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public verifyRemote(Ljava/net/Socket;)Z
    .locals 1

    .line 690
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 691
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 693
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
