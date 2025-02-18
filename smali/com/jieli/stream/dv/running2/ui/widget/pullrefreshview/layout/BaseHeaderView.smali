.class public abstract Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;
.super Landroid/widget/RelativeLayout;
.source "BaseHeaderView.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;
    }
.end annotation


# static fields
.field public static final LOOSENT_O_REFRESH:I = 0x2

.field public static final NONE:I = 0x0

.field public static final PULLING:I = 0x1

.field public static final REFRESHING:I = 0x3

.field public static final REFRESH_CLONE:I = 0x4


# instance fields
.field private isLockState:Z

.field onRefreshListener:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;

.field private pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

.field private scrollState:I

.field private stateType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->stateType:I

    .line 43
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->isLockState:Z

    .line 47
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->scrollState:I

    .line 60
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->close()V

    return-void
.end method

.method private close()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->getMoveY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    invoke-virtual {v2, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->startMoveTo(FF)I

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->isLockState:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->stateType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseHeaderView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->stateType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->isLockState:Z

    .line 85
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->onRefreshListener:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;->onRefresh(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;)V

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->onStateChange(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSpanHeight()F
.end method

.method public getType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->stateType:I

    return v0
.end method

.method protected isLockState()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->isLockState:Z

    return v0
.end method

.method public onScroll(F)Z
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->getLayoutType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 143
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 144
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->getPullView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    const/4 v0, 0x1

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :goto_0
    const/4 v0, 0x0

    .line 149
    :goto_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->getSpanHeight()F

    move-result v2

    .line 150
    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->scrollState:I

    if-ne v3, v1, :cond_3

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    .line 152
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    goto :goto_2

    .line 154
    :cond_2
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    :cond_3
    :goto_2
    return v0
.end method

.method public onScrollChange(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->scrollState:I

    return-void
.end method

.method public onStartFling(F)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->getSpanHeight()F

    move-result v0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    invoke-virtual {v1, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->startMoveTo(FF)I

    const/4 p1, 0x3

    .line 170
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    const/4 p1, 0x1

    return p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->startMoveTo(FF)I

    const/4 p1, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    return p1
.end method

.method protected abstract onStateChange(I)V
.end method

.method public setOnRefreshListener(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->onRefreshListener:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$OnRefreshListener;

    return-void
.end method

.method public setPullRefreshLayout(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    return-void
.end method

.method public startRefresh()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->getMoveY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->getSpanHeight()F

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->pullRefreshLayout:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;

    invoke-virtual {v2, v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/PullRefreshLayout;->startMoveTo(FF)I

    const/4 v0, 0x3

    .line 119
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 3

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->isLockState:Z

    const/4 v0, 0x4

    .line 127
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->setState(I)V

    .line 128
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
