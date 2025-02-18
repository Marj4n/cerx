.class public final Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;
.super Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private volatile c:Ljava/io/OutputStream;

.field private d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

.field private e:I

.field private f:I

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private final i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    .line 27
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    const/16 v0, 0x64

    .line 30
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->i:I

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 137
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 143
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_1

    const/4 p2, -0x2

    const-string v0, "Create socket failure"

    .line 149
    invoke-interface {p1, p2, v0}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a([B)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const-string v1, "Successful"

    .line 125
    invoke-interface {p1, v0, v1}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    const-string v0, "fail to send data"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz p1, :cond_2

    const-string v0, "Socket maybe has been closed"

    .line 130
    invoke-interface {p1, v1, v0}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    .line 72
    :try_start_5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 74
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    .line 78
    :goto_2
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 68
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 70
    :try_start_8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_2

    .line 72
    :try_start_9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    .line 74
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_2
    :goto_3
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    goto :goto_2

    .line 70
    :goto_4
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_3

    .line 72
    :try_start_b
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v2

    .line 74
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_3
    :goto_5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    .line 78
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    throw v0

    .line 82
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_5

    .line 84
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_7

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 87
    :goto_7
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    :cond_7
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    .line 92
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8b6

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$1;-><init>(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 165
    iget v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 162
    :cond_3
    :goto_0
    iget v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    .line 168
    :goto_1
    new-instance v3, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 169
    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 170
    invoke-virtual {v3, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 171
    invoke-virtual {v3, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 172
    array-length v0, p1

    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 173
    invoke-virtual {v3, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 174
    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 175
    array-length p1, p1

    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 177
    invoke-static {v3}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object p1

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a([B)V

    .line 180
    monitor-exit p0

    :goto_2
    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public send(I[B)Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 102
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iput v1, v2, Landroid/os/Message;->what:I

    .line 104
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method
