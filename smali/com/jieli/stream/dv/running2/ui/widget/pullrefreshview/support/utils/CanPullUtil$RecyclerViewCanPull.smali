.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;
.super Ljava/lang/Object;
.source "CanPullUtil.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Pullable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerViewCanPull"
.end annotation


# instance fields
.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private initLayoutManager()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public isGetBottom()Z
    .locals 3

    .line 128
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->initLayoutManager()V

    .line 129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isGetTop()Z
    .locals 4

    .line 114
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->initLayoutManager()V

    .line 115
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$RecyclerViewCanPull;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    return v2

    :cond_1
    return v1
.end method
