.class Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/serenegiant/media/MediaAudioEncoder;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/media/MediaAudioEncoder;Lcom/serenegiant/media/MediaAudioEncoder$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;-><init>(Lcom/serenegiant/media/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, -0x13

    .line 115
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 117
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x6400

    const/4 v3, 0x1

    const/16 v4, 0x400

    if-ge v1, v0, :cond_0

    .line 122
    div-int/2addr v0, v4

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v1, v0, 0x2

    .line 125
    :cond_0
    invoke-static {}, Lcom/serenegiant/media/MediaAudioEncoder;->access$100()[I

    move-result-object v0

    array-length v2, v0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v5, v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_3

    aget v6, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    new-instance v13, Landroid/media/AudioRecord;

    const v7, 0xac44

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v13

    move v10, v1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 131
    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 132
    invoke-virtual {v13}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v11

    :cond_1
    move-object v5, v13

    goto :goto_1

    :catch_0
    move-object v5, v11

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v5, :cond_7

    .line 144
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/serenegiant/media/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 145
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :cond_4
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/MediaAudioEncoder;->mRequestStop:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/MediaAudioEncoder;->mIsEOS:Z

    if-nez v1, :cond_5

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v5, v0, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_4

    .line 156
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 158
    iget-object v2, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    iget-object v3, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    invoke-virtual {v3}, Lcom/serenegiant/media/MediaAudioEncoder;->getPTSUs()J

    move-result-wide v6

    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/serenegiant/media/MediaAudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 159
    iget-object v1, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    invoke-virtual {v1}, Lcom/serenegiant/media/MediaAudioEncoder;->frameAvailableSoon()V

    goto :goto_3

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;->this$0:Lcom/serenegiant/media/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/MediaAudioEncoder;->frameAvailableSoon()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :try_start_4
    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "MediaAudioEncoder"

    const-string v2, "AudioThread#run"

    .line 177
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-void
.end method
