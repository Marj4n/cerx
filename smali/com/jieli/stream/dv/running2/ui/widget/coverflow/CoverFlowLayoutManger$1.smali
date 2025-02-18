.class Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;
.super Ljava/lang/Object;
.source "CoverFlowLayoutManger.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->startScroll(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;I)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->access$002(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;I)I

    .line 462
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)Landroidx/recyclerview/widget/RecyclerView$State;

    move-result-object v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;->val$direction:I

    invoke-static {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method
