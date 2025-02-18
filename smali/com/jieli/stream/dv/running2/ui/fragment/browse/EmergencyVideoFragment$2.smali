.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;
.super Ljava/lang/Object;
.source "EmergencyVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    const-string v2, "Record"

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Ljava/util/List;)Ljava/util/List;

    .line 348
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->selectTypeList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Ljava/util/List;)Ljava/util/List;

    .line 350
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allDataList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->TAG:Ljava/lang/String;

    const-string v1, "allDataList is null"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
