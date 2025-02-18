.class public Lcom/serenegiant/media/FakeVideoEncoder;
.super Lcom/serenegiant/media/AbstractFakeEncoder;
.source "FakeVideoEncoder.java"

# interfaces
.implements Lcom/serenegiant/media/IVideoEncoder;


# static fields
.field public static final MIME_AVC:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/serenegiant/media/FakeVideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/FakeVideoEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 1

    const-string v0, "video/avc"

    .line 48
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;I)V
    .locals 1

    const-string v0, "video/avc"

    .line 61
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;I)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V
    .locals 7

    const-string v1, "video/avc"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 77
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V
    .locals 0

    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/media/AbstractFakeEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;III)V

    return-void
.end method


# virtual methods
.method protected createOutputFormat(Ljava/lang/String;[BIIII)Landroid/media/MediaFormat;
    .locals 3

    if-ltz p4, :cond_2

    .line 145
    iget v0, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mWidth:I

    iget v1, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mHeight:I

    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    sub-int v0, p5, p4

    .line 146
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 147
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p2, p4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string v0, "csd-0"

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    if-le p5, p4, :cond_1

    if-le p6, p5, :cond_0

    sub-int/2addr p6, p5

    goto :goto_0

    :cond_0
    sub-int p6, p3, p5

    .line 154
    :goto_0
    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 155
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 156
    invoke-virtual {p3, p2, p5, p6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p2, "csd-1"

    .line 158
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    return-object p1

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unexpected csd data came."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mWidth:I

    return v0
.end method

.method public isAudio()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setVideoSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 173
    iput p1, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mWidth:I

    .line 174
    iput p2, p0, Lcom/serenegiant/media/FakeVideoEncoder;->mHeight:I

    return-void
.end method
