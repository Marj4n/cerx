.class final Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;
.super Ljava/lang/Thread;
.source "AudioEncoderBuffered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioEncoderBuffered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioEncoderBuffered;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/AudioEncoderBuffered;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    const-string p1, "AudioThread"

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v0, -0x10

    .line 108
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 109
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v0, v0, Lcom/serenegiant/media/AudioEncoderBuffered;->mChannelCount:I

    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v1, v1, Lcom/serenegiant/media/AudioEncoderBuffered;->mSampleRate:I

    const/16 v2, 0x400

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lcom/serenegiant/media/AudioSampler;->getAudioBufferSize(IIII)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v1, v1, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioSource:I

    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v3, v3, Lcom/serenegiant/media/AudioEncoderBuffered;->mSampleRate:I

    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget v4, v4, Lcom/serenegiant/media/AudioEncoderBuffered;->mChannelCount:I

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5, v0}, Lcom/serenegiant/media/IAudioSampler;->createAudioRecord(IIIII)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v1, v1, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsCapturing:Z

    if-eqz v1, :cond_a

    .line 127
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 131
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v4, v4, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsCapturing:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v4, v4, Lcom/serenegiant/media/AudioEncoderBuffered;->mRequestStop:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-boolean v4, v4, Lcom/serenegiant/media/AudioEncoderBuffered;->mIsEOS:Z

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-static {v4}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$000(Lcom/serenegiant/media/AudioEncoderBuffered;)Lcom/serenegiant/media/MediaData;

    move-result-object v4

    .line 133
    iget-object v5, v4, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-virtual {v0, v5, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v6, :cond_2

    .line 144
    :try_start_3
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v3}, Lcom/serenegiant/media/AudioEncoderBuffered;->getInputPTSUs()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    .line 145
    iput v6, v4, Lcom/serenegiant/media/MediaData;->size:I

    .line 146
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 148
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    iget-object v3, v3, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    .line 152
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v3, v4}, Lcom/serenegiant/media/AudioEncoderBuffered;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    if-ne v6, v5, :cond_4

    if-nez v3, :cond_8

    .line 156
    invoke-static {}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Read error ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v5, -0x2

    if-ne v6, v5, :cond_5

    if-nez v3, :cond_8

    .line 160
    invoke-static {}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Read error ERROR_BAD_VALUE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v5, -0x3

    if-ne v6, v5, :cond_6

    if-nez v3, :cond_8

    .line 164
    invoke-static {}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Read error ERROR_INVALID_OPERATION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v5, -0x6

    if-ne v6, v5, :cond_7

    .line 167
    invoke-static {}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read error ERROR_DEAD_OBJECT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v1, v4}, Lcom/serenegiant/media/AudioEncoderBuffered;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_2

    :cond_7
    if-gez v6, :cond_8

    if-nez v3, :cond_8

    .line 173
    invoke-static {}, Lcom/serenegiant/media/AudioEncoderBuffered;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read returned unknown err "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 177
    iget-object v5, p0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v5, v4}, Lcom/serenegiant/media/AudioEncoderBuffered;->recycle(Lcom/serenegiant/media/MediaData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 183
    :catch_0
    :cond_9
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 189
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    throw v1

    :catch_1
    :cond_a
    :goto_3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_b
    return-void
.end method
