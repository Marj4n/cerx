.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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

    .line 627
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 631
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2202(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;J)J

    .line 632
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$2300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->updateSeekCost(J)V

    :cond_0
    return-void
.end method
