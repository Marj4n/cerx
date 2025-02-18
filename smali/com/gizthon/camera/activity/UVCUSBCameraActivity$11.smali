.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->onClickTakePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

.field final synthetic val$picPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    iput-object p2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;->val$picPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 216
    :cond_0
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11$1;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$11;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
