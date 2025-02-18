.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 2489
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 2492
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: framework_err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",impl_err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, -0x2710

    if-ne p2, p3, :cond_0

    .line 2494
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return p1

    .line 2497
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 2498
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->fail_to_play:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V

    return p1
.end method
