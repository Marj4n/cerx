.class public Lcom/jieli/stream/dv/running2/data/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;
    }
.end annotation


# static fields
.field private static volatile isReady:Z = true


# instance fields
.field private height:I

.field private mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

.field private mHandler:Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

.field private mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

.field private final mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field private mRetryTime:I

.field private final tag:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 31
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    .line 172
    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 42
    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    invoke-direct {v1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture$1;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mHandler:Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mHandler:Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 28
    sput-boolean p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    return p0
.end method


# virtual methods
.method public capture([B)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getVideoType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 67
    sget-boolean v0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    sput-boolean v1, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    const-string v0, "MergeCamera"

    const-string v1, "Media"

    const-string v2, "Photo"

    const-string v3, "Screen"

    .line 70
    invoke-static {v0, v1, v2, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 74
    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->width:I

    iget v2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->height:I

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->saveFile(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFrameType([B)I

    move-result v0

    const v2, 0xa1a1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    .line 82
    iput v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 84
    invoke-interface {v0, v2}, Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;->onCompleted(Ljava/lang/String;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-nez v0, :cond_4

    .line 87
    new-instance v0, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v0}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 88
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    invoke-virtual {v0, v4}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 90
    :cond_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 91
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 93
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {v4, p1, v1, v0, v2}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG([BIILjava/lang/String;)Z

    goto :goto_0

    .line 95
    :cond_5
    iget p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_6

    .line 97
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    if-eqz p1, :cond_6

    .line 98
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mHandler:Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoCapture$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$1;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 104
    iput v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    :cond_6
    :goto_0
    return-void
.end method

.method public capture([BLjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getVideoType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 115
    sget-boolean v0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    if-nez v0, :cond_1

    return-void

    .line 116
    :cond_1
    sput-boolean v2, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    const-string v0, "MergeCamera"

    const-string v2, "Media"

    const-string v3, "Video"

    const-string v4, "thumbnails"

    .line 118
    invoke-static {v0, v2, v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 122
    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    .line 123
    sput-boolean v1, Lcom/jieli/stream/dv/running2/data/VideoCapture;->isReady:Z

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFrameType([B)I

    move-result p2

    const v0, 0xa1a1

    if-ne p2, v0, :cond_5

    .line 128
    iput v2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    .line 129
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 130
    invoke-interface {p2, v0}, Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;->onCompleted(Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-nez p2, :cond_4

    .line 133
    new-instance p2, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {p2}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 134
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    invoke-virtual {p2, v3}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 136
    :cond_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result p2

    .line 137
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object p2

    .line 139
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    aget v2, p2, v2

    aget p2, p2, v1

    invoke-virtual {v3, p1, v2, p2, v0}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG([BIILjava/lang/String;)Z

    goto :goto_0

    .line 141
    :cond_5
    iget p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    const/16 p2, 0x1e

    if-le p1, p2, :cond_6

    .line 143
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    if-eqz p1, :cond_6

    .line 144
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mHandler:Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    new-instance p2, Lcom/jieli/stream/dv/running2/data/VideoCapture$2;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$2;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;)V

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    iput v2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mRetryTime:I

    :cond_6
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 163
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 164
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    return-void
.end method

.method public saveFile(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 203
    new-instance v6, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-static {v6, p2, p3, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeByIoWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->height:I

    return-void
.end method

.method public setOnCaptureListener(Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->mOnCaptureListener:Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture;->width:I

    return-void
.end method
