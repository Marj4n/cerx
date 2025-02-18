.class Lcom/jieli/stream/dv/running2/util/VideoManager$2;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$2;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio(II[BJJ)V
    .locals 0

    .line 312
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 314
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$2;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$200(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/MovWrapper;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/lib/dv/control/player/MovWrapper;->write(I[B)Z

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onUpdate(Lcom/jieli/lib/dv/control/model/MediaInfo;)V
    .locals 0

    return-void
.end method

.method public onVideo(II[BJJ)V
    .locals 0

    .line 304
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 306
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$2;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$200(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/MovWrapper;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/lib/dv/control/player/MovWrapper;->write(I[B)Z

    :cond_0
    return-void
.end method
