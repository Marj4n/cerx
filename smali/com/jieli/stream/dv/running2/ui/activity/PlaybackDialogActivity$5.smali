.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 5

    .line 391
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xcff59cb

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x3ce7e220

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "TIME_AXIS_PLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "TIME_AXIS_FAST_PLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_4

    goto/16 :goto_1

    .line 408
    :cond_4
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 409
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PLAYBACK_FAST_FORWARD: data params is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1102(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;I)I

    .line 412
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 413
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v0

    if-nez v0, :cond_7

    .line 399
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    new-instance v1, Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;-><init>()V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$002(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    .line 400
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$1000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playback data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object p1

    const/16 v0, 0x8af

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;)Z

    .line 404
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object p1

    const/16 v0, 0x1a0a

    const/16 v1, 0x4d2

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->configure(II)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 388
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
