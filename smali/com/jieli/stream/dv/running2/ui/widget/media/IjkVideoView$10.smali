.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 2

    .line 705
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 706
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1402(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 711
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1, p4}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1502(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 712
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 713
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p2

    invoke-interface {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 714
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 715
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 716
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 718
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    :cond_5
    return-void
.end method

.method public onSurfaceCreated(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 0

    .line 724
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p3

    if-eq p2, p3, :cond_0

    .line 725
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 729
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2502(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 730
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 731
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceCreated: openVideo"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1

    .line 740
    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 741
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2502(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 749
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->releaseWithoutStop()V

    return-void
.end method
