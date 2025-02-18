.class public Lcom/gizthon/camera/core/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static final TYPE_USB_1:I = 0x1

.field public static final TYPE_USB_2:I = 0x2

.field public static final TYPE_WIFI_1:I = 0x3

.field public static final TYPE_WIFI_2:I = 0x4

.field public static deviceType:I


# instance fields
.field private camera:Lcom/gizthon/camera/core/ICamera;

.field private context:Landroid/app/Activity;

.field private wifiCamera:Lcom/gizthon/camera/core/wifi/WifiCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    invoke-direct {v0}, Lcom/gizthon/camera/core/usb/UVCUSBCamera;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/core/CameraManager;->camera:Lcom/gizthon/camera/core/ICamera;

    .line 23
    iput-object p1, p0, Lcom/gizthon/camera/core/CameraManager;->context:Landroid/app/Activity;

    .line 24
    new-instance p1, Lcom/gizthon/camera/core/wifi/WifiCamera;

    invoke-direct {p1}, Lcom/gizthon/camera/core/wifi/WifiCamera;-><init>()V

    iput-object p1, p0, Lcom/gizthon/camera/core/CameraManager;->wifiCamera:Lcom/gizthon/camera/core/wifi/WifiCamera;

    return-void
.end method

.method public static setDeviceType(I)V
    .locals 0

    .line 41
    sput p0, Lcom/gizthon/camera/core/CameraManager;->deviceType:I

    return-void
.end method


# virtual methods
.method public getUVCUSBCamera()Lcom/gizthon/camera/core/usb/UVCUSBCamera;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gizthon/camera/core/CameraManager;->camera:Lcom/gizthon/camera/core/ICamera;

    check-cast v0, Lcom/gizthon/camera/core/usb/UVCUSBCamera;

    return-object v0
.end method

.method public getWifiCamera()Lcom/gizthon/camera/core/wifi/WifiCamera;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gizthon/camera/core/CameraManager;->wifiCamera:Lcom/gizthon/camera/core/wifi/WifiCamera;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gizthon/camera/core/CameraManager;->camera:Lcom/gizthon/camera/core/ICamera;

    invoke-interface {v0, p1, p2, p3}, Lcom/gizthon/camera/core/ICamera;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    iget-object v0, p0, Lcom/gizthon/camera/core/CameraManager;->wifiCamera:Lcom/gizthon/camera/core/wifi/WifiCamera;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gizthon/camera/core/wifi/WifiCamera;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
