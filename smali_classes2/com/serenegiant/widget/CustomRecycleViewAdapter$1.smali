.class Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "CustomRecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/CustomRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$000(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$100(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;-><init>(Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    sget v0, Lcom/serenegiant/common/R$id;->position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/serenegiant/widget/CustomRecycleViewListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 179
    invoke-static {}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$000(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-virtual {v1, v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/serenegiant/widget/CustomRecycleViewListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 188
    invoke-static {}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
