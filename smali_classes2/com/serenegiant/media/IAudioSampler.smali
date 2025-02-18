.class public abstract Lcom/serenegiant/media/IAudioSampler;
.super Ljava/lang/Object;
.source "IAudioSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/IAudioSampler$CallbackThread;,
        Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;,
        Lcom/serenegiant/media/IAudioSampler$AudioSource;
    }
.end annotation


# static fields
.field public static final AUDIO_SOURCE_UAC:I = 0x64


# instance fields
.field private final MAX_POOL_SIZE:I

.field private final MAX_QUEUE_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private final mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferNum:I

.field private final mCallbackSync:Ljava/lang/Object;

.field private mCallbackThread:Lcom/serenegiant/media/IAudioSampler$CallbackThread;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mDefaultBufferSize:I

.field protected volatile mIsCapturing:Z

.field private final mPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private prevInputPTSUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    .line 132
    iput v0, p0, Lcom/serenegiant/media/IAudioSampler;->MAX_POOL_SIZE:I

    .line 137
    iput v0, p0, Lcom/serenegiant/media/IAudioSampler;->MAX_QUEUE_SIZE:I

    .line 140
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 141
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackSync:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    const/16 v0, 0x400

    .line 294
    iput v0, p0, Lcom/serenegiant/media/IAudioSampler;->mDefaultBufferSize:I

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    const-wide/16 v0, -0x1

    .line 355
    iput-wide v0, p0, Lcom/serenegiant/media/IAudioSampler;->prevInputPTSUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/IAudioSampler;Lcom/serenegiant/media/MediaData;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/serenegiant/media/IAudioSampler;->callOnData(Lcom/serenegiant/media/MediaData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/media/IAudioSampler;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackSync:Ljava/lang/Object;

    return-object p0
.end method

.method private callOnData(Lcom/serenegiant/media/MediaData;)V
    .locals 7

    .line 263
    iget-object v0, p1, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p1, Lcom/serenegiant/media/MediaData;->size:I

    .line 265
    iget-wide v2, p1, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    .line 266
    iget-object p1, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;

    .line 268
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 269
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 271
    invoke-interface {v4, v0, v1, v2, v3}, Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;->onData(Ljava/nio/ByteBuffer;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 273
    iget-object v6, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-object v4, p0, Lcom/serenegiant/media/IAudioSampler;->TAG:Ljava/lang/String;

    const-string v6, "callOnData:"

    invoke-static {v4, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createAudioRecord(IIIII)Landroid/media/AudioRecord;
    .locals 11

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 61
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v4, 0x2

    if-eq p0, v4, :cond_1

    const/4 v4, 0x3

    if-eq p0, v4, :cond_0

    aput v3, v1, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    aput p0, v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    aput p0, v1, v2

    goto :goto_0

    :cond_2
    aput v3, v1, v2

    :goto_0
    const/4 p0, 0x0

    move-object v4, p0

    :goto_1
    if-ge v2, v0, :cond_8

    .line 77
    aget v6, v1, v2

    .line 79
    :try_start_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid6()Z

    move-result v4

    const/16 v5, 0x10

    const/16 v7, 0xc

    if-eqz v4, :cond_4

    .line 80
    new-instance v4, Landroid/media/AudioRecord$Builder;

    invoke-direct {v4}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 81
    invoke-virtual {v4, v6}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 83
    invoke-virtual {v6, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 84
    invoke-virtual {v6, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    if-ne p2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v5, 0xc

    .line 85
    :goto_2
    invoke-virtual {v6, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, p4}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v4

    goto :goto_4

    .line 91
    :cond_4
    new-instance v4, Landroid/media/AudioRecord;

    if-ne p2, v3, :cond_5

    const/16 v8, 0x10

    goto :goto_3

    :cond_5
    const/16 v8, 0xc

    :goto_3
    move-object v5, v4

    move v7, p1

    move v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 95
    :goto_4
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    if-eq v5, v3, :cond_6

    .line 96
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v4, p0

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x5
        0x1
        0x0
        0x7
        0x6
    .end array-data
.end method


# virtual methods
.method public addCallback(Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected addMediaData(Lcom/serenegiant/media/MediaData;)Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected callOnError(Ljava/lang/Exception;)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;

    .line 286
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 288
    iget-object v3, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->TAG:Ljava/lang/String;

    const-string v3, "callOnError:"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getAudioSource()I
.end method

.method public abstract getBitResolution()I
.end method

.method public getBufferSize()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/serenegiant/media/IAudioSampler;->mDefaultBufferSize:I

    return v0
.end method

.method public abstract getChannels()I
.end method

.method protected getInputPTSUs()J
    .locals 5

    .line 363
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 364
    iget-wide v2, p0, Lcom/serenegiant/media/IAudioSampler;->prevInputPTSUs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x25ab

    add-long/2addr v0, v2

    .line 367
    :cond_0
    iput-wide v0, p0, Lcom/serenegiant/media/IAudioSampler;->prevInputPTSUs:J

    return-wide v0
.end method

.method public abstract getSamplingFrequency()I
.end method

.method protected init_pool(I)V
    .locals 3

    .line 296
    iput p1, p0, Lcom/serenegiant/media/IAudioSampler;->mDefaultBufferSize:I

    .line 297
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 298
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/serenegiant/media/MediaData;

    invoke-direct {v2, p1}, Lcom/serenegiant/media/MediaData;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    return v0
.end method

.method protected obtain()Lcom/serenegiant/media/MediaData;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/MediaData;

    goto :goto_0

    .line 319
    :cond_0
    iget v0, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 321
    new-instance v0, Lcom/serenegiant/media/MediaData;

    iget v1, p0, Lcom/serenegiant/media/IAudioSampler;->mDefaultBufferSize:I

    invoke-direct {v0, v1}, Lcom/serenegiant/media/MediaData;-><init>(I)V

    .line 322
    iget v1, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 325
    iput v1, v0, Lcom/serenegiant/media/MediaData;->size:I

    :cond_2
    return-object v0
.end method

.method protected pollMediaData(J)Lcom/serenegiant/media/MediaData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/media/MediaData;

    return-object p1
.end method

.method protected recycle(Lcom/serenegiant/media/MediaData;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 339
    iget p1, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/serenegiant/media/IAudioSampler;->mBufferNum:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/serenegiant/media/IAudioSampler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/serenegiant/media/IAudioSampler;->stop()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeCallback(Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackThread:Lcom/serenegiant/media/IAudioSampler$CallbackThread;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    .line 174
    new-instance v1, Lcom/serenegiant/media/IAudioSampler$CallbackThread;

    invoke-direct {v1, p0}, Lcom/serenegiant/media/IAudioSampler$CallbackThread;-><init>(Lcom/serenegiant/media/IAudioSampler;)V

    iput-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackThread:Lcom/serenegiant/media/IAudioSampler$CallbackThread;

    .line 175
    invoke-virtual {v1}, Lcom/serenegiant/media/IAudioSampler$CallbackThread;->start()V

    .line 177
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 177
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    const/4 v2, 0x0

    .line 189
    iput-boolean v2, p0, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    const/4 v2, 0x0

    .line 190
    iput-object v2, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackThread:Lcom/serenegiant/media/IAudioSampler$CallbackThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 193
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/media/IAudioSampler;->mCallbackSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :catch_0
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 197
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
