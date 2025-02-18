.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteFile(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
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

    .line 1833
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 1836
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1837
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$7900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto :goto_0

    .line 1839
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1833
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
