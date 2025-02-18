.class public abstract Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "UsbPreviewActivityBinding.java"


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

.field public final ivBroken:Landroid/widget/TextView;

.field public final ivFocusImg:Landroid/widget/ImageView;

.field public final ivPicture:Landroid/widget/ImageView;

.field public final ivRecord:Landroid/widget/ImageView;

.field public final ivResolution:Landroid/widget/ImageView;

.field public final ivZoomFocus:Landroid/widget/ImageView;

.field public final ivZoomIn:Landroid/widget/ImageView;

.field public final ivZoomOut:Landroid/widget/ImageView;

.field public final llConent:Landroid/widget/LinearLayout;

.field public final llControl:Landroid/widget/LinearLayout;

.field public final llResolution:Landroid/widget/LinearLayout;

.field protected mEventHandler:Lcom/gizthon/camera/activity/CameraBaseActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rcResolution:Landroidx/recyclerview/widget/RecyclerView;

.field public final takePhoto:Landroid/widget/ImageView;

.field public final tvRecordTime:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/serenegiant/usb/widget/UVCCameraTextureView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 81
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->back:Landroid/widget/ImageView;

    move-object v1, p5

    .line 82
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    move-object v1, p6

    .line 83
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivBroken:Landroid/widget/TextView;

    move-object v1, p7

    .line 84
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivFocusImg:Landroid/widget/ImageView;

    move-object v1, p8

    .line 85
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivPicture:Landroid/widget/ImageView;

    move-object v1, p9

    .line 86
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivRecord:Landroid/widget/ImageView;

    move-object v1, p10

    .line 87
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivResolution:Landroid/widget/ImageView;

    move-object v1, p11

    .line 88
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomFocus:Landroid/widget/ImageView;

    move-object v1, p12

    .line 89
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomIn:Landroid/widget/ImageView;

    move-object v1, p13

    .line 90
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->ivZoomOut:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 91
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llConent:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 92
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llControl:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 93
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->llResolution:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    .line 94
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->rcResolution:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p18

    .line 95
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->takePhoto:Landroid/widget/ImageView;

    move-object/from16 v1, p19

    .line 96
    iput-object v1, v0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->tvRecordTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 1

    .line 146
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00fb

    .line 158
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 1

    .line 128
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 1

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00fb

    .line 123
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00fb

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getEventHandler()Lcom/gizthon/camera/activity/CameraBaseActivity;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->mEventHandler:Lcom/gizthon/camera/activity/CameraBaseActivity;

    return-object v0
.end method

.method public abstract setEventHandler(Lcom/gizthon/camera/activity/CameraBaseActivity;)V
.end method
