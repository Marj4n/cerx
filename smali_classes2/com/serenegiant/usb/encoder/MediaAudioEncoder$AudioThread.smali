.class Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/serenegiant/usb/encoder/MediaAudioEncoder;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/usb/encoder/MediaAudioEncoder;Lcom/serenegiant/usb/encoder/MediaAudioEncoder$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/serenegiant/usb/encoder/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/16 v0, -0x10

    .line 118
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const v0, 0xac44

    const/16 v2, 0x10

    const/4 v3, 0x2

    .line 120
    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v2, 0x1

    const/16 v4, 0x400

    const/16 v5, 0x6400

    if-ge v5, v0, :cond_0

    .line 124
    div-int/2addr v0, v4

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v5, v0, 0x2

    .line 125
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 127
    invoke-static {}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->access$100()[I

    move-result-object v0

    array-length v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_3

    aget v7, v0, v15

    .line 129
    :try_start_0
    new-instance v16, Landroid/media/AudioRecord;

    const v8, 0xac44

    const/16 v9, 0x10

    const/4 v10, 0x2

    move-object/from16 v6, v16

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 132
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 133
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v13

    :cond_1
    move-object/from16 v6, v16

    goto :goto_1

    :catch_0
    move-object v6, v13

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v6, :cond_8

    .line 146
    :try_start_1
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_7

    const-string v0, "MediaAudioEncoder"

    const-string v2, "AudioThread:start audio recording"

    .line 147
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 151
    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mRequestStop:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mIsEOS:Z

    if-nez v0, :cond_5

    .line 153
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {v6, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_4

    .line 161
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iget-object v5, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-object v7, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-virtual {v7}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->getPTSUs()J

    move-result-wide v7

    invoke-virtual {v5, v3, v0, v7, v8}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 164
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->frameAvailableSoon()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    nop

    :cond_5
    if-lez v2, :cond_6

    .line 169
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->frameAvailableSoon()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Landroid/media/AudioRecord;->stop()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/media/AudioRecord;->stop()V

    .line 173
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 178
    :goto_4
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v2, 0x0

    :goto_5
    :try_start_6
    const-string v5, "MediaAudioEncoder"

    const-string v7, "AudioThread#run"

    .line 176
    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 178
    :goto_6
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    .line 179
    throw v0

    :cond_8
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_9

    .line 182
    :goto_8
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    if-ge v14, v0, :cond_9

    .line 183
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    :try_start_7
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-virtual {v2}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->getPTSUs()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 187
    iget-object v0, v1, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/usb/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->frameAvailableSoon()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 191
    monitor-enter p0

    const-wide/16 v5, 0x32

    .line 193
    :try_start_8
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 197
    :catch_4
    :goto_9
    :try_start_9
    monitor-exit p0

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :goto_a
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catch_5
    :cond_9
    const-string v0, "MediaAudioEncoder"

    const-string v2, "AudioThread:finished"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
