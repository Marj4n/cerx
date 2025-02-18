.class public Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;
.super Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/FlingLayout;
.source "PullRefreshLayout.java"


# instance fields
.field protected hasFooter:Z

.field protected hasHeader:Z

.field protected mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

.field protected mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/FlingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    .line 37
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 115
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-nez v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    .line 117
    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->setPullRefreshLayout(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;)V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-nez v0, :cond_1

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    .line 120
    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->setPullRefreshLayout(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;)V

    .line 122
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/FlingLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 127
    invoke-super/range {p0 .. p5}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/FlingLayout;->onLayout(ZIIII)V

    .line 128
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->getHeight()I

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-eqz p2, :cond_0

    .line 130
    check-cast p2, Landroid/view/View;

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz p2, :cond_1

    .line 134
    check-cast p2, Landroid/view/View;

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onScroll(F)Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->onScroll(F)Z

    move-result v0

    if-eqz v2, :cond_0

    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    if-eqz v2, :cond_1

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    .line 60
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->onScroll(F)Z

    move-result v0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollChange(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->onScrollChange(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->onScrollChange(I)V

    :cond_1
    return-void
.end method

.method protected onStartFling(F)Z
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->onStartFling(F)Z

    move-result p1

    return p1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->onStartFling(F)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setHasFooter(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    return-void
.end method

.method public setHasHeader(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    return-void
.end method

.method public startLoad()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->startLoad()V

    :cond_0
    return-void
.end method

.method public startRefresh()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->startRefresh()V

    :cond_0
    return-void
.end method

.method public stopLoad()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mFooter:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasFooter:Z

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Loadable;->stopLoad()V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->mHeader:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;->stopRefresh()V

    :cond_0
    return-void
.end method
