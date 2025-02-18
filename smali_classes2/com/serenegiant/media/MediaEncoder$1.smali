.class Lcom/serenegiant/media/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/MediaEncoder;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    .line 223
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-static {v1, v2}, Lcom/serenegiant/media/MediaEncoder;->access$002(Lcom/serenegiant/media/MediaEncoder;I)I

    .line 224
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 227
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v1}, Lcom/serenegiant/media/MediaEncoder;->callOnStart()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 230
    :catch_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v1, v0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    .line 236
    iget-object v3, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-static {v3}, Lcom/serenegiant/media/MediaEncoder;->access$000(Lcom/serenegiant/media/MediaEncoder;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 238
    iget-object v5, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-static {v5}, Lcom/serenegiant/media/MediaEncoder;->access$010(Lcom/serenegiant/media/MediaEncoder;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 241
    :try_start_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    :try_start_5
    monitor-exit v1

    goto :goto_0

    .line 243
    :catch_1
    monitor-exit v1

    goto :goto_2

    .line 247
    :cond_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->callOnStop()V

    .line 251
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->drain()V

    .line 253
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->signalEndOfInputStream()V

    .line 255
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->drain()V

    .line 263
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->release()V

    .line 265
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_6
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iput-boolean v4, v1, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    .line 267
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    iput-boolean v2, v1, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :cond_4
    if-eqz v3, :cond_0

    .line 259
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder$1;->this$0:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaEncoder;->drain()V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 247
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 230
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method
