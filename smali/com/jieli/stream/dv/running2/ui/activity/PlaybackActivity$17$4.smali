.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1367
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v0

    .line 1368
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1371
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->scrollToPosition(I)V

    .line 1373
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1374
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1375
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1377
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void

    .line 1380
    :cond_3
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFileInfoList selected file -> name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 1382
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setBrowsePostion(I)V

    .line 1383
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 1384
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfoCount(I)V

    .line 1385
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3400()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
