.class public Lcom/serenegiant/media/MediaReaper$VideoReaper;
.super Lcom/serenegiant/media/MediaReaper;
.source "MediaReaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaReaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoReaper"
.end annotation


# static fields
.field public static final MIME_AVC:Ljava/lang/String; = "video/avc"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/serenegiant/media/MediaReaper$ReaperListener;II)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/MediaReaper;-><init>(ILandroid/media/MediaCodec;Lcom/serenegiant/media/MediaReaper$ReaperListener;)V

    .line 70
    iput p3, p0, Lcom/serenegiant/media/MediaReaper$VideoReaper;->mWidth:I

    .line 71
    iput p4, p0, Lcom/serenegiant/media/MediaReaper$VideoReaper;->mHeight:I

    return-void
.end method


# virtual methods
.method protected createOutputFormat([BIIII)Landroid/media/MediaFormat;
    .locals 4

    if-ltz p3, :cond_2

    .line 81
    iget v0, p0, Lcom/serenegiant/media/MediaReaper$VideoReaper;->mWidth:I

    iget v1, p0, Lcom/serenegiant/media/MediaReaper$VideoReaper;->mHeight:I

    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    sub-int v1, p4, p3

    .line 82
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 84
    invoke-virtual {v2, p1, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string v1, "csd-0"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    if-le p4, p3, :cond_1

    if-le p5, p4, :cond_0

    sub-int/2addr p5, p4

    goto :goto_0

    :cond_0
    sub-int p5, p2, p4

    .line 89
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 90
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 91
    invoke-virtual {p2, p1, p4, p5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "csd-1"

    .line 93
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    return-object v0

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unexpected csd data came."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
