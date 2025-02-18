.class public Lcom/gizthon/camera/fragment/VideoListFragment;
.super Lcom/gizthon/camera/fragment/BaseXFragment;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;,
        Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

.field private binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/BaseXFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/gizthon/camera/fragment/VideoListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getPhotoBeans()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/adapter/PhotoAdapter;)Lcom/gizthon/camera/adapter/PhotoAdapter;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    return-object p0
.end method

.method private getPhotoBeans()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MergeCamera/Media/Video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhotoBeans: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "luoming"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 85
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 86
    aget-object v5, v1, v4

    const-string v6, ".avi"

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, ".mp4"

    if-nez v7, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "mov"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    :cond_0
    new-instance v7, Lcom/gizthon/camera/model/PhotoBean;

    invoke-direct {v7}, Lcom/gizthon/camera/model/PhotoBean;-><init>()V

    .line 89
    invoke-virtual {v7, v4}, Lcom/gizthon/camera/model/PhotoBean;->setIndex(I)V

    .line 90
    invoke-virtual {v7, v5}, Lcom/gizthon/camera/model/PhotoBean;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v9, "thumbnails/"

    const-string v10, "jpg"

    if-eqz v6, :cond_1

    const-string v6, "avi"

    .line 93
    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/gizthon/camera/model/PhotoBean;->setAviPngName(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "mp4"

    .line 96
    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/gizthon/camera/model/PhotoBean;->setAviPngName(Ljava/lang/String;)V

    .line 112
    :cond_2
    :goto_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/gizthon/camera/model/PhotoBean;->setPath(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v7, v3}, Lcom/gizthon/camera/model/PhotoBean;->setVideoVisible(I)V

    .line 114
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 116
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method public static newInstance()Lcom/gizthon/camera/fragment/VideoListFragment;
    .locals 2

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    new-instance v1, Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-direct {v1}, Lcom/gizthon/camera/fragment/VideoListFragment;-><init>()V

    .line 33
    invoke-virtual {v1, v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public deleteSelected()V
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getSelected()Ljava/util/List;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;-><init>(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/fragment/VideoListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v1, v1, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 128
    iget-object v3, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v3, v3, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 129
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 203
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 205
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Lcom/gizthon/camera/fragment/BaseXFragment;->onCreateView(Landroid/os/Bundle;)V

    .line 43
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->container:Landroid/view/ViewGroup;

    const v1, 0x7f0c007b

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    iput-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    .line 44
    invoke-virtual {p1}, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->binding:Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->rcPhoto:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance p1, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;-><init>(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/fragment/VideoListFragment$1;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onRefreshData()V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getPhotoBeans()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {v1, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->setDataModelList(Ljava/util/List;)V

    return-void
.end method

.method public resetComplete()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v0, v0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 155
    iget-object v3, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v3, v3, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 156
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v3, v1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    :cond_0
    const/16 v4, 0x8

    .line 159
    invoke-virtual {v3, v4}, Lcom/gizthon/camera/model/PhotoBean;->setSelectedCoverVisible(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifySelectedStatus()V

    return-void
.end method

.method public resetStatus(Z)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v0, v0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 144
    iget-object v2, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    iget-object v2, v2, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gizthon/camera/model/PhotoBean;

    .line 146
    invoke-virtual {v2, p1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment;->adapter:Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {p1}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifyDataSetChanged()V

    return-void
.end method
