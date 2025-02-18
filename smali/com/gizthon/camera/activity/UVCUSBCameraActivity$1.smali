.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;
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

    .line 64
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llResolution:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$200(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$1;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v0}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$100(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
