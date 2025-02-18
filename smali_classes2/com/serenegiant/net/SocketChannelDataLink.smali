.class public Lcom/serenegiant/net/SocketChannelDataLink;
.super Lcom/serenegiant/net/AbstractChannelDataLink;
.source "SocketChannelDataLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;,
        Lcom/serenegiant/net/SocketChannelDataLink$Client;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SERVER_PORT:I = 0x1770

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/serenegiant/net/SocketChannelDataLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/SocketChannelDataLink;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/serenegiant/net/AbstractChannelDataLink;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink;-><init>(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/serenegiant/net/SocketChannelDataLink;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public connectTo(Ljava/lang/String;)Lcom/serenegiant/net/SocketChannelDataLink$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1770

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/net/SocketChannelDataLink;->connectTo(Ljava/lang/String;I)Lcom/serenegiant/net/SocketChannelDataLink$Client;

    move-result-object p1

    return-object p1
.end method

.method public connectTo(Ljava/lang/String;I)Lcom/serenegiant/net/SocketChannelDataLink$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 83
    new-instance v0, Lcom/serenegiant/net/SocketChannelDataLink$Client;

    invoke-direct {v0, p0, p1, p2}, Lcom/serenegiant/net/SocketChannelDataLink$Client;-><init>(Lcom/serenegiant/net/SocketChannelDataLink;Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/SocketChannelDataLink;->add(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 86
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/serenegiant/net/SocketChannelDataLink;->stop()V

    .line 64
    invoke-super {p0}, Lcom/serenegiant/net/AbstractChannelDataLink;->release()V

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x1770

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/net/SocketChannelDataLink;->start(ILcom/serenegiant/net/AbstractChannelDataLink$Callback;)V

    return-void
.end method

.method public declared-synchronized start(ILcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/serenegiant/net/SocketChannelDataLink;->add(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V

    .line 129
    iget-object p2, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    if-nez p2, :cond_0

    .line 130
    new-instance p2, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    invoke-direct {p2, p0, p1}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;-><init>(Lcom/serenegiant/net/SocketChannelDataLink;I)V

    iput-object p2, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    .line 131
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 133
    :cond_0
    sget-object p1, Lcom/serenegiant/net/SocketChannelDataLink;->TAG:Ljava/lang/String;

    const-string p2, "already started"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x1770

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/net/SocketChannelDataLink;->start(ILcom/serenegiant/net/AbstractChannelDataLink$Callback;)V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;

    invoke-virtual {v0}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->release()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink;->mServerTask:Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
