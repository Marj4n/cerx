.class public abstract Lcom/serenegiant/media/AbstractVideoEncoder;
.super Lcom/serenegiant/media/AbstractEncoder;
.source "AbstractVideoEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/IVideoEncoder;


# static fields
.field public static supportsAdaptiveStreaming:Z


# instance fields
.field protected mBitRate:I

.field protected mFramerate:I

.field protected mHeight:I

.field protected mIFrameIntervals:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    sput-boolean v0, Lcom/serenegiant/media/AbstractVideoEncoder;->supportsAdaptiveStreaming:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mBitRate:I

    .line 42
    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mFramerate:I

    .line 43
    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mIFrameIntervals:I

    return-void
.end method


# virtual methods
.method public adjustBitrate(I)V
    .locals 2

    .line 89
    sget-boolean v0, Lcom/serenegiant/media/AbstractVideoEncoder;->supportsAdaptiveStreaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-object p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected createOutputFormat([BIIII)Landroid/media/MediaFormat;
    .locals 4

    if-ltz p3, :cond_1

    .line 104
    iget-object v0, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->MIME_TYPE:Ljava/lang/String;

    iget v1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    iget v2, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    sub-int v1, p4, p3

    .line 105
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 106
    invoke-virtual {v2, p1, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string v1, "csd-0"

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    if-le p4, p3, :cond_0

    sub-int/2addr p2, p4

    add-int/2addr p2, p3

    .line 111
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 112
    invoke-virtual {p3, p1, p4, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "csd-1"

    .line 114
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-object v0

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unexpected csd data came."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    return v0
.end method

.method public final isAudio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setVideoConfig(III)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mBitRate:I

    .line 66
    iput p2, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mFramerate:I

    .line 67
    iput p3, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mIFrameIntervals:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    .line 60
    iput p2, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 61
    invoke-static {p1, p2}, Lcom/serenegiant/media/VideoConfig;->getBitrate(II)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mBitRate:I

    return-void
.end method
