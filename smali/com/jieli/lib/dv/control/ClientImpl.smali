.class public Lcom/jieli/lib/dv/control/ClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/jieli/lib/dv/control/IClient;
.implements Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;


# static fields
.field public static final MSG_RECEIVED_CTP_DATA:I = 0x105

.field public static final MSG_SOCKET_STATE:I = 0x101

.field static a:Ljava/lang/String;

.field private static b:Lcom/jieli/lib/dv/control/IClient;


# instance fields
.field private c:Ljava/net/Socket;

.field private volatile d:Ljava/io/OutputStream;

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    .line 66
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:I

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    .line 73
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    .line 75
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    return-object p1
.end method

.method private static a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_4

    .line 573
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getErrorType()I

    move-result v0

    const/16 v1, -0x64

    const-string v2, "{"

    const-string v3, ","

    if-eq v0, v1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"errno\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getErrorType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 576
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"op\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p0

    const-string v4, "}"

    if-eqz p0, :cond_3

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"param\":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 586
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_1

    goto :goto_2

    .line 591
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 571
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cmd info is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/net/Socket;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    .line 371
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 374
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :goto_0
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    .line 377
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    .line 378
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    goto :goto_2

    .line 376
    :goto_1
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    .line 377
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    .line 378
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    throw v0

    .line 382
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->stopRunning()V

    .line 384
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:I

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 6

    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 416
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.cmd.info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    if-eqz v1, :cond_3

    .line 420
    invoke-static {v1}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 429
    :try_start_1
    iget-object v4, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    array-length v5, v1

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 431
    invoke-direct {p0, v0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 432
    iput v3, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    goto :goto_0

    .line 433
    :cond_0
    sget-object v1, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const-string v4, "OutputStream is null"

    invoke-static {v1, v4}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    .line 436
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 438
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 440
    iput v3, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    .line 441
    sget-object p1, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Error :retryNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 442
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 423
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Data is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cmdInfo is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .line 473
    new-instance v0, Lcom/jieli/lib/dv/control/ClientImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl$4;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 298
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 300
    new-instance v2, Lcom/jieli/lib/dv/control/ClientImpl$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/ClientImpl$2;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    sget-object p1, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const-string p2, "It is connecting ..."

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->stopRunning()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/ClientImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl$3;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/io/OutputStream;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 389
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->a()V

    .line 391
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 396
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    .line 401
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 404
    :goto_0
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:Landroid/os/HandlerThread;

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    :cond_4
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    .line 409
    sput-object v1, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 275
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 280
    sget-object p1, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const-string v0, "OnConnectStateListener is null"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 285
    new-instance v2, Lcom/jieli/lib/dv/control/ClientImpl$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/ClientImpl$1;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 451
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "CTP_KEEP_ALIVE"

    .line 452
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 453
    invoke-static {v0}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/io/OutputStream;

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 456
    :cond_0
    invoke-direct {p0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    .line 457
    iput v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 460
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 462
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSocketAlive error : retryNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 463
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    .line 464
    iput v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->k:I

    goto :goto_0

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/ClientImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;-><init>(Ljava/net/Socket;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    .line 486
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->start()V

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;
    .locals 2

    .line 81
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcom/jieli/lib/dv/control/ClientImpl;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-direct {v1, p0}, Lcom/jieli/lib/dv/control/ClientImpl;-><init>(Landroid/content/Context;)V

    .line 85
    const-class p0, Lcom/jieli/lib/dv/control/IClient;

    invoke-static {v1, p0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jieli/lib/dv/control/IClient;

    sput-object p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 89
    :cond_1
    :goto_0
    sget-object p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Lcom/jieli/lib/dv/control/IClient;

    return-object p0
.end method

.method public static getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B
    .locals 10

    const-string v0, "CTP:"

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 505
    array-length v2, v1

    int-to-short v2, v2

    const/4 v3, 0x6

    add-int/2addr v3, v2

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 509
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 510
    invoke-static {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 511
    array-length v5, p0

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v5, 0x0

    .line 517
    :goto_0
    new-array v3, v3, [B

    .line 520
    array-length v7, v0

    invoke-static {v0, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    array-length v0, v0

    add-int/2addr v0, v6

    const/4 v7, 0x2

    .line 524
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 525
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-static {v9, v6, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/2addr v0, v7

    .line 533
    invoke-static {v1, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    .line 537
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 538
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 540
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/2addr v0, v4

    if-eqz p0, :cond_1

    .line 548
    invoke-static {p0, v6, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->a()V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_3

    const/16 v1, 0x107

    if-eq v0, v1, :cond_2

    const/16 v1, 0x104

    if-eq v0, v1, :cond_1

    const/16 v1, 0x105

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->c()V

    goto :goto_0

    .line 103
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isConnected()Z
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

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

    .line 204
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->b()V

    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/jieli/lib/dv/control/connect/response/SendResponse;->onResponse(Ljava/lang/Object;)V

    .line 172
    :cond_0
    sget-object p1, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not connected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    const/16 v1, 0x104

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra.cmd.info"

    .line 178
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 181
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iput v1, p1, Landroid/os/Message;->what:I

    .line 183
    iget-object p2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:Landroid/os/Handler;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
