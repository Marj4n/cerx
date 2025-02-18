.class Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;
.super Ljava/lang/Object;
.source "CustomRecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 196
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$000(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$000(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-virtual {v1, v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-static {v2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;->this$0:Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/serenegiant/widget/CustomRecycleViewListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;ILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 209
    invoke-static {}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
