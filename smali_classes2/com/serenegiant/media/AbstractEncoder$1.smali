.class Lcom/serenegiant/media/AbstractEncoder$1;
.super Ljava/lang/Object;
.source "AbstractEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AbstractEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AbstractEncoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/AbstractEncoder;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, -0x4

    .line 215
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 216
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 218
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v1, v2}, Lcom/serenegiant/media/AbstractEncoder;->access$002(Lcom/serenegiant/media/AbstractEncoder;I)I

    .line 219
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 232
    iget-object v3, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v3, v2}, Lcom/serenegiant/media/AbstractEncoder;->access$002(Lcom/serenegiant/media/AbstractEncoder;I)I

    .line 233
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 229
    :catch_0
    monitor-exit v0

    goto :goto_2

    .line 233
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 237
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v1, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 239
    iget-object v3, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v3}, Lcom/serenegiant/media/AbstractEncoder;->access$000(Lcom/serenegiant/media/AbstractEncoder;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_2

    .line 241
    iget-object v5, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v5}, Lcom/serenegiant/media/AbstractEncoder;->access$010(Lcom/serenegiant/media/AbstractEncoder;)I

    .line 242
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_3

    .line 245
    :try_start_4
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractEncoder;->access$100(Lcom/serenegiant/media/AbstractEncoder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 250
    :catch_1
    :try_start_5
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/AbstractEncoder;->signalEndOfInputStream()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 255
    :catch_2
    :try_start_6
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractEncoder;->access$100(Lcom/serenegiant/media/AbstractEncoder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 259
    :catch_3
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_5

    .line 264
    :try_start_7
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractEncoder;->access$100(Lcom/serenegiant/media/AbstractEncoder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 266
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-nez v1, :cond_4

    .line 267
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    invoke-virtual {v1, v0}, Lcom/serenegiant/media/AbstractEncoder;->callOnError(Ljava/lang/Exception;)V

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iput-boolean v4, v0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    goto :goto_2

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_8
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 278
    :try_start_9
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 276
    :catch_5
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 282
    :goto_4
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v1, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_a
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iput-boolean v4, v0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 284
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iput-boolean v2, v0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    .line 285
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder$1;->this$0:Lcom/serenegiant/media/AbstractEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 278
    :goto_5
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    :catchall_3
    move-exception v0

    .line 242
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 220
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1
.end method
