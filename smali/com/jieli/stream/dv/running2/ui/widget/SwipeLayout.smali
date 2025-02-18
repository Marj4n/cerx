.class public Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;
.super Landroid/widget/LinearLayout;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;
    }
.end annotation


# instance fields
.field private actionView:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private dragDistance:I

.field private draggedX:I

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$DragHelperCallback;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout$1;)V

    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->actionView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->draggedX:I

    return p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->draggedX:I

    return p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->dragDistance:I

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 132
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->contentView:Landroid/view/View;

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->actionView:Landroid/view/View;

    const/16 v1, 0x8

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected onMeasure(II)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 53
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->actionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->dragDistance:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/SwipeLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
