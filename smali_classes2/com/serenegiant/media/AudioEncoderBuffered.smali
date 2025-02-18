.class public Lcom/serenegiant/media/AudioEncoderBuffered;
.super Lcom/serenegiant/media/AbstractAudioEncoder;
.source "AudioEncoderBuffered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;,
        Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MAX_POOL_SIZE:I

.field private final MAX_QUEUE_SIZE:I

.field protected final mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioThread:Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

.field private mBufferNum:I

.field protected mBufferSize:I

.field private mDequeueThread:Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;

.field protected final mPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/serenegiant/media/MediaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/serenegiant/media/AudioEncoderBuffered;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/AudioEncoderBuffered;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/media/AbstractAudioEncoder;-><init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;II)V

    const/16 p1, 0x64

    .line 38
    iput p1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->MAX_POOL_SIZE:I

    .line 39
    iput p1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->MAX_QUEUE_SIZE:I

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioThread:Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

    .line 42
    iput-object p2, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mDequeueThread:Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;

    const/16 p2, 0x400

    .line 46
    iput p2, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferSize:I

    .line 47
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferNum:I

    if-ltz p3, :cond_0

    const/4 p1, 0x7

    if-gt p3, p1, :cond_0

    return-void

    .line 56
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

.method static synthetic access$000(Lcom/serenegiant/media/AudioEncoderBuffered;)Lcom/serenegiant/media/MediaData;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/serenegiant/media/AudioEncoderBuffered;->obtain()Lcom/serenegiant/media/MediaData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/serenegiant/media/AudioEncoderBuffered;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private obtain()Lcom/serenegiant/media/MediaData;
    .locals 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/MediaData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 85
    iget v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferNum:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 86
    new-instance v0, Lcom/serenegiant/media/MediaData;

    iget v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferSize:I

    invoke-direct {v0, v1}, Lcom/serenegiant/media/MediaData;-><init>(I)V

    .line 87
    iget v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mBufferNum:I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 90
    iput v1, v0, Lcom/serenegiant/media/MediaData;->size:I

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected recycle(Lcom/serenegiant/media/MediaData;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/serenegiant/media/AbstractAudioEncoder;->start()V

    .line 62
    iget-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioThread:Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;-><init>(Lcom/serenegiant/media/AudioEncoderBuffered;)V

    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioThread:Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

    .line 65
    invoke-virtual {v0}, Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;->start()V

    .line 66
    new-instance v0, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;-><init>(Lcom/serenegiant/media/AudioEncoderBuffered;)V

    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mDequeueThread:Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;

    .line 67
    invoke-virtual {v0}, Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mAudioThread:Lcom/serenegiant/media/AudioEncoderBuffered$AudioThread;

    .line 74
    iput-object v0, p0, Lcom/serenegiant/media/AudioEncoderBuffered;->mDequeueThread:Lcom/serenegiant/media/AudioEncoderBuffered$DequeueThread;

    .line 75
    invoke-super {p0}, Lcom/serenegiant/media/AbstractAudioEncoder;->stop()V

    return-void
.end method
