.class public abstract Lcom/gizthon/camera/databinding/HelpActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "HelpActivityBinding.java"


# instance fields
.field public final back:Landroid/widget/TextView;

.field public final ivHelp1:Landroid/widget/ImageView;

.field public final ivHelp2:Landroid/widget/ImageView;

.field public final ivL:Landroid/widget/ImageView;

.field public final ivR:Landroid/widget/ImageView;

.field public final llLayout1:Landroid/widget/LinearLayout;

.field public final llLayout2:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->back:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    .line 46
    iput-object p6, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    .line 47
    iput-object p7, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivL:Landroid/widget/ImageView;

    .line 48
    iput-object p8, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivR:Landroid/widget/ImageView;

    .line 49
    iput-object p9, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->llLayout1:Landroid/widget/LinearLayout;

    .line 50
    iput-object p10, p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;->llLayout2:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/HelpActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007d

    .line 105
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/HelpActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 1

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/HelpActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 1

    .line 56
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/HelpActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007d

    .line 70
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/HelpActivityBinding;

    return-object p0
.end method
