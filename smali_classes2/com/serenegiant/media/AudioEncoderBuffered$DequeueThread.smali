.class final Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;
.super Ljava/lang/Thread;
.source "AudioEncoderBuffered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioEncoderBuffered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DequeueThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioEncoderBuffered;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/AudioEncoderBuffered;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    const-string p1, "DequeueThread"

    .line 203
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-object v2, v2, Lcom/serenegiant/media/AudioEncoderBuffered;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v3, v3, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsCapturing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v3, v3, Lcom/serenegiant/media/AudioEncoderBuffered;->mRequestStop:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v3, v3, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsEOS:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v2, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-object v2, v2, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/media/MediaData;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    .line 220
    iget v3, v2, Lcom/serenegiant/media/MediaData;->size:I

    if-lez v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-object v4, v2, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v5, v2, Lcom/serenegiant/media/MediaData;->size:I

    iget-wide v6, v2, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/serenegiant/media/AudioEncoderBuffered;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 222
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v3}, Lcom/serenegiant/media/AudioEncoderBuffered;->frameAvailableSoon()V

    add-int/lit8 v1, v1, 0x1

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v3, v2}, Lcom/serenegiant/media/AudioEncoderBuffered;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    .line 212
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-nez v1, :cond_4

    .line 231
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v1, v1, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 232
    :goto_3
    iget-object v2, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v2, v2, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsCapturing:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    const/16 v2, 0x400

    .line 233
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 235
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v3}, Lcom/serenegiant/media/AudioEncoderBuffered;->getInputPTSUs()J

    move-result-wide v4

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/serenegiant/media/AudioEncoderBuffered;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 236
    iget-object v2, p0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v2}, Lcom/serenegiant/media/AudioEncoderBuffered;->frameAvailableSoon()V

    .line 237
    monitor-enter p0

    const-wide/16 v2, 0x32

    .line 239
    :try_start_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 242
    :catch_1
    :goto_4
    :try_start_4
    monitor-exit p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 213
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
