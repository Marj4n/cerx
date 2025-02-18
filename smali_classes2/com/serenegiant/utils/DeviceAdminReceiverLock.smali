.class public Lcom/serenegiant/utils/DeviceAdminReceiverLock;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminReceiverLock.java"


# static fields
.field public static final EXTRA_REQUEST_FINISH:Ljava/lang/String; = "EXTRA_REQUEST_FINISH"

.field private static final REQ_SCREEN_LOCK:I = 0x64c89


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private static checkScreenLock(Landroid/app/Activity;Z)Z
    .locals 2

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/serenegiant/utils/DeviceAdminReceiverLock;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "device_policy"

    .line 50
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 51
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x64c89

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    const-string p2, "EXTRA_REQUEST_FINISH"

    .line 66
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 68
    :cond_1
    invoke-static {p0, v0}, Lcom/serenegiant/utils/DeviceAdminReceiverLock;->checkScreenLock(Landroid/app/Activity;Z)Z

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static requestScreenLock(Landroid/app/Activity;Z)V
    .locals 3

    .line 35
    invoke-static {p0, p1}, Lcom/serenegiant/utils/DeviceAdminReceiverLock;->checkScreenLock(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/serenegiant/utils/DeviceAdminReceiverLock;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_REQUEST_FINISH"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x64c89

    .line 40
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
