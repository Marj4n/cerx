.class public Lcom/shizhefei/view/indicator/RecyclerIndicatorView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private itemClickable:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

.field private onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

.field private pageScrollPosition:I

.field private pageScrollState:I

.field private positionOffset:F

.field private positionOffsetPixels:I

.field private prePositions:[I

.field private preSelectItem:I

.field private proxyAdapter:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

.field private scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

.field private selectItem:I

.field private unScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 235
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    .line 31
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 235
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    .line 36
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 235
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    .line 41
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    return p0
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    return p0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->proxyAdapter:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 385
    :cond_1
    sget-object v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$2;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v2

    .line 400
    :goto_0
    iget v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollState:I

    if-nez v4, :cond_5

    .line 401
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 402
    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->measureScrollBar(IFZ)I

    move-result v3

    if-eqz v4, :cond_4

    .line 404
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_4
    return-void

    .line 409
    :cond_5
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollPosition:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 410
    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollPosition:I

    iget v6, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->positionOffset:F

    invoke-direct {p0, v5, v6, v3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->measureScrollBar(IFZ)I

    move-result v3

    if-eqz v4, :cond_6

    .line 412
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->positionOffset:F

    mul-float v4, v4, v6

    add-float/2addr v4, v5

    .line 417
    :goto_1
    iget-object v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    .line 418
    div-int/2addr v3, v2

    int-to-float v2, v3

    add-float/2addr v4, v2

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v0, v0

    .line 420
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 421
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 422
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private init()V
    .locals 3

    .line 45
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private measureScrollBar(IFZ)I
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 429
    :cond_0
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    .line 431
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    .line 432
    iget-object v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 434
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_0
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 435
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result p2

    .line 436
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p3

    .line 437
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 438
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 442
    :cond_3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method private smoothScrollToPosition(II)V
    .locals 2

    .line 145
    new-instance v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;

    .line 146
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Landroid/content/Context;I)V

    .line 155
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 156
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private updateSelectTab(I)V
    .locals 2

    .line 161
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private updateTabTransition(I)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v0, p1, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 357
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 358
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    .line 359
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 362
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 135
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 136
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 137
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 138
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollToTab(IF)V

    .line 139
    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 258
    iput p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->positionOffsetPixels:I

    .line 259
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollPosition:I

    .line 260
    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->positionOffset:F

    .line 261
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollToTab(IF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 128
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 129
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollToTab(IF)V

    :cond_0
    return-void
.end method

.method protected scrollToTab(IF)V
    .locals 10

    .line 188
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    add-float/2addr v0, v6

    mul-float v0, v0, p2

    sub-float/2addr v6, v0

    :cond_0
    float-to-int v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-eqz v1, :cond_6

    .line 205
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v4, :cond_3

    aget v7, v1, v5

    .line 206
    invoke-virtual {p0, v7}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v8

    if-eq v7, p1, :cond_2

    if-eq v7, v2, :cond_2

    if-eqz v8, :cond_2

    .line 209
    iget-object v9, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    invoke-interface {v9, v8, v7, v6}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    :cond_3
    iget v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 216
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    invoke-interface {v4, v1, v5, v6}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 223
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    invoke-interface {v1, v0, p1, v4}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 224
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    aput p1, v0, v3

    .line 227
    :cond_5
    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 229
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    invoke-interface {v0, p1, v2, p2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 230
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->prePositions:[I

    const/4 p2, 0x1

    aput v2, p1, p2

    :cond_6
    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 53
    new-instance v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->proxyAdapter:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    .line 54
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 100
    iget p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    .line 101
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    .line 102
    iget p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->pageScrollState:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollToTab(IF)V

    .line 113
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->updateSelectTab(I)V

    .line 114
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->unScrollPosition:I

    goto :goto_0

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    if-nez p2, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->updateSelectTab(I)V

    .line 120
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    iget v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->preSelectItem:I

    invoke-interface {p2, p1, v0, v1}, Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->itemClickable:Z

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    .line 70
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->updateSelectTab(I)V

    .line 71
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->selectItem:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->updateTabTransition(I)V

    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    return-void
.end method
