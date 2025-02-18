.class Lcom/serenegiant/net/UdpBeacon$2;
.super Ljava/lang/Object;
.source "UdpBeacon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/UdpBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/net/UdpBeacon;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/UdpBeacon;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0x100

    .line 488
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 490
    :try_start_0
    new-instance v3, Lcom/serenegiant/net/UdpSocket;

    const/16 v4, 0x270f

    invoke-direct {v3, v4}, Lcom/serenegiant/net/UdpSocket;-><init>(I)V

    .line 491
    invoke-virtual {v3, v0}, Lcom/serenegiant/net/UdpSocket;->setReceiveBufferSize(I)V

    const/4 v0, 0x1

    .line 492
    invoke-virtual {v3, v0}, Lcom/serenegiant/net/UdpSocket;->setReuseAddress(Z)V

    const/16 v0, 0x7d0

    .line 493
    invoke-virtual {v3, v0}, Lcom/serenegiant/net/UdpSocket;->setSoTimeout(I)V

    .line 494
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;

    iget-object v5, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-direct {v4, v5, v3, v1}, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;-><init>(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;Lcom/serenegiant/net/UdpBeacon$1;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 498
    :cond_0
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v6}, Lcom/serenegiant/net/UdpBeacon;->access$700(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v6}, Lcom/serenegiant/net/UdpBeacon;->access$100(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 499
    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v6}, Lcom/serenegiant/net/UdpBeacon;->access$800(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 502
    iget-object v8, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v8}, Lcom/serenegiant/net/UdpBeacon;->access$800(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v6}, Lcom/serenegiant/net/UdpBeacon;->access$300(Lcom/serenegiant/net/UdpBeacon;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 504
    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v6, v3}, Lcom/serenegiant/net/UdpBeacon;->access$200(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v8, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v8, p0, v6, v7}, Lcom/serenegiant/net/UdpBeacon;->access$400(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Object;J)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 508
    :cond_2
    iget-object v6, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    const-wide/16 v7, 0x7d0

    invoke-static {v6, p0, v7, v8}, Lcom/serenegiant/net/UdpBeacon;->access$400(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Object;J)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    .line 513
    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4, v2}, Lcom/serenegiant/net/UdpBeacon;->access$702(Lcom/serenegiant/net/UdpBeacon;Z)Z

    .line 514
    invoke-virtual {v3}, Lcom/serenegiant/net/UdpSocket;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "UdpBeacon"

    .line 518
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 513
    iget-object v5, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v5, v2}, Lcom/serenegiant/net/UdpBeacon;->access$702(Lcom/serenegiant/net/UdpBeacon;Z)Z

    .line 514
    invoke-virtual {v3}, Lcom/serenegiant/net/UdpSocket;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 516
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string v3, "UdpBeacon"

    .line 518
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 522
    iget-object v3, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v3, v0}, Lcom/serenegiant/net/UdpBeacon;->access$500(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Exception;)V

    .line 524
    :goto_3
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v0, v2}, Lcom/serenegiant/net/UdpBeacon;->access$702(Lcom/serenegiant/net/UdpBeacon;Z)Z

    .line 525
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v0}, Lcom/serenegiant/net/UdpBeacon;->access$900(Lcom/serenegiant/net/UdpBeacon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 526
    :try_start_7
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$2;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v2, v1}, Lcom/serenegiant/net/UdpBeacon;->access$1002(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 527
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
