.class public abstract Lcom/serenegiant/media/AbstractAudioEncoder;
.super Lcom/serenegiant/media/AbstractEncoder;
.source "AbstractAudioEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/IAudioEncoder;


# static fields
.field public static final DEFAULT_BIT_RATE:I = 0xfa00

.field public static final DEFAULT_SAMPLE_RATE:I = 0xac44

.field public static final FRAMES_PER_BUFFER:I = 0x19

.field public static final SAMPLES_PER_FRAME:I = 0x400


# instance fields
.field protected mAudioSource:I

.field protected mBitRate:I

.field protected mChannelCount:I

.field protected mSampleRate:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;II)V
    .locals 7

    const v5, 0xac44

    const v6, 0xfa00

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/media/AbstractAudioEncoder;-><init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;IIII)V
    .locals 1

    const-string v0, "audio/mp4a-latm"

    .line 58
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    .line 60
    iput p3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mAudioSource:I

    .line 61
    iput p4, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mChannelCount:I

    .line 62
    iput p5, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mSampleRate:I

    .line 63
    iput p6, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mBitRate:I

    return-void
.end method


# virtual methods
.method protected createOutputFormat([BIIII)Landroid/media/MediaFormat;
    .locals 0

    .line 111
    iget-object p3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->MIME_TYPE:Ljava/lang/String;

    iget p4, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mSampleRate:I

    iget p5, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mChannelCount:I

    invoke-static {p3, p4, p5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    .line 113
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    const/4 p5, 0x0

    .line 114
    invoke-virtual {p4, p1, p5, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "csd-0"

    .line 116
    invoke-virtual {p3, p1, p4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-object p3
.end method

.method protected internalPrepare()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mRecorderStarted:Z

    .line 73
    iget-object v1, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->MIME_TYPE:Ljava/lang/String;

    invoke-static {v1}, Lcom/serenegiant/media/MediaCodecHelper;->selectAudioEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->MIME_TYPE:Ljava/lang/String;

    iget v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mSampleRate:I

    iget v4, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mChannelCount:I

    invoke-static {v1, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "aac-profile"

    .line 81
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    iget v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mChannelCount:I

    if-ne v3, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    :goto_0
    const-string v4, "channel-mask"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    iget v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mBitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    iget v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mChannelCount:I

    const-string v4, "channel-count"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    iget-object v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->MIME_TYPE:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 91
    iget-object v3, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 92
    iget-object v1, p0, Lcom/serenegiant/media/AbstractAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    return v0
.end method

.method public final isAudio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
