.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "EmergencyVideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;
.implements Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_DATA:I = 0x101


# instance fields
.field private allDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

.field private emptyView:Landroid/widget/LinearLayout;

.field private footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

.field private isLoading:Z

.field private isOpenTask:Z

.field private isSelectAll:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mOp:I

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

.field private notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private retryNum:I

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->handlerTaskList(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isSelectAll:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isOpenTask:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mOp:I

    return p0
.end method

.method static synthetic access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mOp:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->showNotifyDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->updateTextUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->loadMoreData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->onStopLoad()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendStateChange(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    return-object p0
.end method

.method private handlerTaskList(IZ)V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handlerTaskList - isOpenTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isOpenTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isOpenTask:Z

    if-eqz v1, :cond_4

    .line 478
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mOp:I

    .line 479
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-lez v0, :cond_0

    .line 482
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_0

    .line 483
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mOp:I

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_0

    .line 484
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 487
    :cond_0
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->retryNum:I

    goto :goto_0

    .line 489
    :cond_1
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->retryNum:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->retryNum:I

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    .line 491
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->retryNum:I

    if-lez v0, :cond_2

    .line 493
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 497
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 499
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler task size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendMsg(I)V

    .line 501
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_4

    .line 503
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_4

    .line 504
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;-><init>()V

    .line 505
    invoke-virtual {v0, p2}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 506
    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setOp(I)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 507
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStartTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V

    goto :goto_1

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendMsg(I)V

    .line 512
    invoke-direct {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendStateChange(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initListView()V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadMoreData(I)V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 389
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    .line 391
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/16 v0, 0x12

    if-le v1, v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    add-int/2addr p1, v0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->dataList:Ljava/util/List;

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->convertDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 400
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 402
    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setOnSubViewItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 405
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    if-lez v0, :cond_3

    .line 410
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onStopLoad()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stopLoad()V

    :cond_0
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isLoading:Z

    return-void
.end method

.method private registerBroadCast()V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    .line 374
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.jieli.dv.running2_browse_file_operation"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.jieli.dv.running2_language_change"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private sendMsg(I)V
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_files"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "select_files_num"

    .line 421
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendStateChange(IZ)V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state_type"

    .line 429
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "select_state"

    .line 430
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showNotifyDialog()V
    .locals 7

    .line 518
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 519
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_warning:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->delete_emergency_video_tip:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$3;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private unRegisterBroadCast()V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$EmergencyVideoBroadCastReceiver;

    :cond_0
    return-void
.end method

.method private updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 550
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->removeBitmap(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateTextUI()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 248
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->text_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 270
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    .line 273
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->initListView()V

    .line 274
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->registerBroadCast()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x1026

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendStateChange(IZ)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 259
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_emergency_video:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 260
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->emergency_video_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mListView:Landroid/widget/ListView;

    .line 261
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->view_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    .line 262
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->emergency_video_footer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    .line 264
    invoke-virtual {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->setOnLoadListener(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    .line 307
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 308
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 315
    :cond_1
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->unRegisterBroadCast()V

    return-void
.end method

.method public onLoad(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;)V
    .locals 3

    .line 336
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isLoading:Z

    const/16 v0, 0x101

    const-wide/16 v1, 0x5dc

    .line 338
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 280
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 281
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getMediaTask()Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->currentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->updateTextUI()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isLoading:Z

    .line 294
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isOpenTask:Z

    .line 295
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->cancelTasks()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 300
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->emergencyVideoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    :cond_1
    return-void
.end method

.method public onSubItemClick(IILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 1

    if-eqz p3, :cond_4

    .line 437
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 438
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 439
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 440
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isSelectAll:Z

    if-nez p1, :cond_2

    .line 445
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->allDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p1, p3, :cond_2

    .line 446
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isSelectAll:Z

    .line 447
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendStateChange(IZ)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isSelectAll:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 453
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->isSelectAll:Z

    .line 454
    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendStateChange(IZ)V

    .line 457
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->sendMsg(I)V

    .line 458
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 462
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play video url : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p3, 0x8

    const-string v0, "key_fragment_tag"

    .line 465
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "path_list"

    .line 467
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_data"

    .line 468
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-void
.end method
