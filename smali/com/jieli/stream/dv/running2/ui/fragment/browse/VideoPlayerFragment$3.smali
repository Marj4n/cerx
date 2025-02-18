.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->initPlayer()V
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

    .line 222
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x1

    const/16 p2, -0x2710

    if-ne p3, p2, :cond_0

    return p1

    .line 227
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->player_not_support_media:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 229
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return p1
.end method
