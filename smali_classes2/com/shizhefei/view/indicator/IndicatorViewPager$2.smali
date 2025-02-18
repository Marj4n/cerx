.class Lcom/shizhefei/view/indicator/IndicatorViewPager$2;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager;->iniOnPageChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/IndicatorViewPager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/Indicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/shizhefei/view/indicator/Indicator;->setCurrentItem(IZ)V

    .line 78
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$2;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object v1, v1, Lcom/shizhefei/view/indicator/IndicatorViewPager;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/Indicator;->getPreSelectItem()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;->onIndicatorPageChange(II)V

    :cond_0
    return-void
.end method
