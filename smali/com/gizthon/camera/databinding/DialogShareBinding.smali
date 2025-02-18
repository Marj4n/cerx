.class public abstract Lcom/gizthon/camera/databinding/DialogShareBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogShareBinding.java"


# instance fields
.field public final tvCancel:Landroid/widget/TextView;

.field public final tvFecebook:Landroid/widget/ImageView;

.field public final tvQq:Landroid/widget/ImageView;

.field public final tvTwitter:Landroid/widget/ImageView;

.field public final tvWhatsapp:Landroid/widget/ImageView;

.field public final tvYoutube:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 40
    iput-object p4, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvCancel:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvFecebook:Landroid/widget/ImageView;

    .line 42
    iput-object p6, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvQq:Landroid/widget/ImageView;

    .line 43
    iput-object p7, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvTwitter:Landroid/widget/ImageView;

    .line 44
    iput-object p8, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvWhatsapp:Landroid/widget/ImageView;

    .line 45
    iput-object p9, p0, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvYoutube:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 1

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/DialogShareBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0056

    .line 100
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/DialogShareBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/DialogShareBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 1

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/DialogShareBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 1

    .line 51
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/DialogShareBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0056

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/DialogShareBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/DialogShareBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0056

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/DialogShareBinding;

    return-object p0
.end method
