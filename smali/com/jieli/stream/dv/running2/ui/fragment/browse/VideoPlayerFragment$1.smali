.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 109
    :pswitch_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_btn_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestFocus()Z

    .line 111
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->default_time_format:I

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_btn_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestFocus()Z

    goto :goto_0

    .line 89
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_btn_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 95
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xb2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    .line 100
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v3

    .line 99
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 86
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
