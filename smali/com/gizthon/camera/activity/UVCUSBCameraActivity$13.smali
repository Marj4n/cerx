.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Lcom/gizthon/camera/core/OnCameraConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedFailed(I)V
    .locals 3

    .line 271
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$3;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConnectedSuccess(I)V
    .locals 3

    const-wide/16 v0, 0x7d0

    const/16 v2, 0x4e23

    if-ne p1, v2, :cond_0

    .line 244
    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;

    invoke-direct {v2, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$1;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 v2, 0x4e24

    if-ne v2, p1, :cond_1

    .line 254
    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$2;

    invoke-direct {v2, p0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13$2;-><init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$13;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
