.class Lcom/serenegiant/media/AudioSamplerEncoder$2;
.super Ljava/lang/Object;
.source "AudioSamplerEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioSamplerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioSamplerEncoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/AudioSamplerEncoder;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AudioSamplerEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AudioSamplerEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AudioSamplerEncoder;->mRequestStop:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AudioSamplerEncoder;->mIsEOS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-object v1, v1, Lcom/serenegiant/media/AudioSamplerEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    monitor-exit v0

    goto :goto_0

    .line 122
    :catch_0
    monitor-exit v0

    goto :goto_2

    .line 118
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-static {v0}, Lcom/serenegiant/media/AudioSamplerEncoder;->access$000(Lcom/serenegiant/media/AudioSamplerEncoder;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x400

    .line 129
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 130
    :goto_3
    iget-object v3, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v3, v3, Lcom/serenegiant/media/AudioSamplerEncoder;->mIsCapturing:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 131
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 134
    iget-object v3, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-virtual {v3}, Lcom/serenegiant/media/AudioSamplerEncoder;->getInputPTSUs()J

    move-result-wide v4

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/serenegiant/media/AudioSamplerEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 135
    iget-object v3, p0, Lcom/serenegiant/media/AudioSamplerEncoder$2;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-virtual {v3}, Lcom/serenegiant/media/AudioSamplerEncoder;->frameAvailableSoon()V

    .line 136
    monitor-enter p0

    const-wide/16 v3, 0x32

    .line 138
    :try_start_3
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 141
    :catch_1
    :goto_4
    :try_start_4
    monitor-exit p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 124
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
