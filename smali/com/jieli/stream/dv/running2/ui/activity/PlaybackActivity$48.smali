.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showDeleteFileDialog()V
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

    .line 2768
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 2771
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$9100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 2772
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$9200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$9300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto :goto_0

    .line 2775
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    .line 2776
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    :goto_0
    return-void
.end method
