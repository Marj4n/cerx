.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;)V
    .locals 0

    .line 2848
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 2851
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2852
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2854
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 2855
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;->val$info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2848
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
