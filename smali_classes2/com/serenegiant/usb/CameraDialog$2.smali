.class Lcom/serenegiant/usb/CameraDialog$2;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/CameraDialog;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/CameraDialog;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/serenegiant/usb/CameraDialog$2;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/usb/CameraDialog$2;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-static {p1}, Lcom/serenegiant/usb/CameraDialog;->access$000(Lcom/serenegiant/usb/CameraDialog;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    .line 171
    instance-of p2, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_2

    .line 172
    iget-object p2, p0, Lcom/serenegiant/usb/CameraDialog$2;->this$0:Lcom/serenegiant/usb/CameraDialog;

    iget-object p2, p2, Lcom/serenegiant/usb/CameraDialog;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2, p1}, Lcom/serenegiant/usb/USBMonitor;->requestPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 173
    iget-object p1, p0, Lcom/serenegiant/usb/CameraDialog$2;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-virtual {p1}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;->onDialogResult(Z)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/usb/CameraDialog$2;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-virtual {p1}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;->onDialogResult(Z)V

    :cond_2
    :goto_0
    return-void
.end method
