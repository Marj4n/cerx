.class public Lcom/jieli/lib/dv/control/udp/UdpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final UDP_CLIENT_PORT:I = 0x8b4

.field private static a:Ljava/lang/String; = "UdpClient"

.field private static b:Lcom/jieli/lib/dv/control/udp/UdpClient;


# instance fields
.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/net/DatagramSocket;

.field private f:Ljava/net/InetAddress;

.field private g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .line 202
    new-instance v0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient$1;-><init>(Lcom/jieli/lib/dv/control/udp/UdpClient;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 5

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 181
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 186
    :try_start_2
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/net/InetAddress;

    iget v4, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 188
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 p1, 0x1

    .line 189
    invoke-direct {p0, p2, p1}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 192
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;
    .locals 2

    .line 58
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Lcom/jieli/lib/dv/control/udp/UdpClient;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/jieli/lib/dv/control/udp/UdpClient;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Lcom/jieli/lib/dv/control/udp/UdpClient;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/udp/UdpClient;-><init>()V

    sput-object v1, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Lcom/jieli/lib/dv/control/udp/UdpClient;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Lcom/jieli/lib/dv/control/udp/UdpClient;

    return-object v0
.end method


# virtual methods
.method public closeClient(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 215
    sput-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Lcom/jieli/lib/dv/control/udp/UdpClient;

    .line 216
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->isReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->stopReceiver()V

    .line 220
    :cond_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 224
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    if-eqz v1, :cond_4

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 228
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 231
    :goto_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    :cond_5
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Landroid/os/Handler;

    if-eqz p1, :cond_6

    .line 237
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->release()V

    :cond_6
    return-void
.end method

.method public createClient(Ljava/lang/String;I)V
    .locals 2

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object p1, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Ljava/lang/String;

    const-string p2, "address is null."

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Ljava/lang/String;

    const-string v1, "create udp channel."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:I

    .line 94
    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    .line 97
    :try_start_0
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    .line 102
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 106
    :goto_1
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/net/InetAddress;

    if-eqz p1, :cond_3

    .line 107
    sget-object p1, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Ljava/lang/String;

    const-string p2, "init udp channel ok."

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->isReceiver()Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    :cond_1
    new-instance p1, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    iget-object p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Ljava/net/DatagramSocket;

    invoke-direct {p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;-><init>(Ljava/net/DatagramSocket;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    .line 111
    sget-object p1, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Ljava/lang/String;

    const-string p2, "start Receiver thread ok."

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->start()V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 247
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "extra.cmd.info"

    .line 249
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->addConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z

    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 145
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->addNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z

    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 163
    invoke-direct {p0, p2, p1}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    return-void

    :cond_0
    const/16 v1, 0x204

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra.cmd.info"

    .line 169
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iput v1, p1, Landroid/os/Message;->what:I

    .line 174
    iget-object p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->removeConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z

    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 153
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->removeNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z

    return-void
.end method
