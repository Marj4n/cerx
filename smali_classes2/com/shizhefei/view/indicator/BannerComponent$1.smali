.class Lcom/shizhefei/view/indicator/BannerComponent$1;
.super Ljava/lang/Object;
.source "BannerComponent.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/BannerComponent;->iniOnItemSelectedListener()V
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

    .line 57
    iput-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$1;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;II)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$1;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object p1, p1, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    instance-of p1, p1, Lcom/shizhefei/view/viewpager/SViewPager;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$1;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object p3, p1, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p3}, Lcom/shizhefei/view/viewpager/SViewPager;->isCanScroll()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/shizhefei/view/indicator/BannerComponent;->setCurrentItem(IZ)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$1;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/shizhefei/view/indicator/BannerComponent;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
