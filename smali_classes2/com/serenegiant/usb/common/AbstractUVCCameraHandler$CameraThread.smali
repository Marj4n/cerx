.class public final Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;
.super Ljava/lang/Thread;
.source "AbstractUVCCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraThread"
.end annotation


# static fields
.field private static final TAG_THREAD:Ljava/lang/String; = "CameraThread"


# instance fields
.field private isPushing:Z

.field private isSupportOverlay:Z

.field private mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

.field private mBandwidthFactor:F

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncoderType:I

.field private mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

.field private mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

.field private final mHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

.field private mIsPreviewing:Z

.field private mIsRecording:Z

.field private final mMediaEncoderListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

.field private mPreviewMode:I

.field private final mSync:Ljava/lang/Object;

.field private mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

.field private mVideoEncoder:Lcom/serenegiant/usb/encoder/MediaVideoBufferEncoder;

.field private final mWeakCameraView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/widget/CameraViewInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private picPath:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/serenegiant/usb/widget/CameraViewInterface;",
            "IIIIF)V"
        }
    .end annotation

    const-string v0, "CameraThread"

    .line 448
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    .line 410
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    .line 823
    new-instance v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

    .line 941
    new-instance v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMediaEncoderListener:Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;

    .line 449
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandlerClass:Ljava/lang/Class;

    .line 450
    iput p4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mEncoderType:I

    .line 451
    iput p5, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    .line 452
    iput p6, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    .line 453
    iput p7, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mPreviewMode:I

    .line 454
    iput p8, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    .line 455
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    .line 456
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/Object;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/util/Set;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Z)Z
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Ljava/lang/String;[B)V
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->saveYuv2Jpeg(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isSupportOverlay:Z

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)I
    .locals 0

    .line 403
    iget p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)I
    .locals 0

    .line 403
    iget p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    return p0
.end method

.method private callOnClose()V
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1098
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1100
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1101
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnError(Ljava/lang/Exception;)V
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1153
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1156
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnOpen()V
    .locals 4

    .line 1085
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1087
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onOpen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1089
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1090
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStartPreview()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1109
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStartPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1111
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1112
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStartRecording()V
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1131
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStartRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1133
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1134
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStopPreview()V
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1120
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1122
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1123
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStopRecording()V
    .locals 4

    .line 1140
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 1142
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1144
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 1145
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveYuv2Jpeg(Ljava/lang/String;[B)V
    .locals 7

    .line 864
    new-instance v6, Landroid/graphics/YuvImage;

    iget v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 865
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p2, p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 866
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    invoke-virtual {v6, p2, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 869
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 870
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 873
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 875
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 876
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 880
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 878
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 882
    :goto_0
    sget-object p2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    if-eqz p2, :cond_0

    .line 883
    sget-object p2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    invoke-interface {p2, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;->onCaptureResult(Ljava/lang/String;)V

    .line 887
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 889
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private startAudioRecord()V
    .locals 2

    .line 780
    new-instance v0, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    invoke-direct {v0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    .line 781
    new-instance v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$2;

    invoke-direct {v1, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$2;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->setOnAACEncodeResultListener(Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;)V

    .line 789
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->start()V

    .line 791
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v0, :cond_0

    .line 792
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {v1, v0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V

    :cond_0
    return-void
.end method

.method private startVideoRecord()V
    .locals 3

    .line 744
    new-instance v0, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;-><init>(II)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    .line 745
    new-instance v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;

    invoke-direct {v1, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->setOnH264EncodeResultListener(Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer$OnH264EncodeResultListener;)V

    .line 753
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->start()V

    .line 755
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {v1, v0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V

    :cond_0
    return-void
.end method

.method private stopAudioRecord()V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->exit()V

    .line 801
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;->setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    .line 804
    iput-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mAacConsumer:Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 807
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private stopVideoRecord()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->exit()V

    .line 765
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->setTmpuMuxer(Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;)V

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    .line 768
    iput-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 771
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 774
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "CameraThread#finalize"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHandler()Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "getHandler:"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 471
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 474
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getHeight()I
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 487
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSizeList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleCameraFoucs()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "handleStartPreview:"

    .line 928
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 931
    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setAutoFocus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleCaptureStill(Ljava/lang/String;)V
    .locals 5

    const-string v0, "CameraThread"

    const-string v1, "handleCaptureStill:"

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/serenegiant/usb/widget/CameraViewInterface;->captureStillImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const-string v2, ".jpg"

    .line 619
    invoke-static {v1, v2}, Lcom/serenegiant/usb/encoder/MediaMuxerWrapper;->getCaptureFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    :goto_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 625
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 626
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v4, 0x7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 630
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 631
    throw p1

    .line 630
    :catch_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 632
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    if-eqz v0, :cond_2

    .line 633
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;->onCaptureResult(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 636
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public handleClose()V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "handleClose:"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStopPusher()V

    .line 539
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v2, 0x0

    .line 541
    iput-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    .line 545
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->destroy()V

    .line 546
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnClose()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 542
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleOpen(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "handleOpen:"

    .line 519
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleClose()V

    .line 522
    :try_start_0
    new-instance v0, Lcom/serenegiant/usb/UVCCamera;

    invoke-direct {v0}, Lcom/serenegiant/usb/UVCCamera;-><init>()V

    .line 523
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 524
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :try_start_1
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    .line 526
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnOpen()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 526
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 529
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :goto_0
    const-string p1, "AbsUVCCameraHandler"

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportedSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleRelease()V
    .locals 3

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRelease:mIsRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraThread"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleClose()V

    .line 918
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 919
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$902(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;Z)Z

    .line 921
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    const-string v0, "handleRelease:finished"

    .line 923
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleStartPreview(Ljava/lang/Object;)V
    .locals 10

    const-string v0, "CameraThread"

    const-string v1, "handleStartPreview:"

    .line 551
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x4

    .line 554
    :try_start_0
    iget v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v5, 0x1

    const/16 v6, 0x1f

    iget v7, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mPreviewMode:I

    iget v8, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    invoke-virtual/range {v2 .. v8}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    .line 558
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

    invoke-virtual {v1, v2, v0}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    .line 559
    sget-object v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    sget-object v2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    invoke-virtual {v1, v2}, Lcom/serenegiant/usb/UVCCamera;->setButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v5, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v6, 0x1

    const/16 v7, 0x1f

    const/4 v8, 0x0

    iget v9, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    invoke-virtual/range {v3 .. v9}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    .line 566
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

    invoke-virtual {v1, v2, v0}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    .line 567
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    sget-object v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    :cond_1
    :goto_0
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 578
    :cond_2
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_1

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 583
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {p1}, Lcom/serenegiant/usb/UVCCamera;->startPreview()V

    .line 584
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {p1}, Lcom/serenegiant/usb/UVCCamera;->updateCameraParams()V

    .line 585
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 586
    :try_start_2
    iput-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    .line 587
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStartPreview()V

    return-void

    :catchall_0
    move-exception v0

    .line 587
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception p1

    .line 571
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public handleStartPusher(Lcom/serenegiant/usb/encoder/RecordParams;)V
    .locals 5

    .line 686
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 693
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->isSupportOverlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isSupportOverlay:Z

    if-eqz v0, :cond_1

    .line 696
    invoke-static {}, Lorg/easydarwin/sw/TxtOverlay;->getInstance()Lorg/easydarwin/sw/TxtOverlay;

    move-result-object v0

    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/easydarwin/sw/TxtOverlay;->init(II)V

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->getRecordPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->videoPath:Ljava/lang/String;

    .line 699
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 703
    :cond_2
    new-instance v0, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->getRecordDuration()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->isVoiceClose()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;-><init>(Ljava/lang/String;JZ)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    .line 707
    :cond_3
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->startVideoRecord()V

    if-eqz p1, :cond_4

    .line 709
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->isVoiceClose()Z

    move-result p1

    if-nez p1, :cond_4

    .line 710
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->startAudioRecord()V

    .line 712
    :cond_4
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStartRecording()V

    :cond_5
    :goto_0
    return-void
.end method

.method public handleStillPicture(Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    return-void
.end method

.method public handleStopPreview()V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "handleStopPreview:"

    .line 592
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    .line 596
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    .line 600
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStopPreview()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 601
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "handleStopPreview:finished"

    .line 604
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleStopPusher()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;->release()V

    .line 720
    iput-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mMuxer:Lcom/serenegiant/usb/encoder/biz/Mp4MediaMuxer;

    const-string v0, "AbsUVCCameraHandler"

    const-string v2, "AbsUVCCameraHandler---->\u505c\u6b62\u672c\u5730\u5f55\u5236"

    .line 721
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->stopAudioRecord()V

    .line 725
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->stopVideoRecord()V

    .line 726
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isSupportOverlay:Z

    if-eqz v0, :cond_1

    .line 727
    invoke-static {}, Lorg/easydarwin/sw/TxtOverlay;->getInstance()Lorg/easydarwin/sw/TxtOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/easydarwin/sw/TxtOverlay;->release()V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/widget/CameraViewInterface;

    invoke-interface {v0, v1}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V

    .line 734
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStopRecording()V

    .line 736
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;->onRecordResult(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handleUpdateMedia(Ljava/lang/String;)V
    .locals 6

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateMedia:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraThread"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 897
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$900(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "AbsUVCCameraHandler"

    if-eqz v0, :cond_3

    .line 898
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_0
    const-string v5, "MediaScannerConnection#scanFile"

    .line 900
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 p1, 0x0

    invoke-static {v5, v3, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "handleUpdateMedia:"

    .line 903
    invoke-static {v4, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v1, :cond_2

    .line 905
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 906
    :cond_2
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V

    goto :goto_3

    :cond_3
    const-string p1, "MainActivity already destroyed"

    .line 908
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V

    :cond_4
    :goto_3
    return-void
.end method

.method public isCameraOpened()Z
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEqual(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPreviewing()Z
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRecording()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mH264Consumer:Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .line 1049
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1052
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandlerClass:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v5

    .line 1053
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 1061
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 1059
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 1057
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 1055
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 1064
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1065
    :try_start_1
    iput-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    .line 1066
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1067
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1073
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    if-eqz v2, :cond_0

    .line 1074
    invoke-static {v2, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$902(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1067
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1077
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1078
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1079
    :try_start_3
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    .line 1080
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1081
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
