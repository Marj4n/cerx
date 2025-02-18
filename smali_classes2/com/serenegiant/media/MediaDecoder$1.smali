.class Lcom/serenegiant/media/MediaDecoder$1;
.super Ljava/lang/Object;
.source "MediaDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaDecoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/MediaDecoder;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/media/MediaDecoder;->access$102(Lcom/serenegiant/media/MediaDecoder;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/serenegiant/media/MediaDecoder;->access$002(Lcom/serenegiant/media/MediaDecoder;Z)Z

    .line 410
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/serenegiant/media/MediaDecoder;->access$202(Lcom/serenegiant/media/MediaDecoder;Z)Z

    .line 411
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaDecoder;->callOnStart()V

    .line 412
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$000(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$100(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 414
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$300(Lcom/serenegiant/media/MediaDecoder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v2}, Lcom/serenegiant/media/MediaDecoder;->access$300(Lcom/serenegiant/media/MediaDecoder;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/serenegiant/media/MediaDecoder;->access$400(Lcom/serenegiant/media/MediaDecoder;J)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$000(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaDecoder;->internal_HandleInput()V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$100(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaDecoder;->internal_handleOutput()V

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$200(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$000(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$100(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :cond_5
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    const/4 v2, 0x5

    iput v2, v0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 425
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaDecoder;->callOnStop()V

    .line 426
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$200(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$500(Lcom/serenegiant/media/MediaDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 428
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    iget v3, v3, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v2, :cond_6

    .line 431
    :try_start_2
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v2}, Lcom/serenegiant/media/MediaDecoder;->access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :catch_0
    :cond_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :try_start_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$200(Lcom/serenegiant/media/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaDecoder;->callOnStart()V

    .line 438
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/serenegiant/media/MediaDecoder;->access$802(Lcom/serenegiant/media/MediaDecoder;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/serenegiant/media/MediaDecoder;->access$702(Lcom/serenegiant/media/MediaDecoder;J)J

    .line 439
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v2, v1}, Lcom/serenegiant/media/MediaDecoder;->access$102(Lcom/serenegiant/media/MediaDecoder;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/serenegiant/media/MediaDecoder;->access$002(Lcom/serenegiant/media/MediaDecoder;Z)Z

    .line 440
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    const/4 v2, 0x3

    iput v2, v0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 435
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 447
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    iget-object v1, v1, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "PlaybackTask:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-virtual {v1, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    .line 453
    :cond_7
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$900(Lcom/serenegiant/media/MediaDecoder;)V

    .line 454
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v0}, Lcom/serenegiant/media/MediaDecoder;->access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 455
    :try_start_7
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder$1;->this$0:Lcom/serenegiant/media/MediaDecoder;

    invoke-static {v1}, Lcom/serenegiant/media/MediaDecoder;->access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
