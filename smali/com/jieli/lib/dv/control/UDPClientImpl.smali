.class public Lcom/jieli/lib/dv/control/UDPClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/jieli/lib/dv/control/IClient;
.implements Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;


# static fields
.field public static final MSG_RECEIVED_DATA:I = 0x65

.field private static a:Ljava/lang/String;

.field private static b:Lcom/jieli/lib/dv/control/IClient;


# instance fields
.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/net/DatagramSocket;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    .line 58
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:I

    .line 66
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    .line 67
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    .line 71
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 276
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    :cond_0
    const/4 v0, 0x1

    .line 278
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(I)V

    .line 280
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    .line 282
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 325
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:I

    .line 326
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 327
    sget-object p1, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Ljava/lang/String;

    const-string v0, "OnConnectStateListener is null"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 332
    new-instance v2, Lcom/jieli/lib/dv/control/UDPClientImpl$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl$4;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 6

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra.cmd.info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    if-eqz v0, :cond_6

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 226
    invoke-static {v0}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 231
    iget-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 232
    invoke-direct {p0, p1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 236
    :try_start_1
    iget-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 238
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 239
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_2

    .line 242
    iget v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    if-lez v3, :cond_2

    .line 243
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    iget v5, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    invoke-direct {v3, v0, v4, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :try_start_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    goto :goto_1

    .line 250
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 253
    :try_start_4
    invoke-direct {p0, p1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 259
    iget p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ltz p1, :cond_3

    .line 261
    :goto_1
    monitor-exit p0

    return-void

    .line 259
    :cond_3
    :try_start_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No device\'s port is specified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No device IP is specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Data is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cmdInfo is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .line 264
    new-instance v0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/UDPClientImpl$2;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 314
    new-instance v2, Lcom/jieli/lib/dv/control/UDPClientImpl$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl$3;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/UDPClientImpl;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 287
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a()V

    .line 289
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 291
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 295
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    .line 300
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 303
    :goto_0
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Landroid/os/HandlerThread;

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 307
    :cond_4
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/UDPClientImpl;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/UDPClientImpl;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    return-object p0
.end method

.method static synthetic d(Lcom/jieli/lib/dv/control/UDPClientImpl;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;
    .locals 2

    .line 76
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/jieli/lib/dv/control/UDPClientImpl;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-direct {v1, p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;-><init>(Landroid/content/Context;)V

    .line 80
    const-class p0, Lcom/jieli/lib/dv/control/IClient;

    invoke-static {v1, p0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jieli/lib/dv/control/IClient;

    sput-object p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 84
    :cond_1
    :goto_0
    sget-object p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 3

    .line 110
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/UDPClientImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/UDPClientImpl$1;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b()V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a()V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto :goto_0

    .line 91
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra.cmd.info"

    .line 159
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 162
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    iput v1, p1, Landroid/os/Message;->what:I

    .line 164
    iget-object p2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
