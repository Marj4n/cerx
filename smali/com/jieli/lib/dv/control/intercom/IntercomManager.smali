.class public Lcom/jieli/lib/dv/control/intercom/IntercomManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;
    }
.end annotation


# static fields
.field private static b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/net/InetAddress;

.field private e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

.field private f:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntercomManager"

    .line 26
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->createClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->h:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;[B)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a([B)I

    move-result p0

    return p0
.end method

.method private a([B)I
    .locals 5

    if-eqz p1, :cond_2

    .line 89
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 91
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Ljava/net/InetAddress;

    const/16 v4, 0x8b7

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 92
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    iget v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->h:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 100
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_0

    const-string v1, "Sending failed after try times"

    .line 101
    invoke-interface {p1, v0, v1}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a([B)I

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:J

    return-wide v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:J

    return-wide p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    return p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:J

    return-wide p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:I

    return p0
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:I

    return p1
.end method

.method static synthetic d(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:J

    return-wide v0
.end method

.method static synthetic e(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I
    .locals 2

    .line 25
    iget v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:I

    return v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-direct {v1, p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    return-object p0
.end method


# virtual methods
.method public closeClient()V
    .locals 2

    const/4 v0, 0x0

    .line 270
    sput-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 271
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->stopSendDataThread()V

    .line 272
    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    .line 274
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/DatagramSocket;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 277
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Ljava/net/InetAddress;

    :cond_1
    return-void
.end method

.method public createClient(Ljava/lang/String;)V
    .locals 1

    .line 64
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 68
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public initSendThread()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-direct {v0, p0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$1;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    .line 118
    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Z)Z

    .line 119
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->start()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-direct {v0, p0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$1;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    .line 123
    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Z)Z

    .line 124
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->start()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isSendThreadRunning()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public send([B)V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 141
    array-length v0, p1

    .line 142
    rem-int/lit16 v1, v0, 0x5a8

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 143
    div-int/lit16 v1, v0, 0x5a8

    goto :goto_0

    .line 145
    :cond_0
    div-int/lit16 v1, v0, 0x5a8

    add-int/2addr v1, v2

    .line 147
    :goto_0
    iget v3, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    if-lez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    mul-int/lit16 v5, v4, 0x5a8

    sub-int v6, v0, v5

    const/16 v7, 0x5a8

    if-lt v6, v7, :cond_1

    new-array v6, v7, [B

    .line 152
    invoke-static {p1, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 155
    :cond_1
    new-array v7, v6, [B

    .line 156
    invoke-static {p1, v5, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v7

    .line 158
    :goto_2
    new-instance v7, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 159
    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 160
    invoke-virtual {v7, v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 161
    iget v8, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    invoke-virtual {v7, v8}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 162
    invoke-virtual {v7, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 163
    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 164
    invoke-virtual {v7, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 165
    array-length v5, v6

    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v7, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 167
    iget-object v5, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-static {v5, v7}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method

.method public stopSendDataThread()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    if-eqz v0, :cond_1

    .line 258
    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->interrupt()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;

    :cond_1
    return-void
.end method
