.class Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "RecyclerIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->smoothScrollToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

.field final synthetic val$offeset:I


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Landroid/content/Context;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    iput p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;->val$offeset:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$000(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 151
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$1;->val$offeset:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    return-object p1
.end method
