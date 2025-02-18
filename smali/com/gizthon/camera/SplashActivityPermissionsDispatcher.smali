.class final Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SplashActivityPermissionsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;
    }
.end annotation


# static fields
.field private static PENDING_CONNECTDEVICE:Lpermissions/dispatcher/GrantableRequest;

.field private static final PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

.field private static final REQUEST_CONNECTDEVICE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 15
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

    return-object v0
.end method

.method static connectDeviceWithPermissionCheck(Lcom/gizthon/camera/SplashActivity;Z)V
    .locals 2

    .line 23
    sget-object v0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/SplashActivity;->connectDevice(Z)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher$SplashActivityConnectDevicePermissionRequest;-><init>(Lcom/gizthon/camera/SplashActivity;ZLcom/gizthon/camera/SplashActivityPermissionsDispatcher$1;)V

    sput-object v0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PENDING_CONNECTDEVICE:Lpermissions/dispatcher/GrantableRequest;

    .line 27
    sget-object p1, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

    invoke-static {p0, p1}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PENDING_CONNECTDEVICE:Lpermissions/dispatcher/GrantableRequest;

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/SplashActivity;->showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PERMISSION_CONNECTDEVICE:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static onRequestPermissionsResult(Lcom/gizthon/camera/SplashActivity;I[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    sget-object p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PENDING_CONNECTDEVICE:Lpermissions/dispatcher/GrantableRequest;

    if-eqz p0, :cond_1

    .line 41
    invoke-interface {p0}, Lpermissions/dispatcher/GrantableRequest;->grant()V

    :cond_1
    const/4 p0, 0x0

    .line 44
    sput-object p0, Lcom/gizthon/camera/SplashActivityPermissionsDispatcher;->PENDING_CONNECTDEVICE:Lpermissions/dispatcher/GrantableRequest;

    :goto_0
    return-void
.end method
