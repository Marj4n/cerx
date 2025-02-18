.class Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/RecyclerIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 344
    new-instance p1, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 291
    iput-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 309
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->adapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v1, p2, v0, p1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 315
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 301
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    new-instance p1, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$1;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 320
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 325
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 326
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 328
    iget-object v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$100(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$200(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$100(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$200(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, p1, v0, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$200(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    :goto_0
    return-void
.end method
