.class public Lcom/shizhefei/view/indicator/IndicatorViewPager;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;,
        Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

.field private anim:Z

.field protected indicatorView:Lcom/shizhefei/view/indicator/Indicator;

.field protected onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

.field protected viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager;-><init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->anim:Z

    .line 48
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    .line 49
    iput-object p2, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 50
    invoke-interface {p1, p3}, Lcom/shizhefei/view/indicator/Indicator;->setItemClickable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->iniOnItemSelectedListener()V

    .line 52
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->iniOnPageChangeListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/IndicatorViewPager;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->anim:Z

    return p0
.end method


# virtual methods
.method public getAdapter()Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/Indicator;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorView()Lcom/shizhefei/view/indicator/Indicator;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    return-object v0
.end method

.method public getOnIndicatorPageChangeListener()Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/Indicator;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method protected iniOnItemSelectedListener()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    new-instance v1, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager;)V

    invoke-interface {v0, v1}, Lcom/shizhefei/view/indicator/Indicator;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method protected iniOnPageChangeListener()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;-><init>(Lcom/shizhefei/view/indicator/IndicatorViewPager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V
    .locals 2

    .line 102
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->adapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    .line 103
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V

    return-void
.end method

.method public setClickIndicatorAnim(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->anim:Z

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 115
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1, p2}, Lcom/shizhefei/view/indicator/Indicator;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIndicatorOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V

    return-void
.end method

.method public setIndicatorScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setOnIndicatorPageChangeListener(Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(I)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageOffscreenLimit(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
