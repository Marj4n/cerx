.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;
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
    name = "AbsListViewCanPull"
.end annotation


# instance fields
.field absListView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public isGetBottom()Z
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 62
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isGetTop()Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$AbsListViewCanPull;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    return v2

    :cond_1
    return v1
.end method
