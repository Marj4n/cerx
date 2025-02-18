.class public abstract Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.super Landroid/os/Handler;
.source "AbstractUVCCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;,
        Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;,
        Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;,
        Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;,
        Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_CAMERA_FOUCS:I = 0xa

.field private static final MSG_CAPTURE_START:I = 0x5

.field private static final MSG_CAPTURE_STILL:I = 0x4

.field private static final MSG_CAPTURE_STOP:I = 0x6

.field private static final MSG_CLOSE:I = 0x1

.field private static final MSG_MEDIA_UPDATE:I = 0x7

.field private static final MSG_OPEN:I = 0x0

.field private static final MSG_PREVIEW_START:I = 0x2

.field private static final MSG_PREVIEW_STOP:I = 0x3

.field private static final MSG_RELEASE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AbsUVCCameraHandler"

.field public static iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

.field protected static isCaptureStill:Z

.field public static mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

.field public static mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

.field public static mPreviewListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;


# instance fields
.field private volatile mReleased:Z

.field private final mWeakThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$900(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mReleased:Z

    return p0
.end method

.method static synthetic access$902(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mReleased:Z

    return p1
.end method


# virtual methods
.method public addCallback(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 287
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mReleased:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V
    .locals 0

    .line 242
    sput-object p2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    .line 243
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    const/4 p2, 0x4

    .line 244
    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    .line 245
    sput-boolean p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCaptureStill:Z

    return-void
.end method

.method protected checkReleased()V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSupportFlag(J)Z
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 310
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 311
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/usb/UVCCamera;->checkSupportFlag(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 2

    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "close:"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->stopPreview()V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {p0, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendEmptyMessage(I)Z

    :cond_0
    const-string v1, "close:finished"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getSupportedSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)I
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 316
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 317
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v1, -0x7fffffff

    if-ne p1, v1, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getBrightness()I

    move-result p1

    return p1

    :cond_1
    const v1, -0x7ffffffe

    if-ne p1, v1, :cond_2

    .line 322
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getContrast()I

    move-result p1

    return p1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getWidth()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 399
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message:what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_1
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleCameraFoucs()V

    goto :goto_0

    .line 392
    :pswitch_2
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V

    goto :goto_0

    .line 389
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleUpdateMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_4
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStopPusher()V

    goto :goto_0

    .line 383
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/serenegiant/usb/encoder/RecordParams;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStartPusher(Lcom/serenegiant/usb/encoder/RecordParams;)V

    goto :goto_0

    .line 379
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStillPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_7
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStopPreview()V

    goto :goto_0

    .line 372
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleStartPreview(Ljava/lang/Object;)V

    goto :goto_0

    .line 369
    :pswitch_9
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleClose()V

    goto :goto_0

    .line 366
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleOpen(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected isCameraThread()Z
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEqual(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isEqual(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOpened()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isReleased()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    .line 168
    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mReleased:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mReleased:Z

    .line 280
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->close()V

    const/16 v0, 0x9

    .line 281
    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeCallback(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetValue(I)I
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 346
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v1, -0x7fffffff

    if-ne p1, v1, :cond_1

    .line 350
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->resetBrightness()V

    .line 351
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getBrightness()I

    move-result p1

    return p1

    :cond_1
    const v1, -0x7ffffffe

    if-ne p1, v1, :cond_2

    .line 353
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->resetContrast()V

    .line 354
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getContrast()I

    move-result p1

    return p1

    .line 357
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public resize(II)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 194
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "does not support now"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    .locals 0

    .line 212
    sput-object p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    return-void
.end method

.method public setOnPreViewResultListener(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V
    .locals 0

    .line 208
    sput-object p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mPreviewListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;

    return-void
.end method

.method public setValue(II)I
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 330
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-eqz v0, :cond_0

    .line 331
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v1, -0x7fffffff

    if-ne p1, v1, :cond_1

    .line 334
    invoke-virtual {v0, p2}, Lcom/serenegiant/usb/UVCCamera;->setBrightness(I)V

    .line 335
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getBrightness()I

    move-result p1

    return p1

    :cond_1
    const v1, -0x7ffffffe

    if-ne p1, v1, :cond_2

    .line 337
    invoke-virtual {v0, p2}, Lcom/serenegiant/usb/UVCCamera;->setContrast(I)V

    .line 338
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getContrast()I

    move-result p1

    return p1

    .line 341
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public startCameraFoucs()V
    .locals 1

    const/16 v0, 0xa

    .line 261
    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startPreview(Ljava/lang/Object;)V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    .line 200
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface should be one of SurfaceHolder, Surface or SurfaceTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 204
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startRecording(Lcom/serenegiant/usb/encoder/RecordParams;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V
    .locals 0

    .line 250
    sput-object p2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    .line 251
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->checkReleased()V

    const/4 p2, 0x5

    .line 252
    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopPreview()V
    .locals 3

    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "stopPreview:"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 218
    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->removeMessages(I)V

    .line 219
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->stopRecording()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mWeakThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    if-nez v0, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$000(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x3

    .line 226
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendEmptyMessage(I)Z

    .line 227
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCameraThread()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 232
    :try_start_1
    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$000(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_0
    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "stopPreview:finished"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x6

    .line 257
    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updateMedia(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 305
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
