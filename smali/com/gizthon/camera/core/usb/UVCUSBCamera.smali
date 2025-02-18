.class public Lcom/gizthon/camera/core/usb/UVCUSBCamera;
.super Lcom/gizthon/camera/core/usb/USBCamera;
.source "UVCUSBCamera.java"

# interfaces
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;
.implements Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;


# instance fields
.field private REQUEST_CODE_REGISTER:I

.field private adminReceiver:Landroid/content/ComponentName;

.field private iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

.field private isPreview:Z

.field private isRequest:Z

.field private mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUVCCameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

.field private policyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/core/usb/USBCamera;-><init>()V

    const/16 v0, 0x65

    .line 29
    iput v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->REQUEST_CODE_REGISTER:I

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isRequest:Z

    return p0
.end method

.method static synthetic access$002(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)Lcom/jiangdg/usbcamera/UVCCameraHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->showShortMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/gizthon/camera/core/usb/UVCUSBCamera;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isPreview:Z

    return p1
.end method

.method private showShortMsg(Ljava/lang/String;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->context:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public checkAdmin()V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->adminReceiver:Landroid/content/ComponentName;

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "\u5f00\u542f\u540e\u5c31\u53ef\u4ee5\u4f7f\u7528\u9501\u5c4f\u529f\u80fd\u4e86..."

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->context:Landroid/app/Activity;

    iget v2, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->REQUEST_CODE_REGISTER:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public checkDevice()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->checkSuccess()V

    return-void
.end method

.method public checkSuccess()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lcom/gizthon/camera/core/OnCameraConnectedListener;->onConnectedSuccess(I)V

    :cond_0
    return-void
.end method

.method public connectDevice()V
    .locals 4

    .line 81
    invoke-static {}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getInstance()Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    .line 83
    iget-object v1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mUVCCameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    new-instance v3, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;

    invoke-direct {v3, p0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera$1;-><init>(Lcom/gizthon/camera/core/usb/UVCUSBCamera;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->initUSBMonitor(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lcom/jiangdg/usbcamera/UVCCameraHelper$OnMyDevConnectListener;)V

    .line 143
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    iget-object v1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    invoke-virtual {v0, v1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V

    return-void
.end method

.method public destroyDevice()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->release()V

    :cond_0
    return-void
.end method

.method public getCameraHelper()Lcom/jiangdg/usbcamera/UVCCameraHelper;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    return-object v0
.end method

.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->getCameraHelper()Lcom/jiangdg/usbcamera/UVCCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    return-object v0
.end method

.method public initDevice(Landroid/app/Activity;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/gizthon/camera/core/usb/USBCamera;->initDevice(Landroid/app/Activity;)V

    const-string v0, "device_policy"

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->policyManager:Landroid/app/admin/DevicePolicyManager;

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/gizthon/camera/core/usb/UVCScreenOffAdminReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->adminReceiver:Landroid/content/ComponentName;

    const-string v0, "power"

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 74
    iget p2, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->REQUEST_CODE_REGISTER:I

    if-ne p1, p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->checkDevice()V

    :cond_0
    return-void
.end method

.method public onDialogResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->TAG:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88\u64cd\u4f5c"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->registerUSB()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 178
    iget-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isPreview:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    iget-object p2, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mUVCCameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p1, p2}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->startPreview(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isPreview:Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    const/16 p2, 0x2710

    invoke-interface {p1, p2}, Lcom/gizthon/camera/core/OnCameraConnectedListener;->onConnectedFailed(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 195
    iget-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isPreview:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mCameraHelper:Lcom/jiangdg/usbcamera/UVCCameraHelper;

    invoke-virtual {p1}, Lcom/jiangdg/usbcamera/UVCCameraHelper;->stopPreview()V

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->isPreview:Z

    :cond_0
    return-void
.end method

.method public setCameraView(Lcom/serenegiant/usb/widget/UVCCameraTextureView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->mUVCCameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    return-void
.end method

.method public setIButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;->iButtonCallback:Lcom/serenegiant/usb/IButtonCallback;

    return-void
.end method
