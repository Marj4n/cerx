.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;->onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 742
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfoCount(I)V

    return-void
.end method
