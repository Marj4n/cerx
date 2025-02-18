.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showStopRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
    .locals 0

    .line 2820
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;->val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 2823
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$9400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 2824
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$9402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 2825
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;->val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;

    if-eqz v0, :cond_0

    .line 2826
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;->onConfirm()V

    :cond_0
    return-void
.end method
