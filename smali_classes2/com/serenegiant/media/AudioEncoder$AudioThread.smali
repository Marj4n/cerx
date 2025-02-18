.class final Lcom/serenegiant/media/AudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "AudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioEncoder;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/AudioEncoder;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    const-string p1, "AudioThread"

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/16 v0, -0x10

    .line 120
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v0, v0, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v1, v1, Lcom/serenegiant/media/AudioEncoder;->mSampleRate:I

    const/16 v2, 0x400

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lcom/serenegiant/media/AudioSampler;->getAudioBufferSize(IIII)I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v1, v1, Lcom/serenegiant/media/AudioEncoder;->mAudioSource:I

    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v3, v3, Lcom/serenegiant/media/AudioEncoder;->mSampleRate:I

    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v4, v4, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5, v0}, Lcom/serenegiant/media/IAudioSampler;->createAudioRecord(IIIII)Landroid/media/AudioRecord;

    move-result-object v1

    .line 133
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-boolean v4, v4, Lcom/serenegiant/media/AudioEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_c

    .line 139
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 141
    :try_start_1
    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget v4, v4, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int/lit16 v4, v4, 0x400

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 143
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-boolean v7, v7, Lcom/serenegiant/media/AudioEncoder;->mIsCapturing:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-boolean v7, v7, Lcom/serenegiant/media/AudioEncoder;->mRequestStop:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-boolean v7, v7, Lcom/serenegiant/media/AudioEncoder;->mIsEOS:Z

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    invoke-virtual {v1, v0, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 155
    :try_start_4
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    iget-object v6, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-object v8, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v8}, Lcom/serenegiant/media/AudioEncoder;->getInputPTSUs()J

    move-result-wide v8

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/serenegiant/media/AudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 158
    iget-object v6, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v6}, Lcom/serenegiant/media/AudioEncoder;->frameAvailableSoon()V

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    if-nez v6, :cond_4

    .line 164
    invoke-static {}, Lcom/serenegiant/media/AudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read error ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, -0x2

    if-ne v7, v8, :cond_6

    if-nez v6, :cond_4

    .line 169
    invoke-static {}, Lcom/serenegiant/media/AudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read error ERROR_BAD_VALUE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v8, -0x3

    if-ne v7, v8, :cond_7

    if-nez v6, :cond_4

    .line 174
    invoke-static {}, Lcom/serenegiant/media/AudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read error ERROR_INVALID_OPERATION"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const/4 v8, -0x6

    if-ne v7, v8, :cond_8

    if-nez v6, :cond_4

    .line 179
    invoke-static {}, Lcom/serenegiant/media/AudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read error ERROR_DEAD_OBJECT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    if-gez v7, :cond_9

    if-nez v6, :cond_4

    .line 185
    invoke-static {}, Lcom/serenegiant/media/AudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read returned unknown err "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    :goto_2
    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    goto :goto_3

    :catch_0
    nop

    :cond_a
    :goto_3
    if-lez v5, :cond_b

    .line 192
    iget-object v4, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v4}, Lcom/serenegiant/media/AudioEncoder;->frameAvailableSoon()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    :cond_b
    :try_start_5
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 200
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    throw v0

    :catch_1
    :cond_c
    const/4 v5, 0x0

    :catch_2
    :goto_5
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_e

    .line 208
    :goto_7
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AudioEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x5

    if-ge v3, v1, :cond_e

    .line 209
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 211
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v1}, Lcom/serenegiant/media/AudioEncoder;->getInputPTSUs()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/serenegiant/media/AudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 212
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v1}, Lcom/serenegiant/media/AudioEncoder;->frameAvailableSoon()V

    .line 213
    monitor-enter p0

    const-wide/16 v4, 0x32

    .line 215
    :try_start_6
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 218
    :catch_3
    :goto_8
    :try_start_7
    monitor-exit p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :goto_9
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_e
    return-void
.end method
