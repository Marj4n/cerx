.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerCoverFlow.java"


# instance fields
.field private mDownX:F

.field private mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->init()V

    return-void
.end method

.method private createManageBuilder()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->createManageBuilder()V

    .line 48
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setChildrenDrawingOrderEnabled(Z)V

    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mDownX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getCenterPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mDownX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getCenterPosition()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mDownX:F

    .line 155
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 169
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getCenterPosition()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_2
    if-le p2, v0, :cond_3

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int p2, v0, p2

    :cond_3
    :goto_1
    return p2
.end method

.method public getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    return-object v0
.end method

.method public getSelectedPos()I
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getSelectedPos()I

    move-result v0

    return v0
.end method

.method public setAlphaItem(Z)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->createManageBuilder()V

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->setAlphaItem(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    .line 89
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setFlatFlow(Z)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->createManageBuilder()V

    .line 68
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->setFlat(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    .line 69
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setGreyItem(Z)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->createManageBuilder()V

    .line 78
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->setGreyItem(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setIntervalRatio(F)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->createManageBuilder()V

    .line 99
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->setIntervalRatio(F)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    .line 100
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->mManagerBuilder:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 105
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The layout manager must be CoverFlowLayoutManger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemSelectedListener(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->setOnSelectedListener(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;)V

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->scrollToPosition(I)V

    return-void
.end method

.method public setSelectPositionByScroll(I)V
    .locals 2

    .line 173
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getCoverFlowLayout()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method
