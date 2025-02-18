.class public Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;
.super Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;
.source "ExpandFooterView.java"


# instance fields
.field private layoutType:I

.field private loadBox:Landroid/view/View;

.field private progress:Landroid/view/View;

.field private state:I

.field private stateImg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->state:I

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->layoutType:I

    .line 36
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->view_footer_expand:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    .line 42
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->state:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stateImg:Landroid/view/View;

    .line 43
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->load_box:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->loadBox:Landroid/view/View;

    .line 44
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x15e

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getLayoutType()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->layoutType:I

    return v0
.end method

.method public getSpanHeight()F
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->loadBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public onScroll(F)Z
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;->onScroll(F)Z

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->isLockState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    mul-float p1, p1, p1

    const/high16 v2, 0x42400000    # 48.0f

    mul-float p1, p1, v2

    const v2, 0x46f42400    # 31250.0f

    div-float/2addr p1, v2

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setRotation(Landroid/view/View;F)V

    :cond_0
    return v0
.end method

.method protected onStateChange(I)V
    .locals 8

    .line 55
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->state:I

    .line 56
    invoke-static {}, Lcom/nineoldandroids/animation/ObjectAnimator;->clearAllAnimations()V

    .line 57
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stateImg:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->stateImg:Landroid/view/View;

    const v3, 0x3dcccccd    # 0.1f

    const-wide/16 v4, 0x190

    const-wide/16 v6, 0xc8

    invoke-static/range {v2 .. v7}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/utils/AnimUtil;->startShow(Landroid/view/View;FJJ)V

    .line 72
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/utils/AnimUtil;->startHide(Landroid/view/View;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/view/ExpandFooterView;->progress:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getRotation(Landroid/view/View;)F

    move-result p1

    const v1, 0x43b3feb8    # 359.99f

    add-float/2addr v1, p1

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    invoke-static/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/utils/AnimUtil;->startRotation(Landroid/view/View;FJJI)V

    :goto_0
    return-void
.end method

.method public setPullRefreshLayout(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseFooterView;->setPullRefreshLayout(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;)V

    const/16 v0, 0x15e

    .line 50
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->setMaxDistance(I)V

    return-void
.end method
