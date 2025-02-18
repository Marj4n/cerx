.class public Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment;
.super Landroidx/fragment/app/Fragment;
.source "SlidingTabsBasicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment$SamplePagerAdapter;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SlidingBasicFragment"


# instance fields
.field private mSlidingTabLayout:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    sget p3, Lcom/generalplus/GoPlusDrone/R$layout;->fragment_sample:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 76
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 77
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment$SamplePagerAdapter;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment$SamplePagerAdapter;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 83
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->sliding_tabs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment;->mSlidingTabLayout:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    .line 84
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/SlidingTabsBasicFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
