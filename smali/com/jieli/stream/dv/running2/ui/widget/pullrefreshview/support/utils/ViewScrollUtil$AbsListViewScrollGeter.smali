.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;
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
    name = "AbsListViewScrollGeter"
.end annotation


# instance fields
.field absListView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;->absListView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public getScrollX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;->absListView:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;->absListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr v2, v0

    return v2
.end method
