.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;
.super Ljava/lang/Thread;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFileThread"
.end annotation


# instance fields
.field private localFilePath:Ljava/lang/String;

.field private remoteFile:Ljava/lang/String;

.field private softReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 543
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->remoteFile:Ljava/lang/String;

    .line 544
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->localFilePath:Ljava/lang/String;

    .line 545
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->softReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 550
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 551
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->softReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    .line 552
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 553
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v4

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->remoteFile:Ljava/lang/String;

    iget-object v6, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->localFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v4

    .line 554
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v5, v5, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-UploadFileThread- uploadFile ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_0

    .line 556
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 557
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->remoteFile:Ljava/lang/String;

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->localFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v4

    :cond_0
    if-eqz v4, :cond_1

    .line 560
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v11}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 561
    iget-object v12, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v12}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v17, 0x64

    invoke-static/range {v12 .. v18}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 563
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;

    invoke-direct {v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;)V

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToResetDev(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 577
    :cond_1
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    return-void
.end method
