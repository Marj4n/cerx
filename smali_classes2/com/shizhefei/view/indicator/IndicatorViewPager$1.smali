.class Lcom/shizhefei/view/indicator/IndicatorViewPager$1;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/IndicatorViewPager;->iniOnItemSelectedListener()V
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

    .line 60
    iput-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;II)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    instance-of p1, p1, Lcom/shizhefei/view/viewpager/SViewPager;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object p3, p3, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p3}, Lcom/shizhefei/view/viewpager/SViewPager;->isCanScroll()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/shizhefei/view/indicator/IndicatorViewPager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/shizhefei/view/indicator/IndicatorViewPager$1;->this$0:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    invoke-static {p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->access$000(Lcom/shizhefei/view/indicator/IndicatorViewPager;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
