.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;
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

    .line 85
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivFocusImg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivFocusImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$5;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivFocusImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
