.class public Lcom/serenegiant/media/AudioEncoder;
.super Lcom/serenegiant/media/AbstractEncoder;
.source "AudioEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/IAudioEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/AudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAudioSource:I

.field private mAudioThread:Lcom/serenegiant/media/AudioEncoder$AudioThread;

.field protected final mChannelCount:I

.field protected final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/serenegiant/media/AudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/AudioEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;II)V
    .locals 1

    const-string v0, "audio/mp4a-latm"

    .line 51
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/serenegiant/media/AudioEncoder;->mAudioThread:Lcom/serenegiant/media/AudioEncoder$AudioThread;

    .line 53
    iput p3, p0, Lcom/serenegiant/media/AudioEncoder;->mAudioSource:I

    const p1, 0xac44

    .line 54
    iput p1, p0, Lcom/serenegiant/media/AudioEncoder;->mSampleRate:I

    .line 55
    iput p4, p0, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    if-ltz p3, :cond_0

    const/4 p1, 0x7

    if-gt p3, p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid audio source:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/serenegiant/media/AudioEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createOutputFormat([BIIII)Landroid/media/MediaFormat;
    .locals 0

    .line 239
    iget-object p3, p0, Lcom/serenegiant/media/AudioEncoder;->MIME_TYPE:Ljava/lang/String;

    iget p4, p0, Lcom/serenegiant/media/AudioEncoder;->mSampleRate:I

    iget p5, p0, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    invoke-static {p3, p4, p5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    .line 241
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    const/4 p5, 0x0

    .line 242
    invoke-virtual {p4, p1, p5, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "csd-0"

    .line 244
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

    .line 64
    iput v0, p0, Lcom/serenegiant/media/AudioEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/serenegiant/media/AudioEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/serenegiant/media/AudioEncoder;->mRecorderStarted:Z

    .line 68
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder;->MIME_TYPE:Ljava/lang/String;

    invoke-static {v1}, Lcom/serenegiant/media/MediaCodecHelper;->selectAudioEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder;->MIME_TYPE:Ljava/lang/String;

    iget v3, p0, Lcom/serenegiant/media/AudioEncoder;->mSampleRate:I

    iget v4, p0, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    invoke-static {v1, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "aac-profile"

    .line 76
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 77
    iget v3, p0, Lcom/serenegiant/media/AudioEncoder;->mChannelCount:I

    if-ne v3, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    :goto_0
    const-string v4, "channel-mask"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v3, 0xfa00

    const-string v4, "bitrate"

    .line 79
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-count"

    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoder;->MIME_TYPE:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/serenegiant/media/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 86
    iget-object v3, p0, Lcom/serenegiant/media/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 87
    iget-object v1, p0, Lcom/serenegiant/media/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    return v0
.end method

.method public isAudio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoder;->mAudioThread:Lcom/serenegiant/media/AudioEncoder$AudioThread;

    .line 106
    invoke-super {p0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/serenegiant/media/AbstractEncoder;->start()V

    .line 95
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoder;->mAudioThread:Lcom/serenegiant/media/AudioEncoder$AudioThread;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/serenegiant/media/AudioEncoder$AudioThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AudioEncoder$AudioThread;-><init>(Lcom/serenegiant/media/AudioEncoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoder;->mAudioThread:Lcom/serenegiant/media/AudioEncoder$AudioThread;

    .line 98
    invoke-virtual {v0}, Lcom/serenegiant/media/AudioEncoder$AudioThread;->start()V

    :cond_0
    return-void
.end method
