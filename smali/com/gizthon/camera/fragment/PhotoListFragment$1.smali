.class Lcom/gizthon/camera/fragment/PhotoListFragment$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/fragment/PhotoListFragment;->onCreateView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/fragment/PhotoListFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$1;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$1;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/gizthon/camera/fragment/PhotoListFragment$1;->this$0:Lcom/gizthon/camera/fragment/PhotoListFragment;

    invoke-virtual {v0}, Lcom/gizthon/camera/fragment/PhotoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onShowDone(Z)V

    :cond_0
    return-void
.end method
