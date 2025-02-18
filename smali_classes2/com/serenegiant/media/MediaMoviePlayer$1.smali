.class Lcom/serenegiant/media/MediaMoviePlayer$1;
.super Ljava/lang/Object;
.source "MediaMoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaMoviePlayer;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 309
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/serenegiant/media/MediaMoviePlayer;->access$102(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z

    move-result v1

    .line 310
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/serenegiant/media/MediaMoviePlayer;->access$202(Lcom/serenegiant/media/MediaMoviePlayer;I)I

    .line 311
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v3, v4}, Lcom/serenegiant/media/MediaMoviePlayer;->access$302(Lcom/serenegiant/media/MediaMoviePlayer;I)I

    .line 312
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    const-wide/16 v5, -0x1

    invoke-static {v3, v5, v6}, Lcom/serenegiant/media/MediaMoviePlayer;->access$402(Lcom/serenegiant/media/MediaMoviePlayer;J)J

    .line 313
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_4

    .line 317
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$100(Lcom/serenegiant/media/MediaMoviePlayer;)Z

    move-result v1

    .line 319
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$300(Lcom/serenegiant/media/MediaMoviePlayer;)I

    move-result v3

    .line 320
    iget-object v5, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v5, v4}, Lcom/serenegiant/media/MediaMoviePlayer;->access$302(Lcom/serenegiant/media/MediaMoviePlayer;I)I

    .line 321
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    :try_start_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$200(Lcom/serenegiant/media/MediaMoviePlayer;)I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$800(Lcom/serenegiant/media/MediaMoviePlayer;I)Z

    move-result v0

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$700(Lcom/serenegiant/media/MediaMoviePlayer;I)Z

    move-result v0

    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$600(Lcom/serenegiant/media/MediaMoviePlayer;I)Z

    move-result v0

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->access$500(Lcom/serenegiant/media/MediaMoviePlayer;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 321
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    .line 339
    :try_start_7
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$900(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoviePlayerTask:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 345
    :catch_1
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v0}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1000(Lcom/serenegiant/media/MediaMoviePlayer;)V

    return-void

    :catchall_1
    move-exception v1

    .line 314
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 345
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer$1;->this$0:Lcom/serenegiant/media/MediaMoviePlayer;

    invoke-static {v1}, Lcom/serenegiant/media/MediaMoviePlayer;->access$1000(Lcom/serenegiant/media/MediaMoviePlayer;)V

    throw v0
.end method
