.class public Lcom/serenegiant/usb/encoder/MediaAudioEncoder;
.super Lcom/serenegiant/usb/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"

# interfaces
.implements Lcom/serenegiant/usb/encoder/IAudioEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final BIT_RATE:I = 0xfa00

.field private static final DEBUG:Z = true

.field public static final FRAMES_PER_BUFFER:I = 0x19

.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final SAMPLES_PER_FRAME:I = 0x400

.field public static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "MediaAudioEncoder"


# instance fields
.field private mAudioThread:Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 105
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/encoder/MediaEncoder;-><init>(Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 39
    sget-object v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method

.method private static final selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    const-string v0, "MediaAudioEncoder"

    const-string v1, "selectAudioCodec:"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 216
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 220
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 221
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportedType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_3
    return-object v4
.end method


# virtual methods
.method protected prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MediaAudioEncoder"

    const-string v1, "prepare:"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mTrackIndex:I

    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mIsEOS:Z

    iput-boolean v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mMuxerStarted:Z

    const-string v2, "audio/mp4a-latm"

    .line 61
    invoke-static {v2}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "Unable to find an appropriate codec for audio/mp4a-latm"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected codec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0xac44

    const/4 v4, 0x1

    .line 68
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v5, 0x2

    const-string v6, "aac-profile"

    .line 69
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v5, 0x10

    const-string v6, "channel-mask"

    .line 70
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v5, 0xfa00

    const-string v6, "bitrate"

    .line 71
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "channel-count"

    .line 72
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 77
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 78
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    const-string v2, "prepare finishing"

    .line 79
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v2, :cond_1

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, p0}, Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 84
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;

    .line 102
    invoke-super {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->release()V

    return-void
.end method

.method protected startRecording()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/serenegiant/usb/encoder/MediaEncoder;->startRecording()V

    .line 93
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/serenegiant/usb/encoder/MediaAudioEncoder;Lcom/serenegiant/usb/encoder/MediaAudioEncoder$1;)V

    iput-object v0, p0, Lcom/serenegiant/usb/encoder/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;

    .line 95
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/MediaAudioEncoder$AudioThread;->start()V

    :cond_0
    return-void
.end method
