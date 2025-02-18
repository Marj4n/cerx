.class Lcom/serenegiant/media/AbstractFakeEncoder$1;
.super Ljava/lang/Object;
.source "AbstractFakeEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AbstractFakeEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AbstractFakeEncoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/AbstractFakeEncoder;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$000(Lcom/serenegiant/media/AbstractFakeEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$102(Lcom/serenegiant/media/AbstractFakeEncoder;Z)Z

    .line 511
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v1}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$000(Lcom/serenegiant/media/AbstractFakeEncoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 512
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 513
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$200(Lcom/serenegiant/media/AbstractFakeEncoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Lcom/serenegiant/media/AbstractFakeEncoder;->waitFrame(J)Lcom/serenegiant/media/MediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v1}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$200(Lcom/serenegiant/media/AbstractFakeEncoder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-virtual {v1, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->handleFrame(Lcom/serenegiant/media/MediaData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-virtual {v1, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-virtual {v2, v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->recycle(Lcom/serenegiant/media/MediaData;)V

    throw v1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$000(Lcom/serenegiant/media/AbstractFakeEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 526
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$102(Lcom/serenegiant/media/AbstractFakeEncoder;Z)Z

    .line 527
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    invoke-static {v0, v2}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$202(Lcom/serenegiant/media/AbstractFakeEncoder;Z)Z

    .line 528
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    iget-object v0, p0, Lcom/serenegiant/media/AbstractFakeEncoder$1;->this$0:Lcom/serenegiant/media/AbstractFakeEncoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/media/AbstractFakeEncoder;->access$302(Lcom/serenegiant/media/AbstractFakeEncoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catchall_1
    move-exception v0

    .line 528
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 512
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
