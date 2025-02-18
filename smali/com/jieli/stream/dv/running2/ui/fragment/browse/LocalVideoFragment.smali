.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "LocalVideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;
.implements Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;
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

.field private emptyView:Landroid/widget/LinearLayout;

.field private footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

.field private isLoading:Z

.field private isOpenTask:Z

.field private isSelectAll:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mOp:I

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

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

.field private videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->handlerTaskList(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isSelectAll:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isOpenTask:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mOp:I

    return p0
.end method

.method static synthetic access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mOp:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->updateTextUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->loadMoreData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->onStopLoad()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendStateChange(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    return-object p0
.end method

.method private handlerTaskList(IZ)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handlerTaskList - isOpenTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isOpenTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isOpenTask:Z

    if-eqz v1, :cond_4

    .line 477
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mOp:I

    .line 478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-lez v0, :cond_0

    .line 481
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_0

    .line 482
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mOp:I

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_0

    .line 483
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 486
    :cond_0
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->retryNum:I

    goto :goto_0

    .line 488
    :cond_1
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->retryNum:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->retryNum:I

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    .line 490
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->retryNum:I

    if-lez v0, :cond_2

    .line 492
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 496
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 498
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendMsg(I)V

    .line 499
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_4

    .line 501
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_4

    .line 502
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;-><init>()V

    .line 503
    invoke-virtual {v0, p2}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 504
    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setOp(I)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 505
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStartTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V

    goto :goto_1

    .line 509
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendMsg(I)V

    .line 510
    invoke-direct {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendStateChange(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initListView()V
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadMoreData(I)V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 444
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    .line 446
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/16 v0, 0x12

    if-le v1, v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    add-int/2addr p1, v0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->dataList:Ljava/util/List;

    .line 453
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->convertDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 455
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-nez v0, :cond_1

    .line 456
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 457
    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setOnSubViewItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 460
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 466
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 468
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onStopLoad()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stopLoad()V

    :cond_0
    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isLoading:Z

    return-void
.end method

.method private sendMsg(I)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_files"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "select_files_num"

    .line 389
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendStateChange(IZ)V
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state_type"

    .line 397
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "select_state"

    .line 398
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 517
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->removeBitmap(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateTextUI()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 244
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->text_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    .line 279
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->initListView()V

    .line 281
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$1;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    .line 284
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.jieli.dv.running2_browse_file_operation"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.jieli.dv.running2_language_change"

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x1026

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendStateChange(IZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 259
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 265
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_local_video:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 266
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->local_video_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mListView:Landroid/widget/ListView;

    .line 267
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->view_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->emptyView:Landroid/widget/LinearLayout;

    .line 268
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->local_video_footer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    .line 270
    invoke-virtual {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->setOnLoadListener(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    .line 319
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 320
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;

    :cond_1
    return-void
.end method

.method public onLoad(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;)V
    .locals 3

    .line 345
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isLoading:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isLoading:Z

    .line 348
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 352
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->onStopLoad()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 293
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getMediaTask()Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->currentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->updateTextUI()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isLoading:Z

    .line 306
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isOpenTask:Z

    .line 307
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->cancelTasks()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 312
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->videoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    :cond_1
    return-void
.end method

.method public onSubItemClick(IILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 1

    if-eqz p3, :cond_4

    .line 405
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 406
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 407
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 408
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isSelectAll:Z

    if-nez p1, :cond_2

    .line 413
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->allDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p1, p3, :cond_2

    .line 414
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isSelectAll:Z

    .line 415
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendStateChange(IZ)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 420
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isSelectAll:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 421
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isSelectAll:Z

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendStateChange(IZ)V

    .line 425
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->sendMsg(I)V

    .line 426
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 430
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play video url : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p3, 0x8

    const-string v0, "key_fragment_tag"

    .line 432
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "path_list"

    .line 434
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_data"

    .line 435
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-void
.end method
