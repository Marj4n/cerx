.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private tvCounter:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private formatTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 106
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setCounter(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 88
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->counter_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->tvCounter:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->formatTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "path_list"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "position"

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    .line 62
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-ltz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->setCounter(II)V

    .line 66
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_photo_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_view_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_view_counter:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->tvCounter:Landroid/widget/TextView;

    .line 47
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_view_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->tvTitle:Landroid/widget/TextView;

    .line 48
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 49
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 83
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->release()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->setCounter(II)V

    .line 124
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    return-void
.end method
