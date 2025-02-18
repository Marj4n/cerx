.class public Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ResolutionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;,
        Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;",
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

.field private onClickItem:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->selected(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;)Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->onClickItem:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;

    return-object p0
.end method

.method private selected(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->position:I

    .line 40
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->onBindViewHolder(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->position:I

    if-ne v1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->bind(Ljava/lang/String;Z)V

    .line 53
    iget-object p2, p1, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/generalplus/GoPlusDrone/R$layout;->item_resolution:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;-><init>(Landroid/view/View;Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;)V

    return-object p2
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

    .line 32
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnClickItem(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->onClickItem:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;

    return-void
.end method
