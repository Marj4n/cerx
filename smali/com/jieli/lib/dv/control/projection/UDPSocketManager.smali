.class public Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;,
        Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/net/InetAddress;

.field private e:Ljava/lang/String;

.field private f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UDPSocketManager"

    .line 28
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    .line 40
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->createUDPSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;[B)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a([B)I

    move-result p0

    return p0
.end method

.method private a([B)I
    .locals 5

    if-eqz p1, :cond_3

    .line 93
    array-length v0, p1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 95
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Ljava/net/InetAddress;

    const/16 v4, 0x8b6

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 96
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return v0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->createUDPSocket(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 110
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->j:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;

    if-eqz p1, :cond_1

    .line 111
    invoke-interface {p1, v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;->onError(I)V

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 115
    :cond_2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a([B)I

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    return p1
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:I

    return p1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
    .locals 2

    .line 51
    sget-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-direct {v1, p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    return-object p0
.end method


# virtual methods
.method public createUDPSocket(Ljava/lang/String;)V
    .locals 1

    .line 67
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 71
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:Ljava/lang/String;

    .line 74
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public initSendThread()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-direct {v0, p0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$1;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    .line 128
    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Z)Z

    .line 129
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->start()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-direct {v0, p0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$1;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    .line 133
    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Z)Z

    .line 134
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->start()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isSendThreadRunning()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 288
    sput-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    .line 289
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->stopSendDataThread()V

    .line 290
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    .line 292
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/net/DatagramSocket;

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 295
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Ljava/net/InetAddress;

    :cond_1
    return-void
.end method

.method public setOnSocketErrorListener(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->j:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;

    return-void
.end method

.method public stopSendDataThread()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    if-eqz v0, :cond_1

    .line 276
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->interrupt()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    :cond_1
    return-void
.end method

.method public writeData(I[B)V
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    .line 152
    array-length v0, p2

    .line 153
    rem-int/lit16 v1, v0, 0x5ab

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 154
    div-int/lit16 v1, v0, 0x5ab

    goto :goto_0

    .line 156
    :cond_0
    div-int/lit16 v1, v0, 0x5ab

    add-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 163
    iget v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 160
    :cond_3
    :goto_1
    iget v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:I

    :goto_2
    if-lez v3, :cond_5

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    mul-int/lit16 v5, v2, 0x5ab

    sub-int v6, v0, v5

    const/16 v7, 0x5ab

    if-lt v6, v7, :cond_4

    new-array v6, v7, [B

    .line 170
    invoke-static {p2, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 173
    :cond_4
    new-array v7, v6, [B

    .line 174
    invoke-static {p2, v5, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v7

    .line 176
    :goto_4
    new-instance v7, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 177
    invoke-virtual {v7, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 178
    invoke-virtual {v7, v4}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 179
    invoke-virtual {v7, v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 180
    invoke-virtual {v7, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 181
    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 182
    invoke-virtual {v7, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 183
    array-length v5, v6

    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v7, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 185
    iget-object v5, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;

    invoke-static {v5, v7}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
