.class Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/fragment/PhotoListFragment;
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
.field final synthetic this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;


# direct methods
.method private constructor <init>(Lcom/gizthon/camera/fragment/PhotoListFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gizthon/camera/fragment/PhotoListFragment;Lcom/gizthon/camera/fragment/PhotoListFragment$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;-><init>(Lcom/gizthon/camera/fragment/PhotoListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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

    .line 67
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->access$100(Lcom/gizthon/camera/fragment/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

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

    .line 71
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    new-instance v1, Lcom/gizthon/camera/adapter/PhotoAdapter;

    const v2, 0x7f0c007c

    invoke-direct {v1, p1, v2}, Lcom/gizthon/camera/adapter/PhotoAdapter;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->access$202(Lcom/gizthon/camera/fragment/PhotoListFragment;Lcom/gizthon/camera/adapter/PhotoAdapter;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 72
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->access$200(Lcom/gizthon/camera/fragment/PhotoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object p1

    new-instance v0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask$1;-><init>(Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;)V

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->setOnChangeListener(Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/PhotoListFragment;->access$300(Lcom/gizthon/camera/fragment/PhotoListFragment;)Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/GalleryPhotoFragmentBinding;->rcPhoto:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-static {v0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->access$200(Lcom/gizthon/camera/fragment/PhotoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/PhotoListFragment$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
