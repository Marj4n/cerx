.class public abstract Lcom/gizthon/camera/databinding/SplashActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SplashActivityBinding.java"


# instance fields
.field public final cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

.field protected mEventHandler:Lcom/gizthon/camera/SplashActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvCamera:Landroid/widget/TextView;

.field public final tvConnect:Landroid/widget/TextView;

.field public final tvHelp:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/serenegiant/usb/widget/UVCCameraTextureView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    .line 39
    iput-object p5, p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;->tvCamera:Landroid/widget/TextView;

    .line 40
    iput-object p6, p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;->tvConnect:Landroid/widget/TextView;

    .line 41
    iput-object p7, p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;->tvHelp:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00e5

    .line 103
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 1

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 1

    .line 54
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00e5

    .line 68
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/SplashActivityBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00e5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getEventHandler()Lcom/gizthon/camera/SplashActivity;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBinding;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    return-object v0
.end method

.method public abstract setEventHandler(Lcom/gizthon/camera/SplashActivity;)V
.end method
