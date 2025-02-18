.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "Recv"

    const-string v1, "SocketTcp"

    const-string v2, "Socket Start Thread!!!"

    .line 437
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/16 v2, 0x100

    new-array v2, v2, [B

    :try_start_0
    const-string v3, "Socket Read Data!!!"

    .line 443
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 455
    invoke-static {v2, v4, v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bytesToHex_HasSpace([BII)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Socket-Recv"

    .line 456
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    aget-byte v3, v2, v4

    const/16 v4, 0x47

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v4, v2, v3

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    const-string v4, "Recv1"

    .line 465
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$600()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    aget-byte v4, v2, v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const-string v2, "\u62cd\u7167"

    .line 467
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$2;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$600()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-byte v4, v2, v5

    if-ne v4, v3, :cond_2

    const-string v2, "\u5f55\u50cf"

    .line 477
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$3;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 485
    :cond_2
    aget-byte v2, v2, v5

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 492
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$600()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$602(Z)Z

    .line 494
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;)V

    invoke-virtual {v2, v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket Recv Error!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocketError"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0xbb8

    .line 527
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 531
    :goto_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const-string v1, "\u63a5\u6536\u51fa\u9519\u91cd\u5f00\u59cb"

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTcp(Ljava/lang/String;)V

    const-string v0, "!!!Socket Closed!!!"

    .line 536
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
