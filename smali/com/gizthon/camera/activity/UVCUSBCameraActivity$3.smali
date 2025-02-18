.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$3;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->initDate()V
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

    .line 75
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$3;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$3;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llConent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->zoom(ZLandroid/view/View;)V

    return-void
.end method
