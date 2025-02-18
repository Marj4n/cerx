.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/net/wifi/WifiInfo;)V
    .locals 17

    move-object/from16 v0, p0

    .line 269
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "current_wifi_ssid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 273
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 274
    iget-object v10, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v10}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x64

    invoke-static/range {v10 .. v16}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 275
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$902(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Z)Z

    .line 276
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V

    .line 278
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 279
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 280
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v5

    const-string v6, "JL_AC54.bfu"

    invoke-direct {v3, v4, v6, v2, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    .line 281
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$UploadFileThread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v4, v4, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3, v4, v1, v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(I)V
    .locals 0

    return-void
.end method
