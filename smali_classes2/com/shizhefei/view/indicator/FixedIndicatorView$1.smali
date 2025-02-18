.class Lcom/shizhefei/view/indicator/FixedIndicatorView$1;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 178
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$000(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$000(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$100(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, v1, :cond_1

    .line 185
    iget-object v4, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v4}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v5, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$400(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->removeAllViews()V

    .line 188
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-ge v3, v1, :cond_5

    .line 190
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-ge v3, v0, :cond_2

    .line 193
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 194
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 197
    :cond_2
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 199
    :goto_2
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$500(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 200
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$500(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v7

    iget-object v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$600(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v8

    if-ne v3, v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7, v6, v3, v8}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 202
    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$700(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$900(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0, v4}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$1002(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)I

    .line 211
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$600(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(IZ)V

    .line 212
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;->this$0:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->access$1100(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    return-void
.end method
