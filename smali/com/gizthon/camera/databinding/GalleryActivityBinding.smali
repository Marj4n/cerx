.class public abstract Lcom/gizthon/camera/databinding/GalleryActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "GalleryActivityBinding.java"


# instance fields
.field public final back:Landroid/widget/TextView;

.field public final done:Landroid/widget/CheckBox;

.field protected mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mViewModel:Lcom/gizthon/camera/model/GalleryViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final pager:Landroidx/viewpager2/widget/ViewPager2;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final tvComplete:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/CheckBox;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->back:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->done:Landroid/widget/CheckBox;

    .line 49
    iput-object p6, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    .line 50
    iput-object p7, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 51
    iput-object p8, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->tvComplete:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 1

    .line 108
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007a

    .line 120
    invoke-static {p1, p0, v0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007a

    .line 85
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/gizthon/camera/databinding/GalleryActivityBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getEventHandler()Lcom/gizthon/camera/activity/GalleryListActivity;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    return-object v0
.end method

.method public getViewModel()Lcom/gizthon/camera/model/GalleryViewModel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->mViewModel:Lcom/gizthon/camera/model/GalleryViewModel;

    return-object v0
.end method

.method public abstract setEventHandler(Lcom/gizthon/camera/activity/GalleryListActivity;)V
.end method

.method public abstract setViewModel(Lcom/gizthon/camera/model/GalleryViewModel;)V
.end method
