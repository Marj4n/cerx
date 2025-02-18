.class public Lcom/gizthon/camera/fragment/PhotoListFragment;
.super Lcom/gizthon/camera/fragment/BaseXFragment;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/fragment/PhotoListFragment$DeleteFilesTask;,
        Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

.field private binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/BaseXFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/gizthon/camera/fragment/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getPhotoBeans()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/fragment/PhotoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/gizthon/camera/fragment/PhotoListFragment;Lcom/gizthon/camera/adapter/PhotoAdapter;)Lcom/gizthon/camera/adapter/PhotoAdapter;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/gizthon/camera/fragment/PhotoListFragment;)Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    return-object p0
.end method

.method private getPhotoBeans()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MergeCamera/Media/Photo/Screen/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 92
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 93
    aget-object v4, v1, v3

    const-string v5, ".jpg"

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    new-instance v5, Lcom/gizthon/camera/model/PhotoBean;

    invoke-direct {v5}, Lcom/gizthon/camera/model/PhotoBean;-><init>()V

    .line 96
    invoke-virtual {v5, v3}, Lcom/gizthon/camera/model/PhotoBean;->setIndex(I)V

    .line 97
    invoke-virtual {v5, v4}, Lcom/gizthon/camera/model/PhotoBean;->setName(Ljava/lang/String;)V

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/gizthon/camera/model/PhotoBean;->setPath(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static newInstance()Lcom/gizthon/camera/fragment/PhotoListFragment;
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    new-instance v1, Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-direct {v1}, Lcom/gizthon/camera/fragment/PhotoListFragment;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public deleteSelected()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getSelected()Ljava/util/List;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/gizthon/camera/fragment/PhotoListFragment$DeleteFilesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gizthon/camera/fragment/PhotoListFragment$DeleteFilesTask;-><init>(Lcom/gizthon/camera/fragment/PhotoListFragment;Lcom/gizthon/camera/fragment/PhotoListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/gizthon/camera/fragment/PhotoListFragment$DeleteFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getSelected()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v1, v1, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 110
    iget-object v3, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v3, v3, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 111
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Lcom/gizthon/camera/fragment/BaseXFragment;->onCreateView(Landroid/os/Bundle;)V

    .line 42
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->container:Landroid/view/ViewGroup;

    const v1, 0x7f0c007b

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    iput-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    .line 43
    invoke-virtual {p1}, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->rcPhoto:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getPhotoBeans()Ljava/util/ArrayList;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/gizthon/camera/adapter/PhotoAdapter;

    const v1, 0x7f0c007c

    invoke-direct {v0, p1, v1}, Lcom/gizthon/camera/adapter/PhotoAdapter;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 48
    new-instance p1, Lcom/gizthon/camera/fragment/PhotoListFragment$1;

    invoke-direct {p1, p0}, Lcom/gizthon/camera/fragment/PhotoListFragment$1;-><init>(Lcom/gizthon/camera/fragment/PhotoListFragment;)V

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/adapter/PhotoAdapter;->setOnChangeListener(Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;)V

    .line 56
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->rcPhoto:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    new-instance p1, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;-><init>(Lcom/gizthon/camera/fragment/PhotoListFragment;Lcom/gizthon/camera/fragment/PhotoListFragment$1;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onRefreshData()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getPhotoBeans()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {v1, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->setDataModelList(Ljava/util/List;)V

    return-void
.end method

.method public resetComplete()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v0, v0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v3, v3, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 139
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v3, v1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    :cond_0
    const/16 v4, 0x8

    .line 142
    invoke-virtual {v3, v4}, Lcom/gizthon/camera/model/PhotoBean;->setSelectedCoverVisible(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifySelectedStatus()V

    return-void
.end method

.method public resetStatus(Z)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v0, v0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v2, v2, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gizthon/camera/model/PhotoBean;

    .line 128
    invoke-virtual {v2, p1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {p1}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifyDataSetChanged()V

    return-void
.end method
