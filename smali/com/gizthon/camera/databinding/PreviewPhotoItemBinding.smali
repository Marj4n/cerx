.class public abstract Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PreviewPhotoItemBinding.java"


# instance fields
.field public final imgDisplay:Lcom/gizthon/camera/view/TouchImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/gizthon/camera/view/TouchImageView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 23
    iput-object p4, p0, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;->imgDisplay:Lcom/gizthon/camera/view/TouchImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00da

    .line 78
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 1

    .line 29
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00da

    .line 43
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00da

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/PreviewPhotoItemBinding;

    return-object p0
.end method
