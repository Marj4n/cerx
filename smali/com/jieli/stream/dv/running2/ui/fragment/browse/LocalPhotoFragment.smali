.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "LocalPhotoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;
.implements Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;
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

.field private mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mOp:I

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

.field private photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

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

    .line 258
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->handlerTaskList(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isSelectAll:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isOpenTask:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mOp:I

    return p0
.end method

.method static synthetic access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mOp:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->updateTextUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->loadMoreData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->onStopLoad()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendStateChange(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    return-object p0
.end method

.method private dismissWaitingDialog()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    return-void
.end method

.method private handlerTaskList(IZ)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handlerTaskList - isOpenTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isOpenTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isOpenTask:Z

    if-eqz v1, :cond_4

    .line 535
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mOp:I

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-lez v0, :cond_0

    .line 539
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_0

    .line 540
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mOp:I

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_0

    .line 541
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 544
    :cond_0
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->retryNum:I

    goto :goto_0

    .line 546
    :cond_1
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->retryNum:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->retryNum:I

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    .line 548
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->retryNum:I

    if-lez v0, :cond_2

    .line 550
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 554
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 556
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler task size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendMsg(I)V

    .line 558
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_4

    .line 560
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_4

    .line 561
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;-><init>()V

    .line 562
    invoke-virtual {v0, p2}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 563
    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setOp(I)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 564
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStartTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V

    goto :goto_1

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendMsg(I)V

    .line 569
    invoke-direct {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendStateChange(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initListView()V
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->showWaitingDialog()V

    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private loadMoreData(I)V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    .line 504
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/16 v0, 0x12

    if-le v1, v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    add-int/2addr p1, v0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 509
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dataList:Ljava/util/List;

    .line 511
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->convertDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 513
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-nez v0, :cond_1

    .line 514
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 515
    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setOnSubViewItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;)V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 518
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 524
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 526
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onStopLoad()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stopLoad()V

    :cond_0
    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isLoading:Z

    return-void
.end method

.method private sendMsg(I)V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_files"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "select_files_num"

    .line 431
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendStateChange(IZ)V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_select_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state_type"

    .line 439
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "select_state"

    .line 440
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showWaitingDialog()V
    .locals 5

    .line 404
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    const/4 v1, 0x1

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->loading:I

    const/4 v3, 0x0

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$3;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IZIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingDialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 576
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->removeBitmap(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateTextUI()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 253
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->text_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 286
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    .line 290
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->initListView()V

    .line 292
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    if-nez p1, :cond_0

    .line 293
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$1;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    .line 295
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.jieli.dv.running2_browse_file_operation"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.jieli.dv.running2_language_change"

    .line 296
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 p3, 0x1026

    if-ne p1, p3, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p3, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendStateChange(IZ)V

    .line 347
    :cond_0
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 274
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_local_photo:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 275
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->local_photo_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mListView:Landroid/widget/ListView;

    .line 276
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->view_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    .line 277
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->local_photo_footer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    .line 278
    invoke-virtual {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->setOnLoadListener(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_share:I

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 280
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    .line 330
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 331
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->dismissWaitingDialog()V

    .line 336
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;

    :cond_1
    return-void
.end method

.method public onLoad(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;)V
    .locals 3

    .line 359
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isLoading:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isLoading:Z

    .line 361
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 365
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->onStopLoad()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 303
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getMediaTask()Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->currentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->updateTextUI()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 315
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isLoading:Z

    .line 317
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isOpenTask:Z

    .line 318
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->cancelTasks()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 323
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    :cond_1
    return-void
.end method

.method public onSubItemClick(IILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-eqz p3, :cond_6

    .line 448
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 449
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 450
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 451
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 452
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isSelectAll:Z

    if-nez p1, :cond_2

    .line 456
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p1, p3, :cond_2

    .line 457
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isSelectAll:Z

    .line 458
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendStateChange(IZ)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 463
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isSelectAll:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 464
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isSelectAll:Z

    .line 465
    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendStateChange(IZ)V

    .line 468
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->sendMsg(I)V

    .line 469
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 471
    :cond_3
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->allDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_4

    .line 480
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 482
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 486
    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 487
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 488
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x7

    const-string v1, "key_fragment_tag"

    .line 489
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "path_list"

    .line 491
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "position"

    .line 492
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_data"

    .line 493
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->browseFileFragment:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    return-void
.end method
