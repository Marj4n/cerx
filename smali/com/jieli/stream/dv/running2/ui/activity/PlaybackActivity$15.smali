.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;
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

    .line 936
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 944
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;ILcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->null_data:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
