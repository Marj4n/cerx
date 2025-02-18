.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onCompleted- bytes size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mediaMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;[BLandroid/os/Handler;)V

    .line 1693
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1694
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->start()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1700
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1701
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mVideoThumbnail close - 003"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    .line 1704
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1705
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method
