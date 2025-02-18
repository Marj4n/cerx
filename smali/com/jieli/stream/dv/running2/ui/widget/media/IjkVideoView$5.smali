.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    .line 541
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1800(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1800(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/16 p1, 0x385

    if-eq p2, p1, :cond_4

    const/16 p1, 0x386

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2711

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 569
    :pswitch_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :pswitch_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :pswitch_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_BUFFERING_END:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    :pswitch_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_AUDIO_RENDERING_START:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$1902(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I

    .line 579
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 581
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoRotation(I)V

    goto :goto_0

    .line 575
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
