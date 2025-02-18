.class public final Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;
.super Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/net/DatagramSocket;

.field private e:Ljava/net/InetAddress;

.field private f:I

.field private g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    .line 24
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    return-void
.end method

.method private a([B)V
    .locals 5

    if-eqz p1, :cond_2

    .line 92
    array-length v0, p1

    if-lez v0, :cond_2

    .line 93
    monitor-enter p0

    const/4 v0, -0x1

    .line 95
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    iget v4, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->f:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 96
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    const-string v1, "Socket was destroy"

    invoke-interface {p1, v0, v1}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 104
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    .line 109
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a:Ljava/lang/String;

    const-string v0, "data maybe is null"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(I[B)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 116
    array-length v1, p2

    if-lez v1, :cond_7

    .line 119
    array-length v1, p2

    .line 120
    rem-int/lit16 v2, v1, 0x5ab

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 121
    div-int/lit16 v2, v1, 0x5ab

    goto :goto_0

    .line 123
    :cond_0
    div-int/lit16 v2, v1, 0x5ab

    add-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 130
    iget v4, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 127
    :cond_3
    :goto_1
    iget v4, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    :goto_2
    if-lez v4, :cond_7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_6

    mul-int/lit16 v6, v5, 0x5ab

    sub-int v7, v1, v6

    const/16 v8, 0x5ab

    if-lt v7, v8, :cond_4

    new-array v7, v8, [B

    .line 137
    invoke-static {p2, v6, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 140
    :cond_4
    new-array v8, v7, [B

    .line 141
    invoke-static {p2, v6, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v8

    .line 143
    :goto_4
    new-instance v8, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v8}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 144
    invoke-virtual {v8, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 145
    invoke-virtual {v8, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 146
    invoke-virtual {v8, v4}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 147
    invoke-virtual {v8, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 148
    invoke-virtual {v8, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 149
    invoke-virtual {v8, v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 150
    array-length v6, v7

    invoke-virtual {v8, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v8, v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 152
    invoke-static {v8}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v6

    if-eqz v6, :cond_5

    .line 154
    invoke-direct {p0, v6}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a([B)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return v3

    :cond_7
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 61
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 62
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 65
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    .line 67
    :cond_1
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8b6

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 0

    .line 38
    iput p2, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->f:I

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 44
    :try_start_0
    new-instance p2, Ljava/net/DatagramSocket;

    invoke-direct {p2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object p2, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 46
    invoke-virtual {p2}, Ljava/net/SocketException;->printStackTrace()V

    .line 50
    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1
    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Destination IP is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(I[B)Z
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a(I[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "Successful"

    .line 75
    invoke-interface {p1, p2, v0}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_0
    return p2

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_2

    const/4 p2, -0x1

    const-string v0, "Failed: data incorrect"

    .line 80
    invoke-interface {p1, p2, v0}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method
