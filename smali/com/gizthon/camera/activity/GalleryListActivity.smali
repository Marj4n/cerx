.class public Lcom/gizthon/camera/activity/GalleryListActivity;
.super Lcom/gizthon/camera/activity/CameraBaseActivity;
.source "GalleryListActivity.java"


# instance fields
.field private binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Lcom/gizthon/camera/model/GalleryViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClickBack()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/GalleryListActivity;->finish()V

    return-void
.end method

.method public onClickComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/activity/GalleryListActivity;->onShowDone(Z)V

    .line 93
    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 95
    instance-of v1, v0, Lcom/gizthon/camera/fragment/PhotoListFragment;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-virtual {v1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->resetComplete()V

    .line 98
    :cond_0
    instance-of v1, v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    if-eqz v1, :cond_1

    .line 99
    check-cast v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->resetComplete()V

    :cond_1
    return-void
.end method

.method public onClickDelete()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 69
    instance-of v1, v0, Lcom/gizthon/camera/fragment/PhotoListFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 70
    move-object v1, v0

    check-cast v1, Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-virtual {v1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->deleteSelected()V

    .line 71
    invoke-virtual {p0, v2}, Lcom/gizthon/camera/activity/GalleryListActivity;->onShowDone(Z)V

    .line 73
    :cond_0
    instance-of v1, v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    if-eqz v1, :cond_1

    .line 74
    check-cast v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->deleteSelected()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/gizthon/camera/activity/GalleryListActivity;->onShowDone(Z)V

    :cond_1
    return-void
.end method

.method public onClickDone()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 83
    instance-of v1, v0, Lcom/gizthon/camera/fragment/PhotoListFragment;

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/gizthon/camera/fragment/PhotoListFragment;

    iget-object v2, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v2, v2, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->done:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gizthon/camera/fragment/PhotoListFragment;->resetStatus(Z)V

    .line 86
    :cond_0
    instance-of v1, v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lcom/gizthon/camera/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v1, v1, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->done:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/fragment/VideoListFragment;->resetStatus(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007a

    .line 38
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iput-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    .line 39
    new-instance p1, Lcom/gizthon/camera/model/GalleryViewModel;

    invoke-direct {p1}, Lcom/gizthon/camera/model/GalleryViewModel;-><init>()V

    iput-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->viewModel:Lcom/gizthon/camera/model/GalleryViewModel;

    .line 40
    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->setViewModel(Lcom/gizthon/camera/model/GalleryViewModel;)V

    .line 41
    iget-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    invoke-virtual {p1, p0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->setEventHandler(Lcom/gizthon/camera/activity/GalleryListActivity;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/gizthon/camera/fragment/PhotoListFragment;->newInstance()Lcom/gizthon/camera/fragment/PhotoListFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    invoke-static {}, Lcom/gizthon/camera/fragment/VideoListFragment;->newInstance()Lcom/gizthon/camera/fragment/VideoListFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/gizthon/camera/adapter/PhotoFragmentAdapter;

    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->fragments:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/gizthon/camera/adapter/PhotoFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object v1, v1, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/gizthon/camera/activity/GalleryListActivity$1;

    invoke-direct {v2, p0}, Lcom/gizthon/camera/activity/GalleryListActivity$1;-><init>(Lcom/gizthon/camera/activity/GalleryListActivity;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    const-string p1, "#09B0F3"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->setColorNoTranslucent(Landroid/app/Activity;I)V

    return-void
.end method

.method public onShowDone(Z)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->viewModel:Lcom/gizthon/camera/model/GalleryViewModel;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/gizthon/camera/model/GalleryViewModel;->setEditVisible(I)V

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity;->binding:Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->done:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method
