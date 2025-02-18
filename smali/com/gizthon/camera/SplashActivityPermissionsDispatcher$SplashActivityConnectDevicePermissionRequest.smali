.class final Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;
.super Ljava/lang/Object;
.source "SplashActivityPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/GrantableRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplashActivityConnectDevicePermissionRequest"
.end annotation


# instance fields
.field private final isUSB:Z

.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gizthon/camera/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/gizthon/camera/SplashActivity;Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 59
    iput-boolean p2, p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;->isUSB:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gizthon/camera/SplashActivity;ZLcom/gizthon/camera/SplashActivityPermissionsDispatcher$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;-><init>(Lcom/gizthon/camera/SplashActivity;Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public grant()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gizthon/camera/SplashActivity;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-boolean v1, p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;->isUSB:Z

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/SplashActivity;->connectDevice(Z)V

    return-void
.end method

.method public proceed()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gizthon/camera/SplashActivity;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
