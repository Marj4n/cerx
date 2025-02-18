.class Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;
.super Ljava/lang/Object;
.source "SocketChannelDataLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/SocketChannelDataLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerTask"
.end annotation


# instance fields
.field private volatile mIsRunning:Z

.field private final mPort:I

.field private mServerChannel:Ljava/nio/channels/ServerSocketChannel;

.field final synthetic this$0:Lcom/serenegiant/net/SocketChannelDataLink;


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/SocketChannelDataLink;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->this$0:Lcom/serenegiant/net/SocketChannelDataLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mPort:I

    return-void
.end method

.method private declared-synchronized init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-static {}, Lcom/serenegiant/net/NetworkHelper;->getLocalIPv4Address()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mPort:I

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 266
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isNougat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    :goto_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private serverLoop()V
    .locals 3

    .line 283
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/serenegiant/net/SocketChannelDataLink$Client;

    iget-object v2, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->this$0:Lcom/serenegiant/net/SocketChannelDataLink;

    invoke-direct {v1, v2, v0}, Lcom/serenegiant/net/SocketChannelDataLink$Client;-><init>(Lcom/serenegiant/net/SocketChannelDataLink;Ljava/nio/channels/ByteChannel;)V

    .line 291
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->this$0:Lcom/serenegiant/net/SocketChannelDataLink;

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/SocketChannelDataLink;->add(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 229
    :try_start_0
    iput-boolean v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mIsRunning:Z

    .line 230
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 236
    :try_start_2
    iput-object v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mServerChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->init()V

    .line 249
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->serverLoop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->release()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 253
    :try_start_1
    invoke-static {}, Lcom/serenegiant/net/SocketChannelDataLink;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 255
    :goto_3
    invoke-virtual {p0}, Lcom/serenegiant/net/SocketChannelDataLink$ServerTask;->release()V

    throw v0
.end method
