.class Lcom/serenegiant/net/UdpBeacon$ReceiverTask;
.super Ljava/lang/Object;
.source "UdpBeacon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/UdpBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverTask"
.end annotation


# instance fields
.field private final mUdpSocket:Lcom/serenegiant/net/UdpSocket;

.field final synthetic this$0:Lcom/serenegiant/net/UdpBeacon;


# direct methods
.method private constructor <init>(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->mUdpSocket:Lcom/serenegiant/net/UdpSocket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;Lcom/serenegiant/net/UdpBeacon$1;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;-><init>(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v0, 0x100

    .line 542
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->mUdpSocket:Lcom/serenegiant/net/UdpSocket;

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 545
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4}, Lcom/serenegiant/net/UdpBeacon;->access$700(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4}, Lcom/serenegiant/net/UdpBeacon;->access$100(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 546
    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4}, Lcom/serenegiant/net/UdpBeacon;->access$1100(Lcom/serenegiant/net/UdpBeacon;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 549
    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4, p0, v2, v3}, Lcom/serenegiant/net/UdpBeacon;->access$400(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Object;J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 553
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v4}, Lcom/serenegiant/net/UdpBeacon;->access$1100(Lcom/serenegiant/net/UdpBeacon;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 561
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 562
    invoke-virtual {v1, v0}, Lcom/serenegiant/net/UdpSocket;->receive(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 563
    iget-object v5, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v5}, Lcom/serenegiant/net/UdpBeacon;->access$700(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 564
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/16 v5, 0x17

    if-ne v4, v5, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_0

    .line 567
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_0

    .line 568
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_0

    .line 569
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_0

    .line 570
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    goto :goto_0

    .line 573
    :cond_4
    new-instance v4, Lcom/serenegiant/net/UdpBeacon$Beacon;

    invoke-direct {v4, v0}, Lcom/serenegiant/net/UdpBeacon$Beacon;-><init>(Ljava/nio/ByteBuffer;)V

    .line 574
    iget-object v5, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v5}, Lcom/serenegiant/net/UdpBeacon;->access$1300(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/UUID;

    move-result-object v5

    invoke-static {v4}, Lcom/serenegiant/net/UdpBeacon$Beacon;->access$1200(Lcom/serenegiant/net/UdpBeacon$Beacon;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 576
    invoke-virtual {v1}, Lcom/serenegiant/net/UdpSocket;->remote()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v1}, Lcom/serenegiant/net/UdpSocket;->remotePort()I

    move-result v6

    .line 578
    iget-object v7, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v7}, Lcom/serenegiant/net/UdpBeacon;->access$900(Lcom/serenegiant/net/UdpBeacon;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :try_start_1
    iget-object v8, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v8}, Lcom/serenegiant/net/UdpBeacon;->access$1400(Lcom/serenegiant/net/UdpBeacon;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_5

    monitor-exit v7

    goto :goto_1

    .line 580
    :cond_5
    iget-object v8, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v8}, Lcom/serenegiant/net/UdpBeacon;->access$1400(Lcom/serenegiant/net/UdpBeacon;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;

    invoke-direct {v9, p0, v4, v5, v6}, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;-><init>(Lcom/serenegiant/net/UdpBeacon$ReceiverTask;Lcom/serenegiant/net/UdpBeacon$Beacon;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "UdpBeacon"

    .line 604
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    nop

    goto/16 :goto_0

    :catch_2
    :cond_6
    :goto_1
    return-void
.end method
