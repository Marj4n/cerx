.class Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TimeLineAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

.field private subGridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

.field private tvDate:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;Landroid/view/View;)V
    .locals 2

    .line 127
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_time_line_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_time_line_grid_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->subGridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    .line 130
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->subGridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    invoke-direct {v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;-><init>(Landroid/content/Context;Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    .line 131
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->subGridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->subGridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    return-object p0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 139
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p1, :cond_0

    .line 142
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;

    move-result-object p2

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    invoke-virtual {p4}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getParentPost()I

    move-result p4

    invoke-interface {p2, p4, p3, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;->onSubItemClick(IILcom/jieli/stream/dv/running2/bean/FileInfo;)V

    :cond_0
    return-void
.end method
