.class Lcom/shizhefei/view/indicator/BannerComponent$2;
.super Ljava/lang/Object;
.source "BannerComponent.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/BannerComponent;->iniOnPageChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/BannerComponent;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/BannerComponent;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/Indicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/BannerComponent;->access$000(Lcom/shizhefei/view/indicator/BannerComponent;)Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getRealPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/Indicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/BannerComponent;->access$000(Lcom/shizhefei/view/indicator/BannerComponent;)Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getRealPosition(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/shizhefei/view/indicator/Indicator;->setCurrentItem(IZ)V

    .line 76
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->onIndicatorPageChangeListener:Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v1, v1, Lcom/shizhefei/view/indicator/BannerComponent;->indicatorView:Lcom/shizhefei/view/indicator/Indicator;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/Indicator;->getPreSelectItem()I

    move-result v1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/BannerComponent$2;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/BannerComponent;->access$000(Lcom/shizhefei/view/indicator/BannerComponent;)Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$LoopAdapter;->getRealPosition(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;->onIndicatorPageChange(II)V

    :cond_0
    return-void
.end method
