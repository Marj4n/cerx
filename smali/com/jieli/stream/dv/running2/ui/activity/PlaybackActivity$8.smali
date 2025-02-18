.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;
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

    .line 608
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result v0

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v0

    .line 619
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;J)V

    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method
