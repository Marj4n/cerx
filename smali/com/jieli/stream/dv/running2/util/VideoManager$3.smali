.class Lcom/jieli/stream/dv/running2/util/VideoManager$3;
.super Lcom/jieli/lib/dv/control/player/OnRecordListener;
.source "VideoManager.java"


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

    .line 332
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/OnRecordListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 335
    invoke-super {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onError(ILjava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->tryToStopDownload()V

    .line 337
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 344
    invoke-super {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onStateChanged(ILjava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$600()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-onStateChanged- state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 347
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$002(Z)Z

    .line 348
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$402(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I

    .line 349
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$502(Lcom/jieli/stream/dv/running2/util/VideoManager;J)J

    .line 350
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$702(Lcom/jieli/stream/dv/running2/util/VideoManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 351
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-direct {v1, p1, p2}, Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager;Lcom/jieli/stream/dv/running2/util/VideoManager$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 352
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 353
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onStartLoad()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 356
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onCompletion()V

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 361
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$702(Lcom/jieli/stream/dv/running2/util/VideoManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 363
    :cond_2
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$002(Z)Z

    .line 364
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$402(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I

    .line 365
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$502(Lcom/jieli/stream/dv/running2/util/VideoManager;J)J

    .line 366
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$902(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I

    :cond_3
    :goto_0
    return-void
.end method
