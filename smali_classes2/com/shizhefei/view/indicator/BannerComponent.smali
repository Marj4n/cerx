.class public Lcom/shizhefei/view/indicator/BannerComponent;
.super Lcom/shizhefei/view/indicator/IndicatorViewPager;
.source "BannerComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isRunning:Z

.field private mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private scroller:Lcom/shizhefei/view/viewpager/DurationScroller;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager;-><init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;Z)V

    const-wide/16 v0, 0xbb8

    .line 22
    iput-wide v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->time:J

    .line 166
    new-instance p1, Lcom/shizhefei/view/indicator/BannerComponent$3;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/BannerComponent$3;-><init>(Lcom/shizhefei/view/indicator/BannerComponent;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 27
    new-instance p1, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;-><init>(Lcom/shizhefei/view/indicator/BannerComponent;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->handler:Landroid/os/Handler;

    .line 28
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/BannerComponent;->initViewPagerScroll()V

    return-void
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/BannerComponent;)Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shizhefei/view/indicator/BannerComponent;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->isRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/BannerComponent;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->time:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/shizhefei/view/indicator/BannerComponent;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initViewPagerScroll()V
    .locals 3

    .line 35
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    new-instance v1, Lcom/shizhefei/view/viewpager/DurationScroller;

    iget-object v2, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 38
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shizhefei/view/viewpager/DurationScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->scroller:Lcom/shizhefei/view/viewpager/DurationScroller;

    .line 39
    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/shizhefei/view/indicator/BannerComponent;->scroller:Lcom/shizhefei/view/viewpager/DurationScroller;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected iniOnItemSelectedListener()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    new-instance v1, Lcom/shizhefei/view/indicator/BannerComponent$1;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/BannerComponent$1;-><init>(Lcom/shizhefei/view/indicator/BannerComponent;)V

    invoke-interface {v0, v1}, Lcom/shizhefei/view/indicator/Indicator;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method protected iniOnPageChangeListener()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/shizhefei/view/indicator/BannerComponent$2;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/BannerComponent$2;-><init>(Lcom/shizhefei/view/indicator/BannerComponent;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V
    .locals 2

    .line 117
    instance-of v0, p1, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    if-eqz v0, :cond_1

    .line 120
    move-object v0, p1

    check-cast v0, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    iput-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->setLoop(Z)V

    .line 122
    invoke-super {p0, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->setAdapter(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V

    .line 123
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getCount()I

    move-result p1

    const v0, 0x3fffffff    # 1.9999999f

    if-lez p1, :cond_0

    .line 126
    rem-int p1, v0, p1

    sub-int/2addr v0, p1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u8bbe\u7f6e\u7ee7\u627f\u4e8eIndicatorViewPagerAdapter\u6216\u8005IndicatorViewPagerAdapter\u7684adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoPlayTime(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->time:J

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/shizhefei/view/indicator/BannerComponent;->mAdapter:Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    invoke-virtual {v2, v1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getRealPosition(I)I

    move-result v2

    if-le p1, v2, :cond_0

    sub-int v2, p1, v2

    .line 101
    rem-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p1

    .line 103
    rem-int/2addr v2, v0

    neg-int v2, v2

    .line 105
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getOffscreenPageLimit()I

    move-result v4

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getOffscreenPageLimit()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 106
    iget-object v3, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 109
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1, p2}, Lcom/shizhefei/view/indicator/Indicator;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method public setScrollDuration(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->scroller:Lcom/shizhefei/view/viewpager/DurationScroller;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lcom/shizhefei/view/viewpager/DurationScroller;->setScrollDuration(I)V

    :cond_0
    return-void
.end method

.method public startAutoPlay()V
    .locals 4

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->isRunning:Z

    .line 140
    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/shizhefei/view/indicator/BannerComponent;->time:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopAutoPlay()V
    .locals 2

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->isRunning:Z

    .line 146
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
