.class Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;
.super Ljava/lang/Object;
.source "RecycleViewWithEmptyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

.field final synthetic val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    iput-object p2, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-static {v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->access$000(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
