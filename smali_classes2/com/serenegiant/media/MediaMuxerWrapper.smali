.class public Lcom/serenegiant/media/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"

# interfaces
.implements Lcom/serenegiant/media/IMuxer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mIsStarted:Z

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/serenegiant/media/MediaMuxerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mIsStarted:Z

    .line 89
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mReleased:Z

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/serenegiant/media/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mIsStarted:Z

    .line 82
    iget-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    :cond_0
    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mReleased:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/serenegiant/media/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method
