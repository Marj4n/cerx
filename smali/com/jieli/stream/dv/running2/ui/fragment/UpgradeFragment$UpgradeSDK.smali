.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;
.super Ljava/lang/Thread;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeSDK"
.end annotation


# instance fields
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
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 409
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->softReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 414
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 415
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->softReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 418
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setState(I)V

    const/4 v1, 0x0

    .line 419
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result v2

    const v10, 0xea60

    if-nez v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    const-wide/16 v2, 0xbb8

    .line 422
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit16 v1, v1, 0xbb8

    if-le v1, v10, :cond_0

    .line 429
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result v1

    const/16 v11, 0x1004

    if-eqz v1, :cond_9

    .line 431
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 432
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    const/4 v1, 0x0

    :cond_2
    const-wide/16 v2, 0x7d0

    .line 437
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 438
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1602(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit16 v1, v1, 0x7d0

    if-le v1, v10, :cond_3

    goto :goto_0

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 451
    :cond_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downLoadUpdateFile(Ljava/lang/String;IILandroid/os/Handler;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 452
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v9, :cond_6

    .line 453
    :cond_5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit16 v1, v1, 0x7d0

    if-le v1, v10, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_4

    .line 459
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_4

    :goto_1
    if-eqz v12, :cond_7

    .line 461
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_7

    .line 462
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 463
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeSDK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    if-eqz v0, :cond_a

    const/16 v1, 0x1003

    .line 465
    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_a

    .line 469
    invoke-virtual {v0, v11, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_a

    .line 474
    invoke-virtual {v0, v11, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    .line 479
    invoke-virtual {v0, v11, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    :goto_2
    return-void
.end method
