.class Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 79
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_0

    .line 80
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getPaddingLeft()I

    move-result p1

    neg-int p1, p1

    .line 81
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getPaddingLeft()I

    move-result p1

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    .line 86
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getPaddingLeft()I

    move-result p3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p3, v0

    .line 87
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 65
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3, p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$302(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;I)I

    .line 66
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 67
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    .line 72
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    float-to-double p1, p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4089000000000000L    # 800.0

    cmpl-double v3, p1, v1

    if-lez v3, :cond_0

    :goto_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    const-wide/high16 v1, -0x3f77000000000000L    # -800.0

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    if-gt p1, p2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_3

    .line 112
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 113
    :goto_2
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 114
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 60
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
