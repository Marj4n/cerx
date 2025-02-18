.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;
.super Landroid/os/AsyncTask;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAppUpgrade"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 385
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 421
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    const-wide/16 v1, 0x1770

    .line 424
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit16 p1, p1, 0x1770

    const v1, 0xea60

    if-le p1, v1, :cond_0

    .line 430
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkNetworkIsAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 431
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->latest_version:I

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_2
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6709APK\u66f4\u65b0,\u66f4\u65b0\u8def\u5f84\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v1, v0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downLoadUpdateFile(Ljava/lang/String;IILandroid/os/Handler;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 442
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Network is unavailable"

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 385
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissWaitingDialog()V

    .line 397
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 399
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "update_type"

    .line 402
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "update_path"

    .line 403
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 404
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x1234

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 406
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->upgrade_failed_tip:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 389
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 390
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    return-void
.end method
