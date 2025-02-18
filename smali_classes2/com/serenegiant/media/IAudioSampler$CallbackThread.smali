.class final Lcom/serenegiant/media/IAudioSampler$CallbackThread;
.super Ljava/lang/Thread;
.source "IAudioSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/IAudioSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/IAudioSampler;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/IAudioSampler;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    const-string p1, "AudioSampler"

    .line 376
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v0, -0x10

    .line 382
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 384
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    iget-boolean v0, v0, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v0, :cond_1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/media/IAudioSampler;->pollMediaData(J)Lcom/serenegiant/media/MediaData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    invoke-static {v1, v0}, Lcom/serenegiant/media/IAudioSampler;->access$000(Lcom/serenegiant/media/IAudioSampler;Lcom/serenegiant/media/MediaData;)V

    .line 393
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    invoke-virtual {v1, v0}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_0

    .line 396
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    invoke-static {v0}, Lcom/serenegiant/media/IAudioSampler;->access$100(Lcom/serenegiant/media/IAudioSampler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 397
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->this$0:Lcom/serenegiant/media/IAudioSampler;

    invoke-static {v1}, Lcom/serenegiant/media/IAudioSampler;->access$100(Lcom/serenegiant/media/IAudioSampler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
