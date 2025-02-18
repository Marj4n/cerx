.class public Lcom/gizthon/camera/core/usb/USBCamera;
.super Ljava/lang/Object;
.source "USBCamera.java"

# interfaces
.implements Lcom/gizthon/camera/core/ICamera;


# instance fields
.field public TAG:Ljava/lang/String;

.field public context:Landroid/app/Activity;

.field public listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/core/usb/USBCamera;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkDevice()V
    .locals 0

    return-void
.end method

.method public connectDevice()V
    .locals 0

    return-void
.end method

.method public destroyDevice()V
    .locals 0

    return-void
.end method

.method public initDevice(Landroid/app/Activity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/gizthon/camera/core/usb/USBCamera;->context:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/gizthon/camera/core/OnCameraConnectedListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/gizthon/camera/core/usb/USBCamera;->listener:Lcom/gizthon/camera/core/OnCameraConnectedListener;

    return-void
.end method
