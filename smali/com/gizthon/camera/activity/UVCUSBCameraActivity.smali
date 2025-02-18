.class public Lcom/gizthon/camera/activity/UVCUSBCameraActivity;
.super Lcom/gizthon/camera/activity/CameraBaseActivity;
.source "UVCUSBCameraActivity.java"


# instance fields
.field private adapter:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

.field private binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

.field protected handler:Landroid/os/Handler;

.field private mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

.field private position:I

.field private startTime:J

.field protected updateTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->handler:Landroid/os/Handler;

    .line 346
    new-instance v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    iput-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->updateTimer:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getResolutionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/adapter/ResolutionListAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->adapter:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/jiangdg/usbcamera/UVCCameraHelper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->showShortMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->showVideoUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->hideVideoUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->position:I

    return p0
.end method

.method static synthetic access$800(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->startTime:J

    return-wide v0
.end method

.method private connectService()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->initDevice(Landroid/app/Activity;)V

    .line 229
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$12;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$12;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V

    .line 238
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v1}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 239
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v1, v1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->setCameraView(Lcom/serenegiant/usb/widget/UVCCameraTextureView;)V

    .line 240
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->setListener(Lcom/gizthon/camera/core/OnCameraConnectedListener;)V

    .line 280
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->connectDevice()V

    .line 281
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->onStart()V

    .line 282
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->getCameraHelper()Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    return-void
.end method

.method private getResolutionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 364
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/usb/Size;

    if-eqz v3, :cond_1

    .line 366
    iget v4, v3, Lcom/serenegiant/usb/Size;->width:I

    const/16 v5, 0x280

    if-ne v4, v5, :cond_0

    .line 367
    iput v2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->position:I

    .line 369
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/serenegiant/usb/Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/serenegiant/usb/Size;->height:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method private hideVideoUI()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivRecord:Landroid/widget/ImageView;

    const v1, 0x7f0e00db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->tvRecordTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->tvRecordTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showShortMsg(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showVideoUI()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivRecord:Landroid/widget/ImageView;

    const v1, 0x7f0e00dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->tvRecordTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->startTime:J

    .line 334
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->updateTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method initDate()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivResolution:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llResolution:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$2;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$2;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomIn:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$3;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$3;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomOut:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$4;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$4;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomFocus:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivRecord:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivPicture:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$7;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$7;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->takePhoto:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$8;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$8;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$9;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$9;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->rcResolution:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 171
    new-instance v0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->adapter:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    .line 172
    new-instance v1, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$10;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->setOnClickItem(Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;)V

    .line 186
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->rcResolution:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->adapter:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onClickGallery()V
    .locals 0

    .line 289
    invoke-static {p0}, Lcom/gizthon/camera/activity/GalleryListActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onClickTakePhoto()V
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiangdg/usbcamera/UVCCameraHelper;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MergeCamera/Media/Photo/Screen/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    new-instance v2, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->capturePicture(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00fb

    .line 55
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->binding:Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    .line 56
    invoke-virtual {p1, p0}, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->setEventHandler(Lcom/gizthon/camera/activity/CameraBaseActivity;)V

    .line 57
    invoke-direct {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->connectService()V

    const-string p1, "#4A4A4A"

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->setColorNoTranslucent(Landroid/app/Activity;I)V

    .line 59
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->initDate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 294
    invoke-super {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onDestroy()V

    .line 295
    invoke-static {}, Lcom/jiangdg/usbcamera/utils/FileUtils;->releaseFile()V

    .line 297
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->destroyDevice()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onResume()V

    return-void
.end method

.method refresh(Ljava/lang/String;)V
    .locals 2

    .line 380
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public zoom(ZLandroid/view/View;)V
    .locals 3

    .line 307
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 308
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    .line 313
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 314
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40800000    # 4.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    .line 319
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 320
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method
