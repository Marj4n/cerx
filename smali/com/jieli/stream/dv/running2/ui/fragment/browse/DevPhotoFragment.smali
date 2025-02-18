.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DevPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_DATE:I = 0x1


# instance fields
.field private bottomBar:Landroid/widget/LinearLayout;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadDir:Ljava/lang/String;

.field private editLayout:Landroid/widget/RelativeLayout;

.field private emptyView:Landroid/widget/LinearLayout;

.field private fileOp:I

.field private footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

.field private isEditMode:Z

.field private isLoading:Z

.field private isSelectAll:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private msgContent:Ljava/lang/String;

.field private normalLayout:Landroid/widget/RelativeLayout;

.field private photoInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private tvExitMode:Landroid/widget/TextView;

.field private tvSelectAll:Landroid/widget/TextView;

.field private tvSelected:Landroid/widget/TextView;

.field private waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerTaskList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->loadMoreData(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->stopLoad()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->cancelLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    return-object p0
.end method

.method private cancelLoading()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 741
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Download"

    invoke-static {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    .line 744
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private findFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 3

    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 728
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 729
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private handlerDeleteFiles()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 535
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$3;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    :goto_1
    return-void
.end method

.method private handlerEditUI()V
    .locals 5

    .line 454
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isEditMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->normalLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 457
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->editLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->editLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    :cond_2
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    .line 463
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$anim;->slide_in_bottom:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 465
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->editLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 469
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->editLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 472
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$anim;->slide_out_bottom:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 473
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private handlerSelectAllUI()V
    .locals 2

    .line 482
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->cancel_all_select:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 485
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->all_select:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handlerTaskList(Z)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-lez v0, :cond_0

    .line 497
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 498
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->fileOp:I

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 502
    :cond_0
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->retryNum:I

    goto :goto_0

    .line 504
    :cond_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->retryNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->retryNum:I

    const/4 v2, 0x2

    if-le p1, v2, :cond_2

    .line 506
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->retryNum:I

    if-lez v0, :cond_2

    .line 508
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 512
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 514
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    .line 515
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p1, :cond_4

    .line 517
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_4

    .line 518
    new-instance v0, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;-><init>()V

    .line 519
    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 520
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->fileOp:I

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->setOp(I)Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    .line 521
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStartTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V

    goto :goto_1

    .line 525
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    .line 526
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvExitMode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method private loadMoreData(II)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 420
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-loadMoreData- total size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v1, v0, p1

    .line 423
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    if-lez v1, :cond_2

    if-le v1, p2, :cond_0

    .line 426
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    add-int/2addr p1, p2

    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-loadMoreData- dataList size : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->convertDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 433
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-nez p2, :cond_1

    .line 434
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 436
    :cond_1
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 438
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_5

    if-nez v0, :cond_4

    .line 442
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_3

    .line 443
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 445
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 447
    :cond_4
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_more_data:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setSelectNum(I)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelected:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 374
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->selected_num:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showWaitingDialog(Ljava/lang/String;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    const/4 v1, 0x0

    .line 553
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setCancelable(Z)V

    .line 554
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 569
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->updateNotifyContent(Ljava/lang/String;)V

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 573
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "wait_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private stopLoad()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stopLoad()V

    :cond_0
    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isLoading:Z

    return-void
.end method

.method private tryToParseData(Ljava/lang/String;)V
    .locals 2

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseJSonData(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    return-void
.end method

.method private updateDeleteUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 708
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getCount()I

    move-result v0

    .line 710
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->removeBitmap(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    .line 712
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 716
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    .line 718
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->convertDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 719
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 720
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 721
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setDataList(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissWaitingDialog()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 583
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "video_list"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->msgContent:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getCameraDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download"

    invoke-static {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    .line 170
    :cond_1
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 171
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setOnSubViewItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->msgContent:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tryToParseData(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 226
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_return:I

    if-ne p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto/16 :goto_5

    .line 228
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_edit:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 229
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 230
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isEditMode:Z

    .line 231
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 232
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerEditUI()V

    .line 235
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_14

    .line 236
    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 237
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 240
    :cond_2
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 242
    :cond_3
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_exit_mode:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    .line 243
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isEditMode:Z

    .line 244
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    .line 245
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 246
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 248
    :cond_4
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerEditUI()V

    .line 249
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerSelectAllUI()V

    .line 250
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 251
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_5

    .line 252
    invoke-virtual {p1, v2}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 253
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 256
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    :goto_0
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->fileOp:I

    goto/16 :goto_5

    .line 261
    :cond_7
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_select_all:I

    if-ne p1, v0, :cond_10

    .line 262
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    if-eqz p1, :cond_b

    .line 264
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_8

    .line 267
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 268
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_a

    .line 273
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_2

    .line 277
    :cond_b
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 278
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_c

    .line 280
    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_3

    .line 283
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_e

    .line 285
    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_4

    .line 289
    :cond_f
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerSelectAllUI()V

    .line 290
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_14

    .line 291
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 293
    :cond_10
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_download:I

    if-ne p1, v0, :cond_12

    .line 294
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    const/16 p1, 0xa3

    .line 295
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->fileOp:I

    .line 296
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->downloading_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->showWaitingDialog(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerTaskList(Z)V

    goto :goto_5

    .line 299
    :cond_11
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_5

    .line 301
    :cond_12
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_delete:I

    if-ne p1, v0, :cond_14

    .line 302
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 303
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->deleting_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->showWaitingDialog(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerDeleteFiles()V

    goto :goto_5

    .line 306
    :cond_13
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_14
    :goto_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 129
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_dev_photo:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_normal_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->normalLayout:Landroid/widget/RelativeLayout;

    .line 131
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_edit_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->editLayout:Landroid/widget/RelativeLayout;

    .line 132
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_bottom_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->bottomBar:Landroid/widget/LinearLayout;

    .line 133
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_select_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelectAll:Landroid/widget/TextView;

    .line 134
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_select_num:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelected:Landroid/widget/TextView;

    .line 135
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_exit_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvExitMode:Landroid/widget/TextView;

    .line 136
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_return:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 137
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_edit:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 138
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->view_empty:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->emptyView:Landroid/widget/LinearLayout;

    .line 139
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mListView:Landroid/widget/ListView;

    .line 140
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->dev_photo_footer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    .line 141
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_share:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_download:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvSelectAll:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvExitMode:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->footerView:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;

    invoke-virtual {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->setOnLoadListener(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView$OnLoadListener;)V

    .line 152
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 204
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->cancelTasks()V

    .line 206
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStopTask()V

    .line 213
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->interrupt()V

    .line 217
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->quit()Z

    .line 219
    :cond_3
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    return-void
.end method

.method public onLoad(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;)V
    .locals 3

    .line 596
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isLoading:Z

    const-wide/16 v1, 0x5dc

    .line 598
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 9

    if-eqz p1, :cond_10

    .line 605
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    .line 606
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILES_DELETE"

    const-string v3, "PHOTO_CTRL"

    if-nez v0, :cond_e

    .line 608
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x1

    .line 609
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "FORMAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "SD_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    if-eqz v0, :cond_d

    if-eq v0, v7, :cond_b

    const/16 v1, 0x12

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_1

    goto/16 :goto_2

    .line 659
    :cond_1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 662
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 664
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-FILES_DELETE- delPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->findFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 667
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 668
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 669
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 670
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 671
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    .line 674
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_4

    .line 675
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getCount()I

    move-result p1

    if-le p1, v1, :cond_4

    move v1, p1

    .line 680
    :cond_4
    invoke-direct {p0, v8, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->loadMoreData(II)V

    .line 681
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 682
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 683
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->msgContent:Ljava/lang/String;

    .line 684
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvExitMode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto/16 :goto_2

    .line 686
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->msgContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 627
    :cond_6
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 630
    :cond_7
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\\\\"

    const-string v2, ""

    .line 632
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-PHOTO_CTRL- photoDesc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 637
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x1

    .line 640
    :goto_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    if-ne v6, v0, :cond_10

    .line 641
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-nez v0, :cond_9

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    .line 644
    :cond_9
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {v0, v8, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 645
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->msgContent:Ljava/lang/String;

    .line 647
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_a

    .line 648
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getCount()I

    move-result p1

    if-le p1, v1, :cond_a

    move v1, p1

    .line 653
    :cond_a
    invoke-direct {p0, v8, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->loadMoreData(II)V

    goto :goto_2

    .line 616
    :cond_b
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 619
    :cond_c
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "online"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 620
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 621
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 622
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_2

    .line 611
    :cond_d
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 612
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_2

    .line 696
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 697
    :cond_f
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 698
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 699
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 700
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tvExitMode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_10
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c8b4b6d -> :sswitch_3
        -0x222f5660 -> :sswitch_2
        0x642878 -> :sswitch_1
        0x7bf2ebf7 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 186
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "photo_task"

    invoke-direct {v0, v1, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    .line 189
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 190
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->start()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 181
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isLoading:Z

    .line 198
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onSubItemClick(IILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 3

    if-eqz p3, :cond_8

    .line 314
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 315
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 316
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p3, p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 317
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    if-nez p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 323
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    .line 324
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerSelectAllUI()V

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 329
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    if-eqz p1, :cond_2

    .line 330
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->isSelectAll:Z

    .line 331
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerSelectAllUI()V

    .line 334
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->setSelectNum(I)V

    .line 335
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 338
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download"

    invoke-static {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    .line 340
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 342
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->downloading_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->showWaitingDialog(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->selectedList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xa3

    .line 344
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->fileOp:I

    .line 345
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->handlerTaskList(Z)V

    goto :goto_2

    .line 348
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->photoInfoList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_6

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->downloadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 353
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    :cond_7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 358
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 359
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x7

    const-string v1, "key_fragment_tag"

    .line 360
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "path_list"

    .line 362
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "position"

    .line 363
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_data"

    .line 364
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_2
    return-void
.end method
