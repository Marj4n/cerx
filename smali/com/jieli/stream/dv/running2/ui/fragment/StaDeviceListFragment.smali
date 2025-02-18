.class public Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "StaDeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;,
        Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;
    }
.end annotation


# static fields
.field private static final MSG_ADD_NEW_DEVICE:I = 0x458

.field private static final MSG_SEARCH_DEVICE_LIST:I = 0x457

.field private static tag:Ljava/lang/String;


# instance fields
.field private deviceListView:Landroid/widget/ListView;

.field private isRefreshing:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

.field private mSelectWifiDialog:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

.field private mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private tvPullToRefresh:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->isRefreshing:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mStationList:Ljava/util/List;

    .line 59
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mStationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tvPullToRefresh:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method private dismissSelectWifiDialog()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSelectWifiDialog:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSelectWifiDialog:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSelectWifiDialog:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    :cond_1
    return-void
.end method

.method private enterLiveVideo()V
    .locals 4

    .line 230
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    const-string v1, "It has connected."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;-><init>()V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    sget v2, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private refreshList()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "SearchStaDevice is running"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->stopStaSearchThread()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->clear()V

    .line 157
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    .line 159
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->start()V

    return-void
.end method

.method private stopStaSearchThread()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSearchStaDevice:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 109
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    .line 110
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x3

    .line 111
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 108
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 112
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 113
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setSize(I)V

    .line 114
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 116
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->item_device_list:I

    invoke-direct {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->device_list_switch_search_mode:I

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 93
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->sta_device_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_list_switch_search_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x102000a

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    .line 96
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->swipe_refresh:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 97
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->pull_to_refresh:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tvPullToRefresh:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->stopStaSearchThread()V

    .line 240
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->dismissSelectWifiDialog()V

    .line 241
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/DeviceBean;

    if-eqz p1, :cond_2

    .line 213
    sget-object p2, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isConnected="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", wifiIP="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getWifiIP()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->stopStaSearchThread()V

    .line 215
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getWifiIP()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 217
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 218
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->connectDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->enterLiveVideo()V

    .line 224
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSearchMode(I)V

    goto :goto_1

    .line 225
    :cond_2
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    const-string p2, "Device bean is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_3
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    const-string p2, "mAdapter is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->stopDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 125
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: current mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->tip_open_wifi:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->clear()V

    .line 130
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->notifyDataSetChanged()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->mStationList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tvPullToRefresh:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->tvPullToRefresh:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
