.class Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;
.super Ljava/lang/Thread;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/task/DebugHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field private dataLen:I

.field private interval:I

.field private volatile isThreadAlive:Z

.field private mInetAddress:Ljava/net/InetAddress;

.field private mSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/net/DatagramSocket;Ljava/lang/String;II)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->isThreadAlive:Z

    .line 299
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mSocket:Ljava/net/DatagramSocket;

    .line 300
    iput p4, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->dataLen:I

    .line 301
    iput p5, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->interval:I

    .line 303
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    :goto_0
    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;)Z
    .locals 0

    .line 291
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->isThreadAlive:Z

    return p0
.end method

.method private createPacket()Ljava/net/DatagramPacket;
    .locals 7

    .line 343
    iget v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->dataLen:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$908()I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSSDP_NOTIFY UX_DATA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 347
    iget v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->dataLen:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 348
    :goto_0
    iget v4, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->dataLen:I

    if-ge v3, v4, :cond_0

    .line 349
    new-instance v4, Ljava/util/Random;

    const-wide/16 v5, 0x64

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    :cond_0
    array-length v3, v0

    add-int/2addr v3, v4

    new-array v4, v3, [B

    .line 352
    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    array-length v0, v0

    iget v5, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->dataLen:I

    invoke-static {v1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mInetAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$1000(Lcom/jieli/stream/dv/running2/task/DebugHelper;)I

    move-result v2

    invoke-direct {v0, v4, v3, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    invoke-static {}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendThread running..."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->isThreadAlive:Z

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->createPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :try_start_1
    iget v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->interval:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 335
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 312
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->isThreadAlive:Z

    .line 313
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 317
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
