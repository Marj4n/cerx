.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTcp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "SocketError"

    :try_start_0
    const-string v0, "ControlFragment"

    const-string v5, "StartTcp-SocketTryConnect"

    .line 399
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 402
    :try_start_1
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 404
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :goto_0
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/net/Socket;)Ljava/net/Socket;

    .line 408
    :cond_0
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v6, Ljava/net/Socket;

    const-string v7, "192.168.25.1"

    const/16 v8, 0x1f91

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v6}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/net/Socket;)Ljava/net/Socket;

    .line 410
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 412
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "SocketTcp"

    const-string v5, "Socket Conntcted!!!"

    .line 425
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iget-object v5, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 428
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iget-object v5, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 431
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 435
    :cond_2
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    invoke-direct {v7, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$502(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 539
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/16 v0, 0x12

    new-array v5, v0, [B

    const/16 v7, 0x47

    aput-byte v7, v5, v6

    const/16 v8, 0x50

    const/4 v9, 0x1

    aput-byte v8, v5, v9

    const/16 v10, 0x53

    const/4 v11, 0x2

    aput-byte v10, v5, v11

    const/16 v12, 0x4f

    const/4 v13, 0x3

    aput-byte v12, v5, v13

    const/16 v14, 0x43

    const/4 v15, 0x4

    aput-byte v14, v5, v15

    const/16 v16, 0x4b

    const/16 v17, 0x5

    aput-byte v16, v5, v17

    const/16 v18, 0x45

    const/16 v19, 0x6

    aput-byte v18, v5, v19

    const/16 v20, 0x54

    const/16 v21, 0x7

    aput-byte v20, v5, v21

    const/16 v22, 0x8

    const/16 v23, 0x10

    aput-byte v23, v5, v22

    const/16 v24, 0x9

    aput-byte v6, v5, v24

    const/16 v24, 0xa

    aput-byte v15, v5, v24

    const/16 v24, 0xb

    aput-byte v9, v5, v24

    const/16 v24, 0xc

    const/16 v25, -0x70

    aput-byte v25, v5, v24

    const/16 v24, 0xd

    aput-byte v6, v5, v24

    const/16 v24, 0xe

    aput-byte v6, v5, v24

    const/16 v24, 0xf

    aput-byte v6, v5, v24

    aput-byte v6, v5, v23

    const/16 v24, 0x11

    aput-byte v9, v5, v24

    .line 544
    iget-object v3, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;[B)I

    new-array v0, v0, [B

    aput-byte v7, v0, v6

    aput-byte v8, v0, v9

    aput-byte v10, v0, v11

    aput-byte v12, v0, v13

    aput-byte v14, v0, v15

    aput-byte v16, v0, v17

    aput-byte v18, v0, v19

    aput-byte v20, v0, v21

    aput-byte v23, v0, v22

    const/16 v3, 0x9

    aput-byte v6, v0, v3

    const/16 v3, 0xa

    aput-byte v15, v0, v3

    const/16 v3, 0xb

    aput-byte v9, v0, v3

    const/16 v3, 0xc

    aput-byte v6, v0, v3

    const/16 v3, 0xd

    aput-byte v6, v0, v3

    const/16 v3, 0xe

    aput-byte v6, v0, v3

    const/16 v3, 0xf

    aput-byte v6, v0, v3

    aput-byte v6, v0, v23

    const/16 v3, 0x11

    aput-byte v9, v0, v3

    .line 548
    iget-object v3, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;[B)I

    goto :goto_4

    :cond_3
    :goto_1
    const-string v0, "Socket NotConntcted!!!"

    .line 413
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 416
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v3, 0x7d0

    .line 419
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 421
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 423
    :goto_2
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const-string v3, "\u4fa6\u6d4b\u8fde\u63a5\u4e0d\u4e0a\u91cd\u5f00\u59cb"

    invoke-virtual {v0, v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTcp(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v3, "Try Error!!!"

    .line 553
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x7d0

    .line 556
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 558
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 560
    :goto_3
    iget-object v0, v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const-string v2, "\u4e3b\u8fde\u63a5\u51fa\u9519\u91cd\u5f00\u59cb"

    invoke-virtual {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTcp(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
