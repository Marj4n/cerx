.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 424
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 426
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 427
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setMode(I)V

    .line 429
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
