.class public Lcom/jiangdg/usbcamera/UVCCameraHelper;
.super Ljava/lang/Object;
.source "UVCCameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;
    }
.end annotation


# static fields
.field public static final FRAME_FORMAT_MJPEG:I = 0x1

.field public static final FRAME_FORMAT_YUYV:I = 0x0

.field public static final MODE_BRIGHTNESS:I = -0x7fffffff

.field public static final MODE_CONTRAST:I = -0x7ffffffe

.field public static final ROOT_PATH:Ljava/lang/String;

.field public static final SUFFIX_JPEG:Ljava/lang/String; = ".jpg"

.field public static final SUFFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final TAG:Ljava/lang/String; = "UVCCameraHelper"

.field private static mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

.field private mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

.field private mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

.field private mFrameFormat:I

.field private mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

.field private previewHeight:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 40
    iput v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    const/16 v0, 0x1e0

    .line 41
    iput v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mFrameFormat:I

    return-void
.end method

.method static synthetic access$002(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->openCamera(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiangdg/usbcamera/UVCCameraHelper;)Lcom/serenegiant/usb/widget/CameraViewInterface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    return-object p0
.end method

.method public static getInstance()Lcom/jiangdg/usbcamera/UVCCameraHelper;
    .locals 1

    .line 65
    sget-object v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-direct {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;-><init>()V

    sput-object v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    .line 68
    :cond_0
    sget-object v0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    return-object v0
.end method

.method private openCamera(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public capturePicture(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/usb/common/UVCCameraHandler;->captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V

    :cond_1
    return-void
.end method

.method public checkSupportFlag(I)Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/usb/common/UVCCameraHandler;->checkSupportFlag(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeCamera()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->close()V

    :cond_0
    return-void
.end method

.method public createUVCCamera()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->release()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget v1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setAspectRatio(D)V

    .line 163
    iget-object v3, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    const/4 v5, 0x2

    iget v6, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    iget v7, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    iget v8, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mFrameFormat:I

    invoke-static/range {v3 .. v8}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIII)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    return-void

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CameraViewInterface cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModelValue(I)I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->getValue(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

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

    .line 347
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    return-object v0
.end method

.method public getUsbDeviceCount()I
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getUsbDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mActivity:Landroid/app/Activity;

    .line 247
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/jiangdg/libusbcamera/R$xml;->device_filter:I

    invoke-static {v0, v1}, Lcom/serenegiant/usb/DeviceFilter;->getDeviceFilters(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v1, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initUSBMonitor(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    .line 91
    new-instance p2, Lcom/serenegiant/usb/USBMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;

    invoke-direct {v0, p0, p3}, Lcom/jiangdg/usbcamera/UVCCameraHelper$1;-><init>(Lcom/jiangdg/usbcamera/UVCCameraHelper;Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;)V

    invoke-direct {p2, p1, v0}, Lcom/serenegiant/usb/USBMonitor;-><init>(Landroid/content/Context;Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;)V

    iput-object p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    .line 149
    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->createUVCCamera()V

    return-void
.end method

.method public isCameraOpened()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->isOpened()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPushing()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->isRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerUSB()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->register()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->release()V

    .line 303
    iput-object v1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->destroy()V

    .line 307
    iput-object v1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    :cond_1
    return-void
.end method

.method public requestPermission(I)V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getUsbDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index illegal,should be < devList.size()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getUsbDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/USBMonitor;->requestPermission(Landroid/hardware/usb/UsbDevice;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public resetModelValue(I)I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->resetValue(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDefaultFrameFormat(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_0

    .line 364
    iput p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mFrameFormat:I

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultFrameFormat should be call before initMonitor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultPreviewSize(II)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_0

    .line 356
    iput p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    .line 357
    iput p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    return-void

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setDefaultPreviewSize should be call before initMonitor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V

    :cond_0
    return-void
.end method

.method public setModelValue(II)I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/usb/common/UVCCameraHandler;->setValue(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOnPreviewFrameListener(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->setOnPreViewResultListener(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V

    :cond_0
    return-void
.end method

.method public startCameraFoucs()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->startCameraFoucs()V

    :cond_0
    return-void
.end method

.method public startPreview(Lcom/serenegiant/usb/widget/CameraViewInterface;)V
    .locals 1

    .line 328
    invoke-interface {p1}, Lcom/serenegiant/usb/widget/CameraViewInterface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->startPreview(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startPusher(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isPushing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->startRecording(Lcom/serenegiant/usb/encoder/RecordParams;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V

    :cond_0
    return-void
.end method

.method public startPusher(Lcom/serenegiant/usb/encoder/RecordParams;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isPushing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/RecordParams;->isSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/easydarwin/sw/TxtOverlay;->install(Landroid/content/Context;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/usb/common/UVCCameraHandler;->startRecording(Lcom/serenegiant/usb/encoder/RecordParams;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;)V

    :cond_1
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->stopPreview()V

    :cond_0
    return-void
.end method

.method public stopPusher()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isPushing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    invoke-virtual {v0}, Lcom/serenegiant/usb/common/UVCCameraHandler;->stopRecording()V

    :cond_0
    return-void
.end method

.method public unregisterUSB()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->unregister()V

    :cond_0
    return-void
.end method

.method public updateResolution(II)V
    .locals 8

    .line 168
    iget v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 171
    :cond_0
    iput p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    .line 172
    iput p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    .line 173
    iget-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->release()V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget p2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-interface {p1, v0, v1}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setAspectRatio(D)V

    .line 178
    iget-object v2, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCamView:Lcom/serenegiant/usb/widget/CameraViewInterface;

    const/4 v4, 0x2

    iget v5, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewWidth:I

    iget v6, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->previewHeight:I

    iget v7, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mFrameFormat:I

    invoke-static/range {v2 .. v7}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIII)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCameraHandler:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 180
    iget-object p1, p0, Lcom/jiangdg/usbcamera/UVCCameraHelper;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-direct {p0, p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->openCamera(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 181
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/jiangdg/usbcamera/UVCCameraHelper$2;

    invoke-direct {p2, p0}, Lcom/jiangdg/usbcamera/UVCCameraHelper$2;-><init>(Lcom/jiangdg/usbcamera/UVCCameraHelper;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
