.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$802(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z

    return-void
.end method

.method public onFailed()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$802(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z

    .line 275
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->failure_photo:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method
