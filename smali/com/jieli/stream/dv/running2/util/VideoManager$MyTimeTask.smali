.class Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/util/VideoManager;Lcom/jieli/stream/dv/running2/util/VideoManager$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$1000(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$900(Lcom/jieli/stream/dv/running2/util/VideoManager;)I

    move-result v0

    if-lez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$1000(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->getCurrentPosition()J

    move-result-wide v0

    .line 388
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$1100(Lcom/jieli/stream/dv/running2/util/VideoManager;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 389
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$500(Lcom/jieli/stream/dv/running2/util/VideoManager;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 390
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v2, v0, v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$502(Lcom/jieli/stream/dv/running2/util/VideoManager;J)J

    .line 391
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$408(Lcom/jieli/stream/dv/running2/util/VideoManager;)I

    .line 392
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$400(Lcom/jieli/stream/dv/running2/util/VideoManager;)I

    move-result v0

    const/16 v1, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$900(Lcom/jieli/stream/dv/running2/util/VideoManager;)I

    move-result v2

    div-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onProgress(I)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->tryToStopDownload()V

    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$002(Z)Z

    .line 400
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask$1;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToChangePlaybackState(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 406
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 408
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$702(Lcom/jieli/stream/dv/running2/util/VideoManager;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    :goto_0
    return-void
.end method
