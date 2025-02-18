.class public Lcom/gizthon/camera/core/usb/UVCScreenOffAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "UVCScreenOffAdminReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "\u8bbe\u5907\u7ba1\u7406\u5668\u6ca1\u6709\u4f7f\u7528"

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/core/usb/UVCScreenOffAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "\u8bbe\u5907\u7ba1\u7406\u5668\u4f7f\u7528"

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/core/usb/UVCScreenOffAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
