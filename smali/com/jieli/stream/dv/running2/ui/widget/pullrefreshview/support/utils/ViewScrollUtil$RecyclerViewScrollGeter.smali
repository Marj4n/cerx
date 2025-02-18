.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;
.super Ljava/lang/Object;
.source "ViewScrollUtil.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$ScrollGeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerViewScrollGeter"
.end annotation


# instance fields
.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const-string p1, "RecyclerViewScrollGeter"

    const-string v0, "LayoutManager is null or Not is LinearLayoutManager"

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getScrollX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 73
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    .line 79
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v4, :cond_1

    .line 80
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 81
    div-int/2addr v0, v3

    :cond_1
    neg-int v1, v1

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method
