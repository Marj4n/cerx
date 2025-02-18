.class public Lcom/gizthon/camera/adapter/ResolutionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ResolutionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;,
        Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onClickItem:Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->dataList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/gizthon/camera/adapter/ResolutionListAdapter;)Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->onClickItem:Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->onBindViewHolder(Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->position:I

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;->bind(Ljava/lang/String;Z)V

    .line 52
    iget-object v0, p1, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;-><init>(Lcom/gizthon/camera/adapter/ResolutionListAdapter;Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;-><init>(Landroid/view/View;Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;)V

    return-object p2
.end method

.method public selected(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->position:I

    .line 30
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnClickItem(Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->onClickItem:Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;

    return-void
.end method
