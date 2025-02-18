.class Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;
.super Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
