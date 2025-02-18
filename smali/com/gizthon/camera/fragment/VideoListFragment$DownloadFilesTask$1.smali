.class Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;->this$1:Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;->this$1:Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;

    iget-object v0, v0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask$1;->this$1:Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;

    iget-object v0, v0, Lcom/gizthon/camera/fragment/VideoListFragment$DownloadFilesTask;->this$0:Lcom/gizthon/camera/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onShowDone(Z)V

    :cond_0
    return-void
.end method
