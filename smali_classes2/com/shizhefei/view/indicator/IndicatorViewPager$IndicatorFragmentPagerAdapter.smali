.class public abstract Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.super Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndicatorFragmentPagerAdapter"
.end annotation


# instance fields
.field private indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private loop:Z

.field private pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 390
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;-><init>()V

    .line 421
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 391
    new-instance v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    return-void
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)Z
    .locals 0

    .line 373
    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->loop:Z

    return p0
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getExitFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->getExitFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public abstract getFragmentForPage(I)Landroidx/fragment/app/Fragment;
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPageRatio(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    return-object v0
.end method

.method getRealPosition(I)I
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public abstract getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->pagerAdapter:Lcom/shizhefei/view/indicator/FragmentListPageAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FragmentListPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setLoop(Z)V
    .locals 1

    .line 385
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->loop:Z

    .line 386
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->indicatorAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->setIsLoop(Z)V

    return-void
.end method
