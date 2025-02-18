.class public Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;
.super Ljava/lang/Thread;
.source "AACEncodeConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;
    }
.end annotation


# static fields
.field public static final AUDIO_SAMPLING_RATES:[I

.field private static final AUDIO_SOURCES:[I

.field private static final BIT_RATE:I = 0x3e80

.field private static final BUFFER_SIZE:I = 0x780

.field private static final DEBUG:Z = false

.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final SAMPLE_RATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "TMPU"

.field private static final TIMES_OUT:J = 0x3e8L


# instance fields
.field private bitRateForLame:I

.field private bufferSizeInBytes:I

.field private fops:Ljava/io/FileOutputStream;

.field private isEncoderStart:Z

.field private isExit:Z

.field private isRecMp3:Z

.field private listener:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mMuxerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingRateIndex:I

.field private newFormat:Landroid/media/MediaFormat;

.field private outChannel:I

.field private prevPresentationTimes:J

.field private qaulityDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->AUDIO_SOURCES:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_1

    sput-object v0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->AUDIO_SAMPLING_RATES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->outChannel:I

    const/16 v0, 0x20

    .line 40
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->bitRateForLame:I

    const/4 v0, 0x7

    .line 41
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->qaulityDegree:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mSamplingRateIndex:I

    .line 48
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isEncoderStart:Z

    .line 49
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isRecMp3:Z

    .line 50
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isExit:Z

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->prevPresentationTimes:J

    .line 90
    :goto_0
    sget-object v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->AUDIO_SAMPLING_RATES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    aget v1, v1, v0

    const/16 v2, 0x1f40

    if-ne v1, v2, :cond_0

    .line 92
    iput v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mSamplingRateIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 364
    aput-byte v0, p1, v1

    const/4 v0, 0x1

    const/16 v2, -0xf

    .line 365
    aput-byte v2, p1, v0

    .line 366
    iget v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mSamplingRateIndex:I

    const/4 v2, 0x2

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    shr-int/lit8 v0, p2, 0xb

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 367
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 368
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 369
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 370
    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeBytes([BI)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 145
    iget-object v2, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 146
    iget-object v3, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 148
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_3

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isLollipop()Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    aget-object v2, v2, v8

    goto :goto_0

    .line 155
    :cond_0
    iget-object v2, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_2

    if-gtz p2, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    iget-object v7, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->getPTSUs()J

    move-result-wide v11

    const/4 v13, 0x0

    move/from16 v10, p2

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 159
    :cond_2
    :goto_1
    iget-object v7, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->getPTSUs()J

    move-result-wide v11

    const/4 v13, 0x4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 169
    :cond_3
    :goto_2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 172
    :cond_4
    iget-object v2, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v4, -0x3

    if-ne v2, v4, :cond_6

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isLollipop()Z

    move-result v4

    if-nez v4, :cond_f

    .line 180
    iget-object v3, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_5

    :cond_6
    const/4 v4, -0x2

    const/4 v7, 0x0

    if-ne v2, v4, :cond_8

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    .line 189
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_7

    .line 190
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v4, :cond_7

    .line 192
    iget-object v8, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v8, v7}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V

    .line 195
    :cond_7
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 198
    :cond_8
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 201
    iput v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 204
    :cond_9
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    goto/16 :goto_6

    :cond_a
    const/16 v4, 0x2800

    .line 210
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isLollipop()Z

    move-result v8

    if-nez v8, :cond_b

    .line 213
    aget-object v8, v3, v2

    goto :goto_3

    .line 215
    :cond_b
    iget-object v8, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 217
    :goto_3
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_e

    if-eqz v8, :cond_d

    .line 223
    iget-object v9, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_c

    .line 224
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v9, :cond_c

    .line 226
    invoke-virtual {v9, v8, v0, v7}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->pumpStream(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 230
    :cond_c
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 231
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v11, 0x7

    invoke-virtual {v8, v9, v11, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v11

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v11

    invoke-direct {v1, v8, v9}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->addADTStoPacket([BI)V

    .line 235
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 237
    iget-object v8, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;

    if-eqz v8, :cond_e

    const-string v8, "TMPU"

    const-string v9, "----->\u5f97\u5230aac\u6570\u636e\u6d41<-----"

    .line 238
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v12, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/4 v14, 0x0

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v15, v4, 0x7

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v16, v8, v5

    invoke-interface/range {v12 .. v17}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;->onEncodeResult([BIIJ)V

    goto :goto_4

    .line 220
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodecOutputBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "was null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_e
    :goto_4
    iget-object v4, v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_f
    :goto_5
    if-gez v2, :cond_4

    :goto_6
    return-void
.end method

.method private getPTSUs()J
    .locals 5

    .line 333
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 334
    iget-wide v2, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->prevPresentationTimes:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private initAudioRecord()V
    .locals 12

    const/16 v0, -0x10

    .line 252
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v0, 0x1f40

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 253
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 255
    sget-object v1, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->AUDIO_SOURCES:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_2

    aget v4, v1, v9

    const/4 v10, 0x0

    .line 257
    :try_start_0
    new-instance v11, Landroid/media/AudioRecord;

    const/16 v5, 0x1f40

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v11

    move v8, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v11, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v11, :cond_0

    .line 260
    invoke-virtual {v11}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 261
    iget-object v3, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 262
    iput-object v10, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    :catch_0
    iput-object v10, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    .line 268
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 272
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    return-void
.end method

.method private initMediaCodec()V
    .locals 5

    const-string v0, "audio/mp4a-latm"

    .line 278
    invoke-direct {p0, v0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->selectSupportCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    const-string v2, "TMPU"

    if-nez v1, :cond_0

    const-string v0, "\u7f16\u7801\u5668\u4e0d\u652f\u6301audio/mp4a-latm\u7c7b\u578b"

    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521b\u5efa\u7f16\u7801\u5668\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    :goto_0
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    .line 290
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e80

    const-string v2, "bitrate"

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x1f40

    const-string v3, "sample-rate"

    .line 293
    invoke-virtual {v1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x2

    const-string v3, "aac-profile"

    .line 294
    invoke-virtual {v1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x780

    const-string v3, "max-input-size"

    .line 295
    invoke-virtual {v1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 296
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 297
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 298
    iput-boolean v2, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isEncoderStart:Z

    return-void
.end method

.method private isKITKAT()Z
    .locals 2

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLollipop()Z
    .locals 2

    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private selectSupportCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 345
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 347
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 349
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 353
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 354
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 355
    aget-object v6, v4, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private stopAudioRecord()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 306
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private stopMediaCodec()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 316
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioEncoder:Landroid/media/MediaCodec;

    :cond_0
    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isEncoderStart:Z

    return-void
.end method

.method private transferByte2Short([BI)[S
    .locals 2

    .line 376
    div-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    .line 378
    invoke-static {p1, v1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 380
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 381
    new-array p2, v0, [S

    .line 382
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    return-object p2
.end method


# virtual methods
.method public exit()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isExit:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 117
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isEncoderStart:Z

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->initAudioRecord()V

    .line 119
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->initMediaCodec()V

    .line 125
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->isExit:Z

    if-nez v0, :cond_1

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 128
    iget-object v1, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    const/16 v3, 0x780

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->encodeBytes([BI)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->stopMediaCodec()V

    .line 139
    invoke-direct {p0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->stopAudioRecord()V

    return-void
.end method

.method public setOnAACEncodeResultListener(Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->listener:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;

    return-void
.end method

.method public declared-synchronized setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->mMuxerRef:Ljava/lang/ref/WeakReference;

    .line 108
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->newFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->addTrack(Landroid/media/MediaFormat;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
