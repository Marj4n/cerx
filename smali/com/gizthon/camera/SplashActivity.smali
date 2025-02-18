.class public Lcom/gizthon/camera/SplashActivity;
.super Lcom/gizthon/camera/activity/CameraBaseActivity;
.source "SplashActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private binding:Lcom/gizthon/camera/databinding/SplashActivityBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/SplashActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public connectDevice(Z)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/gizthon/camera/SplashActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {p1}, Lcom/gizthon/camera/core/CameraManager;->getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gizthon/camera/core/wifi/WifiCamera;->initDevice(Landroid/app/Activity;)V

    .line 70
    iget-object p1, p0, Lcom/gizthon/camera/SplashActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {p1}, Lcom/gizthon/camera/core/CameraManager;->getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;

    move-result-object p1

    iget-boolean p1, p1, Lcom/gizthon/camera/core/wifi/WifiCamera;->isWifi:Z

    if-nez p1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/SplashActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {p1}, Lcom/gizthon/camera/core/CameraManager;->getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gizthon/camera/core/wifi/WifiCamera;->startWifi1Activity(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onCameraDenied()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCameraDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCameraNeverAskAgain()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCameraNeverAskAgain"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClickGallery()V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/gizthon/camera/activity/GalleryListActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onClickHelp()V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/gizthon/camera/activity/HelpActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onClickUsb()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->connectDeviceWithPermissionCheck(Lcom/gizthon/camera/SplashActivity;Z)V

    return-void
.end method

.method public onClickWifi()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->connectDeviceWithPermissionCheck(Lcom/gizthon/camera/SplashActivity;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00e5

    .line 37
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/SplashActivityBinding;

    iput-object p1, p0, Lcom/gizthon/camera/SplashActivity;->binding:Lcom/gizthon/camera/databinding/SplashActivityBinding;

    .line 38
    invoke-virtual {p1, p0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->setEventHandler(Lcom/gizthon/camera/SplashActivity;)V

    const-string p1, "#202226"

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->setColorNoTranslucent(Landroid/app/Activity;I)V

    .line 40
    iget-object p1, p0, Lcom/gizthon/camera/SplashActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {p1}, Lcom/gizthon/camera/core/CameraManager;->getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gizthon/camera/core/wifi/WifiCamera;->initDevice(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 81
    invoke-static {p0, p1, p3}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/gizthon/camera/SplashActivity;I[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0}, Lcom/gizthon/camera/core/CameraManager;->getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gizthon/camera/core/wifi/WifiCamera;->initDevice(Landroid/app/Activity;)V

    return-void
.end method

.method public showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "showRationaleForCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->proceed()V

    return-void
.end method
