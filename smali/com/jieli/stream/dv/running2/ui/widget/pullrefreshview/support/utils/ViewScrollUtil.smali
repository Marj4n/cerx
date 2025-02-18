.class public Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil;
.super Ljava/lang/Object;
.source "ViewScrollUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$ScrollGeter;,
        Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;,
        Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollGeter(Landroid/view/View;)Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$ScrollGeter;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 16
    :cond_0
    instance-of v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$ScrollGeter;

    if-eqz v1, :cond_1

    .line 17
    check-cast p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$ScrollGeter;

    return-object p0

    .line 18
    :cond_1
    instance-of v1, p0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 19
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;

    check-cast p0, Landroid/widget/AbsListView;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$AbsListViewScrollGeter;-><init>(Landroid/widget/AbsListView;)V

    return-object v0

    .line 20
    :cond_2
    instance-of v1, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 21
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/ViewScrollUtil$RecyclerViewScrollGeter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    return-object v0
.end method
