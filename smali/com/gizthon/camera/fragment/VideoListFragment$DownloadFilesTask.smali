.class Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/fragment/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/gizthon/camera/model/PhotoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/fragment/VideoListFragment;


# direct methods
.method private constructor <init>(Lcom/gizthon/camera/fragment/VideoListFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/fragment/VideoListFragment$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;-><init>(Lcom/gizthon/camera/fragment/VideoListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$100(Lcom/gizthon/camera/fragment/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    new-instance v1, Lcom/gizthon/camera/adapter/PhotoAdapter;

    const v2, 0x7f0c007c

    invoke-direct {v1, p1, v2}, Lcom/gizthon/camera/adapter/PhotoAdapter;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$202(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/adapter/PhotoAdapter;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 63
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object p1

    new-instance v0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;-><init>(Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;)V

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->setOnChangeListener(Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;)V

    .line 71
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$300(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->rcPhoto:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
