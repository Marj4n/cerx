.class public Lcom/serenegiant/media/MediaReaper$AudioReaper;
.super Lcom/serenegiant/media/MediaReaper;
.source "MediaReaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaReaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioReaper"
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"


# instance fields
.field private final mChannelCount:I

.field private final mSampleRate:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/serenegiant/media/MediaReaper$ReaperListener;II)V
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/MediaReaper;-><init>(ILandroid/media/MediaCodec;Lcom/serenegiant/media/MediaReaper$ReaperListener;)V

    .line 112
    iput p3, p0, Lcom/serenegiant/media/MediaReaper$AudioReaper;->mSampleRate:I

    .line 113
    iput p4, p0, Lcom/serenegiant/media/MediaReaper$AudioReaper;->mChannelCount:I

    return-void
.end method


# virtual methods
.method protected createOutputFormat([BIIII)Landroid/media/MediaFormat;
    .locals 0

    .line 125
    iget p3, p0, Lcom/serenegiant/media/MediaReaper$AudioReaper;->mSampleRate:I

    iget p4, p0, Lcom/serenegiant/media/MediaReaper$AudioReaper;->mChannelCount:I

    const-string p5, "audio/mp4a-latm"

    invoke-static {p5, p3, p4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    .line 126
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    const/4 p5, 0x0

    .line 127
    invoke-virtual {p4, p1, p5, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "csd-0"

    .line 129
    invoke-virtual {p3, p1, p4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-object p3
.end method
