.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;
.super Ljava/lang/Thread;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeAPK"
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

    .line 488
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 489
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->softReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 494
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 495
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->softReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 498
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 499
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    const-wide/16 v2, 0x1770

    .line 502
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit16 v1, v1, 0x1770

    const v2, 0xea60

    if-le v1, v2, :cond_0

    .line 509
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result v1

    const/16 v9, 0x1004

    if-eqz v1, :cond_4

    .line 511
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 512
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 514
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1602(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    :cond_2
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downLoadUpdateFile(Ljava/lang/String;IILandroid/os/Handler;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 518
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 519
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 520
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UpgradeAPK;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    if-eqz v0, :cond_5

    const/16 v1, 0x1002

    .line 522
    invoke-virtual {v0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    .line 526
    invoke-virtual {v0, v9, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 531
    invoke-virtual {v0, v9, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_0
    return-void
.end method
