.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestVideoContentThumbnail(Lcom/jieli/stream/dv/running2/bean/FileInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

.field final synthetic val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;ILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->val$number:I

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 1640
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1641
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1643
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Send success"

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1644
    :goto_0
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->val$number:I

    if-ge p1, v1, :cond_1

    .line 1645
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->put(Lcom/jieli/stream/dv/running2/bean/FileInfo;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1637
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
