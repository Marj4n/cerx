.class Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;
.super Landroid/os/AsyncTask;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/fragment/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/gizthon/camera/model/PhotoBean;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/gizthon/camera/model/PhotoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/fragment/VideoListFragment;


# direct methods
.method private constructor <init>(Lcom/gizthon/camera/fragment/VideoListFragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gizthon/camera/fragment/VideoListFragment;Lcom/gizthon/camera/fragment/VideoListFragment$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;-><init>(Lcom/gizthon/camera/fragment/VideoListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    aget-object p1, p1, v0

    .line 180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gizthon/camera/model/PhotoBean;

    invoke-virtual {v2}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->getSelected()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 193
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gizthon/camera/adapter/PhotoAdapter;->changeSelectedStatus()V

    .line 197
    iget-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/gizthon/camera/fragment/VideoListFragment;->access$200(Lcom/gizthon/camera/fragment/VideoListFragment;)Lcom/gizthon/camera/adapter/PhotoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifySelectedStatus()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/fragment/VideoListFragment$DeleteFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
