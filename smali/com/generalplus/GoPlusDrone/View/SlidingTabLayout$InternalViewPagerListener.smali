.class Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$1;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 284
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 286
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$200(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$200(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 270
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$200(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$300(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;II)V

    .line 276
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 293
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$200(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 295
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$300(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;II)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
