.class public abstract Lcom/serenegiant/media/MediaReaper;
.super Ljava/lang/Object;
.source "MediaReaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/MediaReaper$AudioReaper;,
        Lcom/serenegiant/media/MediaReaper$VideoReaper;,
        Lcom/serenegiant/media/MediaReaper$ReaperListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final REAPER_AUDIO:I = 0x1

.field public static final REAPER_VIDEO:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private volatile mIsEOS:Z

.field private volatile mIsRunning:Z

.field private final mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

.field private final mReaperType:I

.field private volatile mRecorderStarted:Z

.field private mRequestDrain:I

.field private mRequestStop:Z

.field private final mSync:Ljava/lang/Object;

.field private final mWeakEncoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/MediaCodec;",
            ">;"
        }
    .end annotation
.end field

.field private prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/serenegiant/media/MediaReaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/MediaReaper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaCodec;Lcom/serenegiant/media/MediaReaper$ReaperListener;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 381
    iput-wide v0, p0, Lcom/serenegiant/media/MediaReaper;->prevOutputPTSUs:J

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    .line 155
    iput-object p3, p0, Lcom/serenegiant/media/MediaReaper;->mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

    .line 156
    iput p1, p0, Lcom/serenegiant/media/MediaReaper;->mReaperType:I

    .line 157
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 158
    iget-object p1, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 160
    :try_start_0
    new-instance p2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    iget-object p2, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :catch_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method private callOnError(Ljava/lang/Exception;)V
    .locals 1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

    invoke-interface {v0, p0, p1}, Lcom/serenegiant/media/MediaReaper$ReaperListener;->onError(Lcom/serenegiant/media/MediaReaper;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    sget-object v0, Lcom/serenegiant/media/MediaReaper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private callOnFormatChanged(Landroid/media/MediaFormat;)Z
    .locals 1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

    invoke-interface {v0, p0, p1}, Lcom/serenegiant/media/MediaReaper$ReaperListener;->onOutputFormatChanged(Lcom/serenegiant/media/MediaReaper;Landroid/media/MediaFormat;)V

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaReaper;->mRecorderStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 357
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaReaper;->callOnError(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method private callOnStop()V
    .locals 1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/MediaReaper$ReaperListener;->onStop(Lcom/serenegiant/media/MediaReaper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-direct {p0, v0}, Lcom/serenegiant/media/MediaReaper;->callOnError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private final drain()V
    .locals 13

    .line 252
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 262
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    if-eqz v4, :cond_b

    .line 263
    iget-object v4, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 266
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaReaper;->mIsEOS:Z

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    goto/16 :goto_3

    :cond_2
    const/4 v5, -0x3

    if-ne v4, v5, :cond_3

    .line 273
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    .line 280
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaReaper;->mRecorderStarted:Z

    if-nez v4, :cond_4

    .line 285
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 286
    invoke-direct {p0, v4}, Lcom/serenegiant/media/MediaReaper;->callOnFormatChanged(Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 281
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-ltz v4, :cond_1

    .line 289
    aget-object v5, v1, v4

    if-eqz v5, :cond_a

    .line 294
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    .line 297
    iget-boolean v6, p0, Lcom/serenegiant/media/MediaReaper;->mRecorderStarted:Z

    if-nez v6, :cond_6

    .line 299
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v8, v6, [B

    .line 300
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 301
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v7, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v8, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    invoke-static {v8, v2}, Lcom/serenegiant/media/MediaCodecHelper;->findStartMarker([BI)I

    move-result v10

    add-int/lit8 v6, v10, 0x2

    .line 304
    invoke-static {v8, v6}, Lcom/serenegiant/media/MediaCodecHelper;->findStartMarker([BI)I

    move-result v11

    add-int/lit8 v6, v11, 0x2

    .line 305
    invoke-static {v8, v6}, Lcom/serenegiant/media/MediaCodecHelper;->findStartMarker([BI)I

    move-result v12

    .line 307
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v7, p0

    .line 308
    invoke-virtual/range {v7 .. v12}, Lcom/serenegiant/media/MediaReaper;->createOutputFormat([BIIII)Landroid/media/MediaFormat;

    move-result-object v6

    .line 309
    invoke-direct {p0, v6}, Lcom/serenegiant/media/MediaReaper;->callOnFormatChanged(Landroid/media/MediaFormat;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 312
    :cond_6
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 315
    :cond_7
    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_9

    .line 318
    iget-boolean v3, p0, Lcom/serenegiant/media/MediaReaper;->mRecorderStarted:Z

    if-eqz v3, :cond_8

    .line 325
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 326
    invoke-virtual {p0, v6, v7}, Lcom/serenegiant/media/MediaReaper;->getNextOutputPTSUs(J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 327
    iget-object v3, p0, Lcom/serenegiant/media/MediaReaper;->mListener:Lcom/serenegiant/media/MediaReaper$ReaperListener;

    iget-object v6, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v3, p0, v5, v6}, Lcom/serenegiant/media/MediaReaper$ReaperListener;->writeSampleData(Lcom/serenegiant/media/MediaReaper;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Lcom/serenegiant/media/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 333
    invoke-direct {p0, v3}, Lcom/serenegiant/media/MediaReaper;->callOnError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 330
    invoke-direct {p0, v3}, Lcom/serenegiant/media/MediaReaper;->callOnError(Ljava/lang/Exception;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 321
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_9
    :goto_2
    invoke-virtual {v0, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 338
    iget-object v4, p0, Lcom/serenegiant/media/MediaReaper;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/serenegiant/media/MediaReaper;->callOnStop()V

    goto :goto_3

    .line 292
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method protected abstract createOutputFormat([BIIII)Landroid/media/MediaFormat;
.end method

.method public frameAvailableSoon()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    .line 193
    iget-object v1, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit v0

    return-void

    .line 190
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getNextOutputPTSUs(J)J
    .locals 3

    .line 388
    iget-wide v0, p0, Lcom/serenegiant/media/MediaReaper;->prevOutputPTSUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x25ab

    add-long/2addr p1, v0

    .line 391
    :cond_0
    iput-wide p1, p0, Lcom/serenegiant/media/MediaReaper;->prevOutputPTSUs:J

    return-wide p1
.end method

.method public reaperType()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/serenegiant/media/MediaReaper;->mReaperType:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    const/4 v0, -0x4

    .line 204
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 206
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 207
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    const/4 v2, 0x0

    .line 208
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    .line 209
    iput v2, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    .line 210
    iget-object v3, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 214
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_1
    iget-boolean v3, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    .line 217
    iget v4, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 219
    iget v5, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/serenegiant/media/MediaReaper;->mRequestDrain:I

    .line 220
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    .line 223
    :try_start_2
    invoke-direct {p0}, Lcom/serenegiant/media/MediaReaper;->drain()V

    .line 224
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaReaper;->mIsEOS:Z

    .line 225
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaReaper;->release()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/serenegiant/media/MediaReaper;->drain()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    :try_start_3
    iget-object v3, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 235
    :catch_1
    monitor-exit v0

    goto :goto_4

    .line 237
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 242
    :goto_3
    sget-object v3, Lcom/serenegiant/media/MediaReaper;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 220
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 245
    :catch_2
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/serenegiant/media/MediaReaper;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    :try_start_7
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaReaper;->mRequestStop:Z

    .line 247
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaReaper;->mIsRunning:Z

    .line 248
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 211
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method
