.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tryToStopRecording(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

.field final synthetic val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 2839
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 2842
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 2847
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v0, :cond_0

    .line 2848
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 2859
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Select fileInfo is null"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
